using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services.Database;
using eCommerce.Services.Responses;
using MapsterMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public class UserActivityService : BaseCRUDService<UserActivityResponse, UserActivitySearchObject,Database.UserActivity,UserActivityUpsertRequest , UserActivityUpsertRequest>, IUserActivityService
    {
        public UserActivityService(eCommerceDbContext context, IMapper mapper) : base(context, mapper)
        {
        }
    }
}
