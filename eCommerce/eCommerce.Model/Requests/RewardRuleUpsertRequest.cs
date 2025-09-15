using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model.Requests
{
    public class RewardRuleUpsertRequest
    {
        public int? ActivityId { get; set; }
        public string? RewardTitle { get; set; }
        public int? MaxDaysToComplete { get; set; }
        public int? NumberOfPoints { get; set; }
    }
}
