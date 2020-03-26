using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Patients
    {
        [Key]
        public int PatientId { get; set; }
        public string PatientName { get; set; }
        public string Gender { get; set; }
        public string location { get; set; }

    }
}
