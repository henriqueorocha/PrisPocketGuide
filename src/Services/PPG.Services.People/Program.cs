using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;

namespace PPG.Services.People
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                })
                .ConfigureAppConfiguration((context, config) =>
                {
                    var builtConfig = config.Build();

                    config.AddAzureKeyVault(
                        builtConfig["AzureKeyVault:DNS"],
                        builtConfig["AzureKeyVault:ClientId"],
                        builtConfig["AzureKeyVault:ClientSecret"]);
                })
;
    }
}
