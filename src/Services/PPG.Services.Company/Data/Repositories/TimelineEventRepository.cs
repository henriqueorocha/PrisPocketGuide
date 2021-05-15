using PPG.Core.Data;
using PPG.Services.Company.Data;
using PPG.Services.Company.Domain;

namespace PPG.Services.People.Data.Repositories
{
    public class TimelineEventRepository : BaseRepository<TimelineEvent>, ITimelineEventRepository
    {
        public TimelineEventRepository(DataContext context) : base(context) {}
    }
}