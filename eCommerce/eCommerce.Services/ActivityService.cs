using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services.Database;
using MapsterMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public class ActivityService : BaseCRUDService<ActivityResponse, ActivitySearchObject, Database.Activity, ActivityUpsertRequest, ActivityUpsertRequest>, IActivityService
    {
        public ActivityService(eCommerceDbContext context, IMapper mapper) : base(context, mapper)
        {
        }
    }
}
