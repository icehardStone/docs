using System;
using System.Threading;

namespace ThreadStart
{
    class Program
    {
        //采用时间片轮转的方式
        //当我们构造一个方法时候，ParameterizedThreadStart的实例会委托传给构造函数
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Thread newThread = new Thread(PrintNumber);
            newThread.Start();
            PrintNumber();
            Thread.Sleep(TimeSpan.FromSeconds(10));
        }
        public static void PrintNumber()
        {
          for(var i = 0;i < 100;i++)
          {
            Console.Write(i+"*");
          }
        }
    }
}
