using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PPG.Services.People.Models;

namespace PPG.Services.People.Controllers
{
    [ApiController]
    [Route("people")]
    public class PeopleController : Controller
    {
        private readonly IPersonRepository _personRepository;

        public PeopleController(IPersonRepository personRepository)
        {
            _personRepository = personRepository;
        }

        [HttpGet]
        public async Task<List<Person>> GetAll()
        {
            return await _personRepository.GetAll();
        }

        [HttpGet("{id:guid}")]
        public async Task<ActionResult<Person>> PersonDetails(Guid id)
        {
            var person = await _personRepository.GetById(id);

            if (person is null) return NotFound();

            return person;
        }

        [HttpPost]
        public async Task<ActionResult<Person>> Add([FromBody] Person person)
        {
            _personRepository.Add(person);

            await _personRepository.UnitOfWork.Commit();

            return person;
        }

        [HttpDelete("{id:guid}")]
        public async Task<ActionResult> Delete(Guid id)
        {
            var person = await _personRepository.GetById(id);

            if (person is null) return NotFound();

            _personRepository.Delete(person);
            await _personRepository.UnitOfWork.Commit();

            return Ok();
        }
    }
}