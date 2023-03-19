namespace EF009.IncludeEntities.Entities
{
    public class AuditEntry
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Action { get; set; }
    }
}
