using System;
using System.Threading;

namespace ThreadAutoResetEvent
{
  //AutoResetEvent类从一个线程向另一个线程发送通知
    class Program
    {
        private static  AutoResetEvent _workEvent = new AutoResetEvent(false);
        private static  AutoResetEvent _MainEvent = new AutoResetEvent(false);

        static void Process(int seconds)
        {
          Console.WriteLine("Starting a long running work.....");
          Thread.Sleep(TimeSpan.FromSeconds(seconds));
          Console.WriteLine("Work is done");
          _workEvent.Set();
          Console.WriteLine("Waiting for a main thread to complete its works");

          _MainEvent.Set();
          Console.WriteLine("starting seconds operation");
          Thread.Sleep(TimeSpan.FromSeconds(seconds));
          Console.WriteLine("Work is done!");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var t = new Thread(() => Process(10));
            t.Start();

            Console.WriteLine("Waiting for another thread to complete work!");
            _workEvent.WaitOne();
            Console.WriteLine("First operation is completed!");
            Console.WriteLine("Performing an operation on a main thread");
            Thread.Sleep(TimeSpan.FromSeconds(5));
            _MainEvent.Set();
            Console.WriteLine("Now running the second operation on a second thread");
            _workEvent.WaitOne();
            Console.WriteLine("Second operation is completed!");
        }
    }
}
