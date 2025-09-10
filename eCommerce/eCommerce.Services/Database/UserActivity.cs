using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services.Database
{
    public enum Status{
        Assigned,
        InProgress,
        Completed,
        Cancelled

    }
    public class UserActivity
    {
        public int Id { get; set; }
        public int? UserId { get; set;}
        public User? User { get; set; }
        public int? ActivityId { get; set; }
        public Activity? Activity { get; set; }
        public DateTime? DateAssigned { get; set; }
        public string? Note { get; set;}
        public DateTime? CompletedAt { get; set; }
        public string? RewardTitle { get; set; }
        public DateTime? RewardedAt { get; set; }
        public Status? Status { get; set; }
    }
}
