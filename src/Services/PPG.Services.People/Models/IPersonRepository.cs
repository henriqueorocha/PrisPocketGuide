using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using PPG.Core.Data;

namespace PPG.Services.People.Models
{
    public interface IPersonRepository : IRepository<Person>
    {
        Task<List<Person>> GetAll();
        Task<Person> GetById(Guid id);
        void Add(Person person);
        void Delete(Person person);
    }
}