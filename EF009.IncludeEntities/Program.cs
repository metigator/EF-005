using EF009.IncludeEntities.Data;
using EF009.IncludeEntities.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace EF009.IncludeEntities
{
    class Program
    {
        public static void Main()
        {
            var context = new AppDbContext();

            //var ItemsInOrder1 = context
            //    .OrderDetails
            //    .Where(x => x.OrderId == 1); // compile time error


            var order1Details = context
                 .Orders
                 .Include(x => x.OrderDetails)
                 .FirstOrDefault(x => x.Id == 1)
                .OrderDetails;

            Console.WriteLine($"Items Count In Order 1 = {order1Details.Count()}");

            var auditEntry = new AuditEntry { UserName = "issam", Action = "Read order count" };

            context.Set<AuditEntry>().Add(auditEntry);

            // context.SaveChanges(); // Error Invalid object

            Console.ReadKey();
        }
    }
}