using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital.Models
{
    class Context : DbContext
    {
        public Context() { }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shivangi\Documents\HospitalDb.mdf;Integrated Security=True;Connect Timeout=30");
            base.OnConfiguring(optionsBuilder);
        }
        public DbSet<Hospitals> Hospitals { get; set; }
        public DbSet<Departments> Departments { get; set; }
        public DbSet<Assistants> Assistants { get; set; }
        public DbSet<Doctors> Doctors { get; set; }
        public DbSet<Patients> Patients { get; set; }
        public DbSet<Appoinment> Appoinments { get; set; }
        public DbSet<Drugs> Drugs { get; set; }
        public DbSet<Treatments> Treatments { get; set; }
    }
}
