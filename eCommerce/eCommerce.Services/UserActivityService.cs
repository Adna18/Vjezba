using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services.Database;
using eCommerce.Services.Responses;
using MapsterMapper;
using Microsoft.EntityFrameworkCore;
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

        protected override IQueryable<Database.UserActivity> ApplyFilter(IQueryable<Database.UserActivity> query, UserActivitySearchObject search)
        {
            query = query.Include(x => x.Activity).Include(x=>x.User);

            if (!string.IsNullOrEmpty(search.Status))
            {
                if(Enum.TryParse<Status>(search.Status,true,out var status))
                {
                    query = query.Where(p => p.Status == status);

                }
              
            }

           

            return base.ApplyFilter(query,search);
        }


    }
}
