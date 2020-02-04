// -------------------------------------------------------------------------------------------------------------------
// Title       : 
// Author      : icehardStone
// DateTme     : 2020 01 21  18:03:04
// Description : 
// Version     : 1.0
// Copyright (C) 2020 Independent Wokrer
// --------------------------------------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;
using System.Text.Json;

namespace JsonSerialization.Model
{
    public class Perosn
    {
        //[JsonIgnore]
        [JsonPropertyName("患者名称")]
        public string Name{set;get;}
        public string Id{set;get;}
        public int Age{set;get;}
        public DateTime BirthDay{set;get;}
        public List<string> Card{set;get;}
    }
}
