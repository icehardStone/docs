# nodejs 中使用import&export语句

使用步骤:

* 文件命名为xxxx.mjs
* node xxxx.mjs --experimental-modules 选项

## 客户端存储

客户端存储允许在客户端数据（比如客户的机器上），而且可以在需要的时候重新获取需要的数据，这具有明显的用途：

* 个性化网站偏好（颜色主体，字体等）
* 保存之前的站点行为（比如从先前的session中获取购物车中的内容，记住用户是否之前已经登录过）
* 更少的下载
* 保存web已经生产的文档可以在离线

## 闭包

一个闭包，就是一个函数与其被创建时所带有的作用域对象的组合。闭包允许你保存状态--所以，它可以用来替代对象。

## 如何正确判断相等性

* 严格相等
* 宽松相等

简而言之，在比较两件事情的时候，双等号会执行类型转换，三等号将进行相同的比较，而不惊醒类型转换（如果类型不同，只是总会返回false）

