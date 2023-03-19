using EF009.TableValuedFunction.Data;
using EF009.TableValuedFunction.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace EF009.TableValuedFunction
{
    class Program
    {
        public static void Main()
        {

            var order1BillDetails = new AppDbContext().Set<OrderBill>()
                .FromSqlInterpolated($"SELECT * FROM GetOrderBill({1})")
                .ToList();
            foreach (var item in order1BillDetails)
            {
                Console.WriteLine(item);
            }
            Console.ReadKey();
        }
    }
}