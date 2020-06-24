REM windows 下生成数字证书的步骤

REM 安装MakeCert.exe 软件

REM 如果安装了Visual Studi,则 打开Visual Studio => Tools => Command Line =>  Developer Command  Prompt ,然后输入 “MakeCert --help”
REM Visual Studio => 工具 => 命令行 => 开发者命令提示  然后输入 MakeCert --help 查找帮助信息

REM 生成一个自签名的根证书（issuer,签发者）。

makecert -n "CN=Root" -r -sv RootIssuer.pvk RootIssuer.cer

REM 然后，再次输入这个口令用私钥(在RootIssuer.pvk文件中）来给公钥（在RootIssuer.cer文件中）签名（自签名）。

makecert -n "CN=Child" -iv RootIssuer.pvk -ic RootIssuer.cer -sv ChildSubject.pvk ChildSubject.cer


