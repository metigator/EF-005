using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace EF005.UpdateData
{
    public  class AppDbContext: DbContext
    {
         
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var configuration = new ConfigurationBuilder()
               .AddJsonFile("appsettings.json")
               .Build();

            var constr = configuration.GetSection("constr").Value;


            optionsBuilder.UseSqlServer(constr);
        }

        public DbSet<Wallet> Wallets { get; set; } = null!;
    }
}
