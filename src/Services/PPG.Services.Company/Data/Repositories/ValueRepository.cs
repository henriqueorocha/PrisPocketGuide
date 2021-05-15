using PPG.Core.Data;
using PPG.Services.Company.Data;
using PPG.Services.Company.Domain;

namespace PPG.Services.People.Data.Repositories
{
    public class ValueRepository : BaseRepository<Value>, IValueRepository
    {
        public ValueRepository(DataContext context) : base(context) {}
    }
}