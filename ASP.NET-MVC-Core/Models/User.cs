using System;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ASP.NET_MVC_Core.Models
{
    public partial class User
    {
        [Key]
        public Guid Id { get; set; }
        public string Plu { get; set; }
        public int? Ordercode { get; set; }
        public string Description { get; set; }
        public double? Cost { get; set; }
        public double? Sell { get; set; }
    }
}