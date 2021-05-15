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
    [Route("timeline-events")]
    public class TimelineEventsController : Controller
    {
        private readonly ITimelineEventRepository _timelineEventRepository;
        private readonly IMapper _mapper;

        public TimelineEventsController(ITimelineEventRepository timelineEventRepository, IMapper mapper)
        {
            _timelineEventRepository = timelineEventRepository;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<List<TimelineEventDto>> GetAll()
        {
            var timelineEvents = await _timelineEventRepository.GetAll();
            return _mapper.Map<List<TimelineEventDto>>(timelineEvents);
        }

        [HttpPost]
        public async Task<ActionResult<List<TimelineEvent>>> Add([FromBody] List<TimelineEventDto> timelineEventDtos)
        {
            var timelineEvents = _mapper.Map<List<TimelineEvent>>(timelineEventDtos);
            
            _timelineEventRepository.AddRange(timelineEvents);

            await _timelineEventRepository.UnitOfWork.Commit();

            return timelineEvents;
        }

        [HttpDelete("{id:guid}")]
        public async Task<ActionResult> Delete(Guid id)
        {
            var timelineevent = await _timelineEventRepository.GetById(id);

            if (timelineevent is null) return NotFound();

            _timelineEventRepository.Delete(timelineevent);
            await _timelineEventRepository.UnitOfWork.Commit();

            return Ok();
        }
    }
}