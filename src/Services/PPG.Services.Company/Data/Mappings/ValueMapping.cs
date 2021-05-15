using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PPG.Services.Company.Domain;

namespace PPG.Services.Company.Data.Mappings
{
    public class ValueMapping : IEntityTypeConfiguration<Value>
    {
        public void Configure(EntityTypeBuilder<Value> builder)
        {
            builder.HasKey(c => c.Id);

            builder.ToTable("Values");

            builder.Property(c => c.Name)
                .IsRequired()
                .HasColumnType("varchar(100)");

            builder.Property(c => c.Description)
                .IsRequired()
                .HasColumnType("varchar(max)");
        }
    }
}