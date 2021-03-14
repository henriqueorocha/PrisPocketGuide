using AutoMapper;
using PPG.Services.People.Models;

namespace PPG.Services.People.AutoMapper
{
    public class DomainToDtoMappingProfile : Profile 
    {
        public DomainToDtoMappingProfile() 
        {
            CreateMap<Person, PersonDto>()
                .ForMember(dest => dest.ImageUrl, 
                            opt => opt.MapFrom<PersonDtoImageUrlResolver>());
        }
    }

    public class PersonDtoImageUrlResolver : IValueResolver<Person, PersonDto, string>
    {
        public string Resolve(Person source, PersonDto destination, string member, ResolutionContext context)
        {
            return source.ImageUrl(context.Items["ImagesBaseUrl"].ToString());
        }
    }
}