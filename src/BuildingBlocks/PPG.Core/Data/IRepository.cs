using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using PPG.Core.DomainObjects;

namespace PPG.Core.Data
{
    public interface IRepository<T> : IDisposable where T : IAggregateRoot
    {
        IUnitOfWork UnitOfWork { get; }
        Task<List<T>> GetAll();
        Task<T> GetById(Guid id);
        void Add(T entity);
        void AddRange(List<T> entities);
        void Delete(T entity);
    }
}