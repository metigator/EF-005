using System;
using System.Linq;

namespace EF005.DeleteData
{
    class Program
    {
        public static void Main()
        {
            using (var context = new AppDbContext())
            {
                // delete wallet with id = 18
                var wallet = context.Wallets.Single(x => x.Id == 18);
                
                context.Wallets.Remove(wallet);

                context.SaveChanges();

            }
            Console.ReadKey();
        } 
    }
}