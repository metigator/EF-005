using EF009.MappingView.Data;
using System;

namespace EF009.MappingView
{
    class Program
    {
        public static void Main()
        {
            var context = new AppDbContext();
            foreach (var item in context.OrderWithDetails)
            {
                Console.WriteLine(item);
            }
            Console.ReadKey();
        }
    }
}