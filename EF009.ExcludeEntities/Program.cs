using EF009.ExcludeEntities.Data;
using System;

namespace EF009.ExcludeEntities
{
    class Program
    {
        public static void Main()
        {
            var context = new AppDbContext();
            foreach (var product in context.Products)
            {
                Console.WriteLine($"{product.Name} \t\n...... loaded at " +
                    $"{product.Snapshot.LoadedAt.ToString("yyyy-MM-dd hh:mm")}" +
                    $"\nVersion: {product.Snapshot.Version}");
            }
            Console.ReadKey();
        }
    }
}