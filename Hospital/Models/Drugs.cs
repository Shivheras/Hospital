using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Drugs
    {
        [Key]
        public int DrugId { get; set; }
        public string DrugName { get; set; }
    }
}
