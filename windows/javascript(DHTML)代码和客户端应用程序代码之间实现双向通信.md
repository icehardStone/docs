# 主题 javascript(DHTML)代码和客户端应用程序代码之间实现双向通信

## 介绍与应用场景

WebBrowser控件添加现有的动态HTML（DHTML）Web应用程序代码到您的Windows窗体客户端应用程序，其中WebBrowser控件为Windows窗体客户端应用程序和Web应用程序中JavaScript代码提供了简便的通信方式：

### WebBrowser控件 属性设置

    * ObjectForScripting    属性设置为 this
    * AllowWebBrowserDrop   获取或设置一个值，该值指示 System.Windows.Forms.WebBrowser 控件是否导航到拖放到它上面的文档。
    * IsWebBrowserContextMenuEnabled    获取或设置一个值，该值指示 System.Windows.Forms.WebBrowser 控件是否启用了快捷菜单。

## webapp 代码

``` html
<html>
<head>
    <title>this is the name</title>
</head>
<div class="text-center">
    <h1 class="display-4">Welcome</h1>
    <p>Learn about <a onclick="wave('as')">building Web apps with ASP.NET Core</a>.</p>
</div>
<script>
    function wave (message) {
        alert("a");
        window.external.Test("admas");
    }
</script>
</html>
```

## winform 代码

``` c#
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    [ComVisible(true)]
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.webBrowser1.Url = new Uri("http://localhost:5000");
            this.webBrowser1.ObjectForScripting = this;
            this.webBrowser1.IsWebBrowserContextMenuEnabled = false;
            this.webBrowser1.AllowWebBrowserDrop = false;
        }
        public void Test(string message)
        {
            Console.WriteLine(message);
        }

    }
}
```

此时C#中代码会接收到 JavaScript 发送的消息

## 附录链接

winForm 应用程序链接 [地址](https://www.cnblogs.com/liuzhendong/archive/2012/03/21/2409159.html)  
android 应用程序链接 [地址](https://www.jianshu.com/p/6aad0dd91b46)
