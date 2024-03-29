using System;
using System.Collections.Generic;
using PPG.Core.DomainObjects;

namespace PPG.Services.People.Models
{
    public class Person : Entity, IAggregateRoot
    {
        public string Name { get; set; }
        public string Area { get; set; }
        public DateTime StartedAt { get; set; }
        public string MainCircle { get; set; }
        public List<string> CharacteristicsAtWork { get; set; }
        public List<string> FunFacts { get; set; }

        public string ImageUrl(string imagesBaseUrl)
        {
            var result = string.Concat(imagesBaseUrl, Id, ".jpg");
            return result;
        }
    }
}