using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PPG.Core.DomainObjects;

namespace PPG.Core.Data
{
    public abstract class BaseRepository<T> : IRepository<T> where T : Entity, IAggregateRoot
    {
        private readonly DbContext _context;

        public IUnitOfWork UnitOfWork => (IUnitOfWork)_context;

        public BaseRepository(DbContext context)
        {
            _context = context;
        }

        public void Add(T entity)
        {
            _context.Set<T>().Add(entity);
        }

        public void AddRange(List<T> entities)
        {
            _context.Set<T>().AddRange(entities);
        }

        public void Delete(T entity)
        {
            _context.Set<T>().Remove(entity);
        }

        public async Task<List<T>> GetAll()
        {
            return await _context.Set<T>().AsNoTracking().ToListAsync();
        }

        public async Task<T> GetById(Guid id)
        {
            return await _context.Set<T>().FindAsync(id);
        }

        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}