using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PPG.Core.Data;
using PPG.Services.People.Models;

namespace PPG.Services.People.Data
{
    public class DataContext : DbContext, IUnitOfWork
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options) { }

        public DbSet<Person> People { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(DataContext).Assembly);
        }

        public async Task<bool> Commit()
        {
            return await base.SaveChangesAsync() > 0;
        }
    }
}