// -------------------------------------------------------------------------------------------------------------------
// Title       : 
// Author      : icehardStone
// DateTme     : 2020 01 21  23:34:29
// Description : 
// Version     : 1.0
// Copyright (C) 2020 Independent Wokrer
// --------------------------------------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Collections;


namespace Formate.Model
{
    [Serializable]
    public class FormaterPerson
    {
        public string Name{set;get;}
        public string ID{set;get;}
        public int Age{set;get;}
        public List<string> Card{set;get;}
    }
}