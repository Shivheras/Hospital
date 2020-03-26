using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Treatments
    {
        [Key]
        public int TreatmentId { get; set; }
        public int PatientId { get; set; }
        public string DrugName { get; set; }
        public int DrugTime { get; set; }
        public string Diseases { get; set; }
        public int DoctorId { get; set; }
    }
}
