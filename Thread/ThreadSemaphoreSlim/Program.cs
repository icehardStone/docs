using System;
using System.Threading;

namespace ThreadSemaphoreSlim
{
  //SemaphoreSlim 类限制了访问同一个资源的线程数量
    class Program
    {
      //限制访问同一个资源的线程数量为4
      static SemaphoreSlim _semaphore = new SemaphoreSlim(4);
      static void AccessDataBase(string name, int seconds)
      {
        Console.WriteLine("{0} waits to access a database", name);
        _semaphore.Wait();
        Console.WriteLine("{0} was granted an access to a database", name);
        Thread.Sleep(TimeSpan.FromSeconds(seconds));
        Console.WriteLine("{0} is completed",name);
        _semaphore.Release();
      }
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            for(int i = 1; i < 40;i++)
            {
              string ThreadingName = "Thread"+i;
              int secondTotal = 2+2*i;
              var t = new Thread(() => AccessDataBase(ThreadingName,secondTotal));
              t.Start();
            }
        }
    }
}
