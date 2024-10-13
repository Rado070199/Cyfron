using Microsoft.EntityFrameworkCore;

namespace Cyfron.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        // Dodaj tutaj DbSet dla każdej tabeli, np.:
        public DbSet<User> Users { get; set; }
    }
}
