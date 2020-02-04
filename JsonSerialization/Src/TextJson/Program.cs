// -------------------------------------------------------------------------------------------------------------------
// Title       : 
// Author      : icehardStone
// DateTme     : 2020 01 21  16:58:43
// Description : 
// Version     : 1.0
// Copyright (C) 2020 Independent Wokrer
// --------------------------------------------------------------------------------------------------------------------

using System;
using System.Text.Json;
using JsonSerialization.Model;
using System.Collections.Generic;
using System.Text.Json.Serialization;
using System.Text.Encodings.Web;
using JsonSerialization.Policy;
using JsonSerialization.JsonConvert;
using System.Text.Unicode;

namespace TextJson
{
    class Program
    {
        static void Main(string[] args)
        {
            Test();   
        }
        public static void Test()
        {
            Perosn p = new Perosn();
            p.Age = 10;
            p.Name = "胡光华";
            p.Id = Guid.NewGuid().ToString();
            p.BirthDay = DateTime.Now;
            p.Card = new List<string>();
            p.Card.Add("10023");
            p.Card.Add("1089");

            JsonSerializerOptions options = new JsonSerializerOptions()
            {
                Encoder = JavaScriptEncoder.Create(UnicodeRanges.All),
                PropertyNamingPolicy = new UpperProperityNamePolicy(),
                WriteIndented = true
            };

            options.Converters.Add(new JsonDateTimeConvert());
            string temp = JsonSerializer.Serialize(p,p.GetType(),options);
            Console.WriteLine(temp);
        }
    }
}
