using System;
using System.IO;
using Formate.Model;
using System.Collections.Generic;
using System.Runtime.Serialization;
using  System.Runtime.Serialization.Formatters.Binary;

namespace Formate
{
    class Program
    {
        static void Main(string[] args)
        {
            Test();
        }
        public static void Test()
        {
            FormaterPerson p = new FormaterPerson();
            p.Age = 10;
            p.Name = "胡光华";
            p.ID = Guid.NewGuid().ToString();
            p.Card = new List<string>();
            p.Card.Add("da");
            p.Card.Add("poers");

            IFormatter formatter = new BinaryFormatter();
            using(MemoryStream stream = new MemoryStream())
            {
                formatter.Serialize(stream,p);
                stream.Seek(0,SeekOrigin.Begin);
                using(StreamReader reader = new StreamReader(stream))
                {
                    Console.WriteLine(reader.ReadToEnd());
                }
            }
        }
    }
}
