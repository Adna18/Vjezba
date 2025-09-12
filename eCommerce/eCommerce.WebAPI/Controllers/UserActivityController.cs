using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services;
using eCommerce.Services.Responses;

namespace eCommerce.WebAPI.Controllers
{
    public class UserActivityController : BaseCRUDController<UserActivityResponse, UserActivitySearchObject, UserActivityUpsertRequest, UserActivityUpsertRequest>
    {
        public UserActivityController(IUserActivityService service) : base(service)
        {
        }
    }
}