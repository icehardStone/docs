# dotnet-counters

 dotnet-counters 是一个性能监视工具，用于临时运行状况监视和初级性能调查。他可以通过观察通过EventCounter  API 发布的性能计数器值。例如，可以快速监视CPU使用情况或者.NET Core 应用程序中引发的异常率，以了解在使用PerfView 或者 dotnet-trace 深入调查更严重的性能问题之前是否有任何可疑操作.

## 选项

* --version
    显示dotnet-counters 实用工具的版本
* -h | --help
    显示命令行帮助

## 命令

* dotnet counters collect
* dotnet counters list
* dotnet counters monitor
* dotnet counters ps

### dotnet counters collect

定期收集所选计数器的值，并将它们导出为制定的文件格式以进行后续处理

> dotnet-counters collect [-h | --help] [-p | --process-id] [--refreshInterval][counter_list][--format][-o | --output]

| 名称 | 解释 |
| :------- | :------- |
| -p | --process-id | 要监视的进程的iD|
| --refresh-interval <seconds> | 更新显示的计数器之间延迟的秒数 |
| counter_list <COUNTERS> | 计数器的空格分隔列表 |
| --format <csv|json> | 要导出的格式。 当前可用的格式: csv 和json |
| -o | --output <output> | 输出文件的名称 |

### dotnet-counters list

显示按提供程序分组的计数器名称和说明的列表

dotnet-counter list [-h | --help]

### dotnet-counters monitor

显示所选计数器的定期刷新值

> dotnet-counters monitor [-h | --help] [-p | --process-id][--refreshInterval][counter_list]

* -p | --process-id <PID> 要监视的进程的ID
* --refresh-interval <SECONDS> 更新显示的计数器之间延迟的秒数
* counter_list <COUNTERS> 计数器的空格分隔列表。计数器可以指定为provider_name[:counter_name]如果没有符合条件counter_name的情况下使用provider_name,则会显示所有的计数器。若要发现提供程序和计数器名称，请使用dotnet-counters list命令。
