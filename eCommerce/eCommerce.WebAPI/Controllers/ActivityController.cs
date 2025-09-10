using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services;

namespace eCommerce.WebAPI.Controllers
{
    public class ActivityController : BaseCRUDController<ActivityResponse, ActivitySearchObject, ActivityUpsertRequest, ActivityUpsertRequest>
    {
        public ActivityController(IActivityService service) : base(service)
        {
        }
    }
}