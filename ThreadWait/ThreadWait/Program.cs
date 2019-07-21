using System;
using System.Threading;

namespace ThreadWait
{
    class Program
    {
        //线程等待，如何让程序等待另一个线程中的计算完成，然后在代码中使用
        //该线程的计算结果，使用Threading.Sleep行不通，因为并不知道执行计算所需花费的具体时间
        static void Main(string[] args)
        {
            Console.WriteLine("MainThreading Start");
            Console.WriteLine("Hello World!");

            Thread t = new Thread(PrintNumberWithDelay);
            t.Start();
            t.Join();         //通知线程结束
                              //检测线程状态
            //线程的优先级 ThreadPriority.Highest
            // ThreadPriority.Lowest,
            //前台线程和后台线程
            //t.IsBackground 通过这个属性来设置是否是后台线程
            Console.WriteLine("MainThreading end");
        }

        public static void PrintNumberWithDelay()
        {
          Console.WriteLine("Threading Start");
          for(var i=0;i<100;i++)
          {
            Thread.Sleep(TimeSpan.FromSeconds(1));
            Console.WriteLine(i);
          }
          Thread.CurrentThread.ThreadState.ToString(); // 检测线程状态
        }
    }
}
