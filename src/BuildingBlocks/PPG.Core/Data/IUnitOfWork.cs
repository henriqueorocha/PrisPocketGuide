using System.Threading.Tasks;

namespace PPG.Core.Data
{
    public interface IUnitOfWork
    {
        Task<bool> Commit();
    }
}