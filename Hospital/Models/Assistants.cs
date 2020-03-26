using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Assistants
    {
        [Key]
        public int AssistentId { get; set; }
        public string AssistentName { get; set; }
        public int PatientId { get; set; }
        public int DepartmentId { get; set; }
    }
}
