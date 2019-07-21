using System;
using System.Threading;
using System.Collections.Generic;

namespace ThreadParamter
{
    class Program
    {
      //使用lambda表达式引用另一个C#对象的方式被称为闭包。
      //向线程传递参数
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Thread t = new Thread(PrintNumber);
            var a = new List<String>(){"a","b"};
            t.Start(a);
        }
        public static void PrintNumber(object number)
        {
          var temp = (List<string>)number;
          Console.WriteLine(temp.Count);
        }
    }
}
