using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PPG.Core.Data;
using PPG.People.Models;

namespace PPG.People.Data.Repositories
{
    public class PersonRepository : IPersonRepository
    {
        private readonly DataContext _context;

        public PersonRepository(DataContext context)
        {
            _context = context;
        }

        public IUnitOfWork UnitOfWork => _context;

        public void Add(Person person)
        {
            _context.People.Add(person);
        }

        public void Delete(Person person)
        {
            _context.People.Remove(person);
        }

        public void Dispose()
        {
            _context?.Dispose();
        }

        public async Task<List<Person>> GetAll()
        {
            return await _context.People.AsNoTracking().ToListAsync();
        }

        public async Task<Person> GetById(Guid id)
        {
            return await _context.People.FindAsync(id);
        }
    }
}