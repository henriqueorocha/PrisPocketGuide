using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using PPG.Services.People.Models;

namespace PPG.Services.People.Data.Mappings
{
    public class PersonMapping : IEntityTypeConfiguration<Person>
    {
        public void Configure(EntityTypeBuilder<Person> builder)
        {
            builder.HasKey(c => c.Id);

            builder.ToTable("People");

            builder.Property(c => c.Name)
                .IsRequired()
                .HasColumnType("varchar(250)");

            builder.Property(c => c.Area)
                .IsRequired()
                .HasColumnType("varchar(100)");

            builder.Property(c => c.MainCircle)
                .IsRequired()
                .HasColumnType("varchar(100)");

            var splitStringConverter = new ValueConverter<List<string>, string>(
                v => string.Join(";", v),
                v => v.Split(new[] { ';' }).ToList()
            );

            builder.Property(c => c.CharacteristicsAtWork)
                .HasConversion(splitStringConverter);

            builder.Property(c => c.FunFacts)
                .HasConversion(splitStringConverter);
        }
    }
}