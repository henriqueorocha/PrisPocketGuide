using PPG.Core.Data;
using PPG.Services.People.Models;

namespace PPG.Services.People.Data.Repositories
{
    public class PersonRepository : BaseRepository<Person>, IPersonRepository
    {
        public PersonRepository(DataContext context) : base(context) {}
    }
}