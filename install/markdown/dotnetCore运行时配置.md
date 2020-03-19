# .net core 运行时配置

[.Net Core]('')支持使用环境变量或者配置文件在运行时候配置.net core应用程序的行为。一下情况下推荐使用运行时配置:

* 不拥有或者控制程序的源代码，无法通过源代码进行程序的控制。
* 应用程序的多个实例在单个系统中运行。并且你想要在配置为每个实例的最佳性能。
  
配置运行时应用程序行为的机制:

* runtimeconfig.json 文件
* MSBuild属性
* 环境变量

## runtimeconfig,json

构建项目时，将在输出目录中生成\[appname\].runtimconfig.json文件。如果项目文件所在的文件夹中存在runtimeconfig.template文件，它包含的任何配置选项都将合并到\[appname\].runtimcofig.json文件中，如果自行构建应用，请将所有配置选项放在runtimeconfig.template.json文件中。如果只是运行应用。请将其直接插入\[appname\].runtimeconfig.template.json文件中。1

### 示例[appname].runtimeconfig.template.json

如果要将这些选项放在输出JSON文件中，请将他们放在runtimeOptions属性下面

``` json
{
    "runtimeOptions":{
        "tfm":"netcoreapp3.1",
        "framework":{
          "name":"Microsoft.NETCore.App",
          "Version":"3.1.0"
        },
        "configProperties":{
            "System.GC.Concurrent":false,
            "System.Threading.ThreadPool.MinThreads":4,
            "System.Threading.ThreadPool.MaxThreads":25
        }
    }
}
```