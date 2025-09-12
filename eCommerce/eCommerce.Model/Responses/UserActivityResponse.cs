using eCommerce.Model.Responses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services.Responses
{
    public class UserActivityResponse
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public UserResponse? User { get; set; }
        public int? ActivityId { get; set; }
        public ActivityResponse? Activity { get; set; }
        public DateTime? DateAssigned { get; set; }
        public string? Note { get; set; }
        public DateTime? CompletedAt { get; set; }
        public string? RewardTitle { get; set; }
        public DateTime? RewardedAt { get; set; }
        public string? Status { get; set; }
    }
}
