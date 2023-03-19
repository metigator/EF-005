namespace EF009.ExcludeEntities.Entities
{
    public class Product
    {
        private Product()
        {
            this.Snapshot = new();
        }
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal UnitPrice { get; set; }
        public string Description { get; set; }

        public Snapshot Snapshot { get; set; }
    }
}
