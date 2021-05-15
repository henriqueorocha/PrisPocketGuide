using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PPG.Services.Company.Domain;

namespace PPG.Services.Company.Data.Mappings
{
    public class TimelineEventMapping : IEntityTypeConfiguration<TimelineEvent>
    {
        public void Configure(EntityTypeBuilder<TimelineEvent> builder)
        {
            builder.HasKey(c => c.Id);

            builder.ToTable("TimelineEvents");

            builder.Property(c => c.OccurredAt)
                .IsRequired();

            builder.Property(c => c.Description)
                .IsRequired()
                .HasColumnType("varchar(max)");
        }
    }
}