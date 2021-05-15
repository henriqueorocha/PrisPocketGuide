using System;
using PPG.Core.DomainObjects;

namespace PPG.Services.Company.Domain
{
    public class Value : Entity, IAggregateRoot
    {
        public string Name { get; set; }
        public string Description { get; set; }
    }
}