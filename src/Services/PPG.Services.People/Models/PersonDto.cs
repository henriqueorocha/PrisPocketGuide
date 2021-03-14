using System;
using System.Collections.Generic;

namespace PPG.Services.People.Models
{
    public class PersonDto
    {
        public string Name { get; set; }
        public string Area { get; set; }
        public DateTime StartedAt { get; set; }
        public string MainCircle { get; set; }
        public string ImageUrl { get; set; }
        public List<string> CharacteristicsAtWork { get; set; }
        public List<string> FunFacts { get; set; }
    }
}