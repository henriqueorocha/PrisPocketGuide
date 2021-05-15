using AutoMapper;
using PPG.Services.Company.Domain;
using PPG.Services.Company.Dtos;

namespace PPG.Services.Company.AutoMapper
{
    public class DomainToDtoMappingProfile : Profile 
    {
        public DomainToDtoMappingProfile() 
        {
            CreateMap<Value, ValueDto>().ReverseMap();
            CreateMap<TimelineEvent, TimelineEventDto>().ReverseMap();
        }
    }
}