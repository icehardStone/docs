using System;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;

namespace sample.server2
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
            factory.HostName ="localhost";
            factory.Port = 5672;

            IConnection connection = factory.CreateConnection();

            IModel channel = connection.CreateModel();
            DeclareExchange(channel);
            DeclareQueue(channel);
            channel.QueueBind("queue1","exchange1","",null);

            
            var consumer = new EventingBasicConsumer(channel);
            consumer.Received += (ch, ea) =>
                {
                    var body = ea.Body;
                    string content = System.Text.Encoding.UTF8.GetString(body);
                    Console.WriteLine("content:{0}",content);
                    // ... process the message
                    channel.BasicAck(ea.DeliveryTag, false);
                };
            String consumerTag = channel.BasicConsume("queue1", false, consumer);

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
