using ASP.NET_MVC_Core.Models;
using ASP.NET_MVC_Core.Repository;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ASP.NET_MVC_Core.Controllers
{
    [ApiController]
    [Route("api/user")]
    public class ApiUserController : Controller
    {
        private readonly IUserRepository _userRepository;

        public ApiUserController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpPost]
        public ActionResult<User> Create(User model)
        {
            return _userRepository.Create(model);
        }

        [HttpDelete("{id}")]
        public ActionResult<Guid> Delete(Guid id)
        {
            return _userRepository.Delete(id);
        }

        [HttpGet]
        public ActionResult<List<User>> GetAll()
        {
            return _userRepository.GetQueryable().ToList();
        }

        [HttpPut("{id}")]
        public ActionResult<User> Update(Guid id, User model)
        {
            return _userRepository.Update(id, model);
        }
    }
}