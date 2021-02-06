using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PPG.Services.People.Data.Migrations
{
    public partial class Person : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "People",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(type: "varchar(250)", nullable: false),
                    Area = table.Column<string>(type: "varchar(100)", nullable: false),
                    StartedAt = table.Column<DateTime>(nullable: false),
                    MainCircle = table.Column<string>(type: "varchar(100)", nullable: false),
                    CharacteristicsAtWork = table.Column<string>(nullable: true),
                    FunFacts = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_People", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "People");
        }
    }
}
