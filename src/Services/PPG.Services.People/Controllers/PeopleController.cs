using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using PPG.Services.People.Configuration;
using PPG.Services.People.Models;

namespace PPG.Services.People.Controllers
{
    [ApiController]
    [Route("people")]
    public class PeopleController : Controller
    {
        private readonly IPersonRepository _personRepository;
        private readonly Settings _settings;
        private readonly IMapper _mapper;

        public PeopleController(IPersonRepository personRepository, IOptionsSnapshot<Settings> settings, IMapper mapper)
        {
            _personRepository = personRepository;
            _settings = settings.Value;
            _mapper = mapper;
        }

        [HttpGet("settings")]
        public Settings Settings()
        {
            return _settings;
        }

        [HttpGet]
        public async Task<List<PersonDto>> GetAll()
        {
            var people = await _personRepository.GetAll();
            return _mapper.Map<List<Person>, List<PersonDto>>(people, opt => opt.Items["ImagesBaseUrl"] = _settings.ImagesBaseUrl);
        }

        [HttpGet("{id:guid}")]
        public async Task<ActionResult<PersonDto>> PersonDetails(Guid id)
        {
            var person = await _personRepository.GetById(id);

            if (person is null) return NotFound();

            return _mapper.Map<Person, PersonDto>(person, opt => opt.Items["ImagesBaseUrl"] = _settings.ImagesBaseUrl);
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