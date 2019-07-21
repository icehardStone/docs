using System;
using System.Threading;

namespace ThreadLock
{
  public abstract class BaseCounter
  {
      public abstract void Increment(); //  加
      public abstract void Decrement(); //  减
  }
  public class LockCounter:BaseCounter
  {
    public int Count{set;get;}
    private readonly object lockObject = new object();
     public override void  Increment()
     {
      lock (lockObject)
      {
          Count++;
      }
     }
     public override void Decrement()
     {
       lock(lockObject){
         Count--;
       }
     }
  }
  public class NormalCounter:BaseCounter
  {
    public int Counter{set;get;}
      public override void Increment()
      {
        Counter++;
      }
      public override void Decrement()
      {
        Counter--;
      }
  }

    class Program
    {
      //线程安全的概念都包含什么
      //竞争条件是多线程环境中非常常见的导致错误的原因
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            var c = new NormalCounter();
            var t = new Thread(() => testCounter(c));
            var t1 = new Thread(() => testCounter(c));
            var t2 = new Thread(() => testCounter(c));
            t.Start();
            t1.Start();
            t2.Start();
            t.Join();
            t1.Join();
            t2.Join();

            Console.WriteLine(c.Counter);
        }
        static void testCounter(BaseCounter c)
        {
          for(var i = 0;i < 10000;i++)
          {
            c.Increment();
            c.Decrement();
          }
        }
    }
}
