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
    public class RewardRuleService : BaseCRUDService<RewardRuleResponse, BaseSearchObject, Database.RewardRule, RewardRuleUpsertRequest, RewardRuleUpsertRequest>, IRewardRuleService
    {
        public RewardRuleService(eCommerceDbContext context, IMapper mapper) : base(context, mapper)
        {
        }
    }
}
