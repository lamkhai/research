using ASP.NET_MVC_Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ASP.NET_MVC_Core.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly ResearchContext _context;
        private readonly ILogger<UserRepository> _logger;

        public UserRepository(ResearchContext context, ILogger<UserRepository> logger)
        {
            _context = context;
            _logger = logger;
        }

        public User Create(User model)
        {
            try
            {
                _context.Users.Add(model);
                _context.SaveChanges();
                _context.Entry(model).State = EntityState.Detached;
                return model;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                throw new Exception(ex.Message);
            }
        }

        public Guid Delete(Guid id)
        {
            try
            {
                var model = GetQueryable().FirstOrDefault(x => x.Id == id);
                if (model != null)
                {
                    _context.Users.Remove(model);
                    _context.SaveChanges();
                    _context.Entry(model).State = EntityState.Detached;
                    return model.Id;
                }
                return new Guid();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                throw new Exception(ex.Message);
            }
        }

        public IQueryable<User> GetQueryable()
        {
            try
            {
                return _context.Users.AsNoTracking();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                throw new Exception(ex.Message);
            }
        }

        public User Update(Guid id, User model)
        {
            try
            {
                model.Id = id;
                _context.Users.Update(model);
                _context.SaveChanges();
                _context.Entry(model).State = EntityState.Detached;
                return model;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                throw new Exception(ex.Message);
            }
        }
    }
}