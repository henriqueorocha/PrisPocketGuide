using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using PPG.Services.Company.Domain;
using PPG.Services.Company.Dtos;

namespace PPG.Services.People.Controllers
{
    [ApiController]
    [Route("values")]
    public class ValuesController : Controller
    {
        private readonly IValueRepository _valueRepository;
        private readonly IMapper _mapper;

        public ValuesController(IValueRepository valueRepository, IMapper mapper)
        {
            _valueRepository = valueRepository;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<List<ValueDto>> GetAll()
        {
            var values = await _valueRepository.GetAll();
            return _mapper.Map<List<ValueDto>>(values);
        }

        [HttpPost]
        public async Task<ActionResult<List<Value>>> Add([FromBody] List<ValueDto> valueDtos)
        {
            var values = _mapper.Map<List<Value>>(valueDtos);
            
            _valueRepository.AddRange(values);

            await _valueRepository.UnitOfWork.Commit();

            return values;
        }

        [HttpDelete("{id:guid}")]
        public async Task<ActionResult> Delete(Guid id)
        {
            var value = await _valueRepository.GetById(id);

            if (value is null) return NotFound();

            _valueRepository.Delete(value);
            await _valueRepository.UnitOfWork.Commit();

            return Ok();
        }
    }
}