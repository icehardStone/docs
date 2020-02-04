// -------------------------------------------------------------------------------------------------------------------
// Title       : 
// Author      : icehardStone
// DateTme     : 2020 01 21  17:02:40
// Description : 
// Version     : 1.0
// Copyright (C) 2020 Independent Wokrer
// -------------------------------------------------------------------------------------------------------------------- 

using System;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Globalization;
using System.Runtime;

namespace JsonSerialization.JsonConvert
{
    public class JsonDateTimeConvert : JsonConverter<DateTime>
    {
        public override DateTime Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            return DateTime.ParseExact(reader.GetString(), "yyyy-MM-dd hh:mm:dd",CultureInfo.InvariantCulture);
        }
        public override void Write(Utf8JsonWriter writer, DateTime value, JsonSerializerOptions options)
        {
            writer.WriteStringValue(value.ToString("yyyy-MM-dd hh:mm:dd",CultureInfo.InvariantCulture));
        }

    }
}