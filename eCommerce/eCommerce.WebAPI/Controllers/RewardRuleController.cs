using eCommerce.Model.Requests;
using eCommerce.Model.Responses;
using eCommerce.Model.SearchObjects;
using eCommerce.Services;

namespace eCommerce.WebAPI.Controllers
{
    public class RewardRuleController : BaseCRUDController<RewardRuleResponse, BaseSearchObject, RewardRuleUpsertRequest, RewardRuleUpsertRequest>
    {
        public RewardRuleController(IRewardRuleService service) : base(service)
        {
        }
    }
}