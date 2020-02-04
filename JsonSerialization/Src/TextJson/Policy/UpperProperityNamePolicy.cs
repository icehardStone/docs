using System.Text.Json;
using System.Text.Json.Serialization;

namespace JsonSerialization.Policy
{
    public class UpperProperityNamePolicy : JsonNamingPolicy
    {
        public override string ConvertName(string name)
        {
            return name.ToUpper();
        }
    }
}
