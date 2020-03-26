using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Appoinment
    {
        [Key]
        public int AppoinmentId { get; set; }
        public string Time { get; set; }
        public int PatientId { get; set; }
        public int DepartmentId { get; set; }
        public int DoctorId { get; set; }
    }
}
