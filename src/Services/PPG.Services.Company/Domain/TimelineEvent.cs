using System;
using PPG.Core.DomainObjects;

namespace PPG.Services.Company.Domain
{
    public class TimelineEvent : Entity, IAggregateRoot
    {
        public DateTime OccurredAt { get; set; }
        public string Description { get; set; }
    }
}