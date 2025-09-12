using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model.Requests
{
    public class UserActivityUpsertRequest
    {
       
        public int? UserId { get; set; }
      
        public int? ActivityId { get; set; }
        
        public DateTime? DateAssigned { get; set; }
        public string? Note { get; set; }
        public DateTime? CompletedAt { get; set; }
        public string? RewardTitle { get; set; }
        public DateTime? RewardedAt { get; set; }
        public string? Status { get; set; }
    }
}
