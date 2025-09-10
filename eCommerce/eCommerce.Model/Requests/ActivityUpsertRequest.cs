using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model.Requests
{
    public class ActivityUpsertRequest
    {
        public string? Name { get; set; }
        public string? Description { get; set; }
        public DateTime? DueDate { get; set; }
    }
}
