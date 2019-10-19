using System;
using System.Threading;

namespace ThreadBarrier
{
    class Program
    {
        public static Barrier _barrier = new Barrier(2,b => OverStartMethod("a",10));
        /**
        结束后调用的方法
         */
        public static void OverStartMethod(string person, int numer)
        {
          Console.WriteLine("作者{0}打印{1}张纸结束了",person,numer);
        }
        public static void PrintPaper(object person)
        {
          Console.WriteLine("作者{0}正在打印纸");
          _barrier.SignalAndWait();
        }
        static void Main(string[] args)
        {
            Thread a = new Thread(() => PrintPaper("a"));
            a.Start();

            Thread b = new Thread(() => PrintPaper("b"));
            b.Start();

            Console.WriteLine("所有人都结束了");
        }
    }
}
