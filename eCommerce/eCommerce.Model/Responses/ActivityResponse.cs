using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model.Responses
{
    public class ActivityResponse
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public DateTime? DueDate { get; set; }
    }
}
