using System;

namespace EF009.ExcludeEntities.Entities
{
    //[NotMapped]
    public class Snapshot
    {
        public DateTime LoadedAt => DateTime.UtcNow;
        public String Version =>
            Guid.NewGuid().ToString().Substring(0, 8); // 81604D1D
    }
}
