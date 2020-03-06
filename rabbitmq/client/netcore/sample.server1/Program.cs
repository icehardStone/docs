using System;
using RabbitMQ.Client;

namespace sample.server1
{
    class Program
    {
        static void Main(string[] args)
        {
            ConnectionFactory factory = new ConnectionFactory();

            // user:admas password: 123456

            factory.UserName = "admas";
            factory.Password = "123456";
            factory.VirtualHost = "/";
            factory.HostName ="192.168.0.106";
            factory.Port = 5672;

            IConnection connection = factory.CreateConnection();

            IModel channel = connection.CreateModel();
            DeclareExchange(channel);
            DeclareQueue(channel);

            channel.QueueBind("queue1","exchange1","",null);

            string content = "发点正经的！";

            byte[] message = System.Text.Encoding.UTF8.GetBytes(content);

            IBasicProperties props = channel.CreateBasicProperties();
            props.ContentType = "text/plain";
            props.DeliveryMode = 2;

            channel.BasicPublish("exchange1","",props,message);


            // if (channel.IsOpen)
            // {
            //     channel.Close();
            // }
            // connection.Close();
            Console.WriteLine("Hello World!");
        }
        public static void DeclareExchange(IModel channel)
        {
            channel.ExchangeDeclare("exchange1",ExchangeType.Direct,true,true);
        }
        public static void DeclareQueue(IModel channel)
        {
            channel.QueueDeclare("queue1",true,false,false,null);
        }
    }
}
