using ASP.NET_MVC_Core.Models;
using System;
using System.Linq;

namespace ASP.NET_MVC_Core.Repository
{
    public interface IUserRepository
    {
        public User Create(User model);
        public Guid Delete(Guid id);
        public IQueryable<User> GetQueryable();
        public User Update(Guid id, User model);
    }
}