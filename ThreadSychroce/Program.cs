using System;
using System.Threading;

namespace ThreadSychroce
{
    class Program
    {
      //无需共享对象，那么就无须进行线程同步，尽肯能的在多个线程间使用同一对象。
      //必须使用共享的状态，第二种方式是只使用原子操作，
      //Interlocked提供了Increment,Decrement和Add等基本数学操作。
      //使用Mutex类 Mutex 是一种原始的同步方式，其只对一个线程授予对共享资源的独占访问。


      /**
      定义了一个指定名称的互斥量，设置initialOwner标志位false
      如果互斥量已经创建，则允许程序获取该互斥量，如果没有获取到互斥量
      程序则简单的显示Running ，等待指导按下任何键，然后释放该互斥量并退出。


      要打开该程序的另一个版本。
      */
        private const string MutexName = "MutexName1";
        static void Main(string[] args)
        {
            using(Mutex m = new Mutex(false,MutexName))
            {
              /**
              尝试获取信号量，如果五秒之后未获取到，打印Second instance is running 信息，退出操作
               */
              if(!m.WaitOne(TimeSpan.FromSeconds(5),false))
              {
                /**
                其他实例正在运行的操作
                 */
                 Console.WriteLine("Second instance is runing!");
              }
              else
              {
                /**
                进入当前操作
                 */
                Console.WriteLine("Running");
                string temp =  Console.ReadLine();
                Console.WriteLine("当前操作:{0}",temp);
                /**
                释放信号量
                 */
                m.ReleaseMutex();
              }
            }
        }
    }
}
