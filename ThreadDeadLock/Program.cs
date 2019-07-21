using System;
using System.Threading;

namespace ThreadDeadLock
{
  //另一个常见的多线程错误，被称为死锁，使用Monitor类
  //Moniter 的TryEnter方法
  //处理异常
  static void BadFaultyThread()
  {
    Console.WriteLine("Starting a faulty thread");
    Thread.Sleep(TimeSpan.FromSeconds(2));
    throw new Exception("Boom");
  }
  static void FaultyThead()
  {
    try
    {
      Console.WriteLine("Starting a faulty threading");
      Thread.Sleep(TimeSpan.FromSeconds(2));
    }
    catch(Exception e)
    {
      Console.WriteLine("Exeception handle:{0}" ,e.Message);
    }
  }
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
