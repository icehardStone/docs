#!/bin/bash 

# dotnet-counters 是一个性能监视工具，用于临时运行状况监视和初级性能调查。他可以通过观察通过EventCounter  API 发布的性能计数器值。例如，可以快速监视CPU使用情况或者.NET Core 应用程序中引发的异常率，以
# 了解在使用PerfView 或者 dotnet-trace 深入调查更严重的性能问题之前是否有任何可疑操作。

dotnet tool install --global dotnet-counters