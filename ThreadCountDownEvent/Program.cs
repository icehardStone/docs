using System;
using System.Threading;

namespace ThreadCountDownEvent
{
    class Program
    {
        /**
        使用CountDownEvent信号类来等待直到一定数量的操作完成
         */
        private static CountdownEvent countdown = new CountdownEvent(3);
        public static void EatPaper(string person, int time)
        {
          Console.WriteLine("选手{0}吃饭需要{1}秒",person,time);
          Thread.Sleep(TimeSpan.FromSeconds(time));
          Console.WriteLine("选手{0}吃饭结束！",person);
          countdown.Signal();
        }
        static void Main(string[] args)
        {
          /**
          开始三个线程
           */
           Thread a = new Thread(() => EatPaper("a",5));
           Thread b = new Thread(() => EatPaper("b",10));
           Thread c = new Thread(() => EatPaper("c",20));

           a.Start();
           b.Start();
           c.Start();
          /**
          等待3个线程完成
           */
          countdown.Wait();
          Console.WriteLine("三个选手吃饭已经完毕，我要收碗了！");
        }
    }
}
