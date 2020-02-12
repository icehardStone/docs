using System;
using System.IO;
using System.Net;
using System.Net.Sockets;

namespace NetworkStreamTest
{
    public class NetworkStreamDemo
    {
        public NetworkStream stream{set;get;}
        public NetworkStreamDemo(){}
        public NetworkStreamDemo(Socket socket)
        {
            stream = new NetworkStream(socket,true);
        }

        public string GetContent()
        {
            if(stream.CanRead)
            {
                using(StreamReader reader = new StreamReader(stream))
                {
                    // reader.
                    return reader.ReadToEnd();
                }
            }
            else
            {
                return string.Empty;
            }
        }
    }
}
