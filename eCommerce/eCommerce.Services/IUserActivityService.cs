using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services.Responses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public interface IUserActivityService : ICRUDService<UserActivityResponse, UserActivitySearchObject, UserActivityUpsertRequest, UserActivityUpsertRequest>
    {
    }
}
