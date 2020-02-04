using System;
using System.Threading;

namespace ThreadPoolDemo
{
    class Program
    {
        /**
        线程池是受.NET 通用语言运行时管理（CLR）的
        适用于大量短暂的开销大的资源的情形。（执行时间短的操作）

        在线程中调用委托，异步方法，但是在现代编程中，更推荐使用任务并行库（Task Parallel Library）
         */
         /**
         使用线程池为操作系统节省了内存和线程数，但是为此付出了更长的时间
          */
        static void Main(string[] args)
        {
           /**
           闭包机制，从而无须传递lambda表达式的状态，闭包更灵活，允许我们向异步操作传递一个以上的对象，而且这些对象具有静态类型
            */ 

            /**
            工作 a 工作 10 秒钟
             */
            ThreadPool.QueueUserWorkItem(Worker,"a");
            Thread.Sleep(TimeSpan.FromSeconds(1));
            /**
            工作 b 工作 5 秒钟
             */
            ThreadPool.QueueUserWorkItem(Worker,"b");
            Thread.Sleep(TimeSpan.FromSeconds(1));
            /**
            工作 c 工作 50 秒钟
             */
            ThreadPool.QueueUserWorkItem(Worker,"c");
        }
        public static void Worker(Object person )
        {
          Console.WriteLine("工人{0}开始工作，工作小时",person);
          Console.WriteLine("线程ID：{0}",Thread.CurrentThread.ManagedThreadId);
          Thread.Sleep(TimeSpan.FromSeconds(2));
          Console.WriteLine("工人{0}工作结束",person);
        }
    }
}
