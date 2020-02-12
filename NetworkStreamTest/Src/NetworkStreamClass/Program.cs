using System;
using System.Net;
using System.Net.Sockets;
using NetworkStreamTest;

namespace NetworkStreamClass
{
    class Program
    {
        static void Main(string[] args)
        {
            HttpClient client = new HttpClient();
            NetworkStreamDemo demo = new NetworkStreamDemo();
            Console.WriteLine("Hello World!");
        }
    }
}
