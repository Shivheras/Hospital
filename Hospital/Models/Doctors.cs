using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Doctors
    {
        [Key]
        public int DoctorId { get; set; }
        public string doctorName { get; set; }
        public int DepartmentId { get; set; }
    }
}
