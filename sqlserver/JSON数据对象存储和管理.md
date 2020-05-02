# JSON数据对象存储和管理

## JSON 存储格式

* LOB 存储 json 文档可按照原样存储在nvarchar 列中，这是快熟数据加载和引入的最佳方式。
* 关系存储，使用OEPNJSON,JSON_VALUE或JSON_QUERY函数将JSON文档插入表中

### 经典表

在SQL中存储JSON文档最简单的方法就是创建一个只有两列的表，一列为文档ID,一列为文档内容。

``` sql
create table WebSite.logs (
    _id bigint primary key indentify,
    log nvarchar(max)
);
/* nvarchar(max) 数据类型可存储最大 2GB 大小的 JSON 文档。 但是，如果确定 JSON 文档不超过 8KB，出于性能原因，建议使用 NVARCHAR(4000) 而不是 NVARCHAR(max)。 */
```

### 索引

如果发现查询频繁按某一属性（例如 JSON 文档中的 severity 属性）搜索文档，则可在该属性上添加经典非聚集索引来加速查询。

``` sql
create table WebSite.Logs (
    _id bigint primary key identity,
    log nvarchar(max),

    severity AS JSON_VALUE(log, '$.severity'),
    index ix_severity (severity)
);
```

此索引的一个重要特征是，它可用于识别排序规则。 如果原始 NVARCHAR 列包含 COLLATION 属性（例如，区分大小写或日语），则该索引按照与 NVARCHAR 列关联的语言规则或区分大小写规则进行组织。 如果正在开发适用于全球市场的应用程序且在处理 JSON 文档时需要使用自定义语言规则，那么此排序规则感知功能

## 频繁更改的文档和内存优化表

如果希望在集合中进行大量更新、插入和删除操作，可将 JSON 文档存储在内存优化表中。 内存优化 JSON 集合始终将数据保留在内存中，因此不会产生任何存储 I/O 开销。 此外，内存优化 JSON 集合是完全无锁的，这意味着文档上的操作不会锁定其他任何操作。
将经典集合转换为内存优化集合只需执行一个操作，即在表定义后指定 with (memory_optimized=on) 选项，如下例所示。 完成操作后，即可获得内存优化版的 JSON 集合。
