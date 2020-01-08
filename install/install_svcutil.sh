# Title：	  安装dotnet-svcutil工具
# Author：	  icehardStone 
# Descrpiton：The Windows Communication Foundation (WCF) dotnet-svcutil tool is a .NET Core CLI tool that 
#			  retrieves metadata from a web service on a network location or from a WSDL file, and generates 
#			  a WCF class containing client proxy methods that access the web service operations.

dotnet tool install --global dotnet-svcutil --version 2.0.1

dotnet svcutil --help