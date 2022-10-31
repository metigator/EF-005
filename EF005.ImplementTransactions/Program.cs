using System;
using System.Linq;

namespace EF005.ImplementTransactions
{
    class Program
    {
        public static void Main()
        {  
            using (var context = new AppDbContext())
            {
                using (var transaction = context.Database.BeginTransaction())
                {
                    // transfer $500 from wallet id = 5 to wallet id = 6

                    var fromWallet = context.Wallets.Single(x => x.Id == 5);

                    var toWallet = context.Wallets.Single(x => x.Id == 6);

                    var amountToTransfer = 500m;

                    // Operation #1 withdraw 500 from wallet id = 5
                    fromWallet.Balance -= amountToTransfer;
                    context.SaveChanges();

                    // Operation #1 deposit 500 from wallet id = 6
                    toWallet.Balance += amountToTransfer;
                    context.SaveChanges();

                    transaction.Commit();   
                }
            }
            Console.ReadKey();
        }
    }
}