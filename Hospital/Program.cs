using Hospital.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hospital
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hospital Management");
            Console.WriteLine("Choose Your Catagories");
            Console.WriteLine("1. Hospitle");
            Console.WriteLine("2.Department");
            Console.WriteLine("3.Healthcare Assistent");
            Console.WriteLine("4.Doctor");
            Console.WriteLine("5.Patient");
            Console.WriteLine("6.Appointment");
            Console.WriteLine("7.Teatments");
            Console.WriteLine("8.Drugs");
            string caseSwitch = Console.ReadLine();
            switch (caseSwitch)
            {
                case "1":
                    Console.WriteLine("Hospitels");
                    Console.WriteLine("1.Add Hospitles");
                    Console.WriteLine("2.Remove Hospitles");
                    Console.WriteLine("3.Get Hospitles");
                    string caseString2 = Console.ReadLine();
                    switch (caseString2)
                    {
                        case "1":
                            addhospital();
                            break;
                        case "2":
                            removehospital();
                            break;
                        case "3":
                            getHospital();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    //Console.WriteLine("Case 1");
                    break;
                case "2":
                    Console.WriteLine("Departments");
                    Console.WriteLine("1.Add Department");
                    Console.WriteLine("2.Remove Department");
                    Console.WriteLine("3.Get Department");
                    string caseString3 = Console.ReadLine();
                    switch (caseString3)
                    {
                        case "1":
                            addepartment();
                            break;
                        case "2":
                            removedepartment();
                            break;
                        case "3":
                            getdepartment();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "3":
                    Console.WriteLine("Healthcare Assistent");
                    Console.WriteLine("1.Add Assistents");
                    Console.WriteLine("2.Remove Assistents");
                    Console.WriteLine("3.Get Assistents");
                    string caseString4 = Console.ReadLine();
                    switch (caseString4)
                    {
                        case "1":
                            addassistant();
                            break;
                        case "2":
                            removeassistant();
                            break;
                        case "3":
                            getassistant();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "4":

                    Console.WriteLine("Doctors");
                    Console.WriteLine("1.Add Doctors");
                    Console.WriteLine("2.Remove Doctors");
                    Console.WriteLine("3.Get Doctors");
                    string caseString5 = Console.ReadLine();
                    switch (caseString5)
                    {
                        case "1":
                            addoctor();
                            break;
                        case "2":
                            removedoctor();
                            break;
                        case "3":
                            getdoctor();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "5":
                    Console.WriteLine("Patients");
                    Console.WriteLine("1.Add Patient");
                    Console.WriteLine("2.Remove Patient");
                    Console.WriteLine("3.Get Patient");
                    string caseString6 = Console.ReadLine();
                    switch (caseString6)
                    {
                        case "1":
                            addpatient();
                            break;
                        case "2":
                            removepatient();
                            break;
                        case "3":
                            getpatient();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "6":
                    Console.WriteLine("Appointment");
                    Console.WriteLine("1.Add Appointment");
                    Console.WriteLine("2.Remove Appointment");
                    Console.WriteLine("3.Get Appoinment");
                    string caseString7 = Console.ReadLine();
                    switch (caseString7)
                    {
                        case "1":
                            addappointment();
                            break;
                        case "2":
                            removeappointment();
                            break;
                        case "3":
                            appointmentList();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "7":
                    Console.WriteLine("Teatments");
                    Console.WriteLine("1.Add Treatments");
                    Console.WriteLine("2.Remove Tretments");
                    Console.WriteLine("3.Get Treatment");
                    string caseString8 = Console.ReadLine();
                    switch (caseString8)
                    {
                        case "1":
                            addtreatment();
                            break;
                        case "2":
                            removedTreatment();
                            break;
                        case "3":
                            getTreatments();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                case "8":
                    Console.WriteLine("Drugs");
                    Console.WriteLine("1.Add Drugs");
                    Console.WriteLine("2.Remove Drugs");
                    Console.WriteLine("3.Get Drugs");
                    string caseString9 = Console.ReadLine();
                    switch (caseString9)
                    {
                        case "1":
                            addrug();
                            break;
                        case "2":
                            removededrug();
                            break;
                        case "3":
                            getdrug();
                            break;
                        default:
                            Console.WriteLine("Value didn’t match earlier.");
                            break;
                    }
                    break;
                default:
                    Console.WriteLine("Value didn’t match earlier.");
                    break;
            }
            Console.ReadLine();
        }
        static void addhospital()
        {
            using (var context = new Context())
            {
                Hospitals hp = new Hospitals();
                Console.WriteLine("Enter Hospital Name");
                hp.HospitalName = Console.ReadLine();
                context.Hospitals.Add(hp);
                context.SaveChanges();
            }
        }
        static void removehospital()
        {
            using (var context = new Context())
            {
                Hospitals hp = new Hospitals();
                Console.WriteLine("Enter Hospital Id");
                hp.HospitalId = Convert.ToInt32(Console.ReadLine());

                context.Hospitals.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getHospital()
        {

            using (var context = new Context())
            {
                Hospitals hp = new Hospitals();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Hospitals.ToList())
                {
                    Console.WriteLine($"ID {item.HospitalId} and Name {item.HospitalName}");
                }
            }
        }
        static void addepartment()
        {
            using (var context = new Context())
            {
                Departments dp = new Departments();
                Console.WriteLine("Enter Department Name");
                dp.DepartmentName = Console.ReadLine();
                Console.WriteLine("Enter Department Name");
                dp.HospitalId = Convert.ToInt32(Console.ReadLine());
                context.Departments.Add(dp);
                context.SaveChanges();
            }
        }
        static void removedepartment()
        {
            using (var context = new Context())
            {
                Departments hp = new Departments();
                Console.WriteLine("Enter Departments Id");
                hp.DepartmentId = Convert.ToInt32(Console.ReadLine());

                context.Departments.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getdepartment()
        {

            using (var context = new Context())
            {
                Departments hp = new Departments();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Departments.ToList())
                {
                    Console.WriteLine($"ID {item.DepartmentId}  Name {item.DepartmentName} HospitalId{item.HospitalId} ");
                }
            }
        }
        static void addassistant()
        {
            using (var context = new Context())
            {
                Assistants dp = new Assistants();
                Console.WriteLine("Enter Assistent Name");
                dp.AssistentName = Console.ReadLine();
                Console.WriteLine("Enter Patient Id");
                dp.PatientId = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter Department id");
                dp.DepartmentId = Convert.ToInt32(Console.ReadLine());
                context.Assistants.Add(dp);
                context.SaveChanges();
            }
        }
        static void removeassistant()
        {
            using (var context = new Context())
            {
                Assistants hp = new Assistants();
                Console.WriteLine("Enter Assistent Id");
                hp.AssistentId = Convert.ToInt32(Console.ReadLine());

                context.Assistants.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getassistant()
        {

            using (var context = new Context())
            {
                Assistants hp = new Assistants();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Assistants.ToList())
                {

                    Console.WriteLine($"ID {item.AssistentId} - Name {item.AssistentName}- PatientId{item.PatientId} - DepartmentId{item.DepartmentId}");
                }
            }
        }
        static void addoctor()
        {
            using (var context = new Context())
            {
                Doctors dp = new Doctors();
                Console.WriteLine("Enter Doctor Name");
                dp.doctorName = Console.ReadLine();
                Console.WriteLine("Enter Department Id");
                dp.DepartmentId = Convert.ToInt32(Console.ReadLine());
                context.Doctors.Add(dp);
                context.SaveChanges();
            }
        }
        static void removedoctor()
        {
            using (var context = new Context())
            {
                Doctors hp = new Doctors();
                Console.WriteLine("Enter Doctor Id");
                hp.DoctorId = Convert.ToInt32(Console.ReadLine());

                context.Doctors.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getdoctor()
        {

            using (var context = new Context())
            {
                Doctors hp = new Doctors();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Doctors.ToList())
                {
                    Console.WriteLine($"ID {item.DoctorId} - Name {item.doctorName} -DepartmentId{item.DepartmentId} ");
                }
            }
        }
        static void addpatient()
        {
            using (var context = new Context())
            {
                Patients dp = new Patients();
                Console.WriteLine("Enter Patients Name");
                dp.PatientName = Console.ReadLine();
                Console.WriteLine("Enter Patients Gender");
                dp.Gender = Console.ReadLine();
                Console.WriteLine("Enter location ");
                dp.location = Console.ReadLine();

                context.Patients.Add(dp);
                context.SaveChanges();
            }
        }
        static void removepatient()
        {
            using (var context = new Context())
            {
                Patients hp = new Patients();
                Console.WriteLine("Enter Patients Id");
                hp.PatientId = Convert.ToInt32(Console.ReadLine());

                context.Patients.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getpatient()
        {

            using (var context = new Context())
            {
                Patients hp = new Patients();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Patients.ToList())
                {
                    Console.WriteLine($"ID {item.PatientId} - Name {item.PatientName}- GenderId{item.Gender}-Location{item.location} ");
                }
            }
        }
        static void addrug()
        {
            using (var context = new Context())
            {
                Drugs dp = new Drugs();
                Console.WriteLine("Enter Drug Name");
                dp.DrugName = Console.ReadLine();

                context.Drugs.Add(dp);
                context.SaveChanges();
            }
        }
        static void removededrug()
        {
            using (var context = new Context())
            {
                Drugs hp = new Drugs();
                Console.WriteLine("Enter Departments Id");
                hp.DrugId = Convert.ToInt32(Console.ReadLine());

                context.Drugs.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getdrug()
        {

            using (var context = new Context())
            {
                Drugs hp = new Drugs();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Drugs.ToList())
                {
                    Console.WriteLine($"ID {item.DrugId} - Name {item.DrugName} ");
                }
            }
        }
        static void addtreatment()
        {
            using (var context = new Context())
            {
                Treatments dp = new Treatments();
                Console.WriteLine("Enter Diseases Name");
                dp.Diseases = Console.ReadLine();
                Console.WriteLine("Enter Drug Name");
                dp.DrugName = Console.ReadLine();
                Console.WriteLine("Enter Patients Id");
                dp.PatientId = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter Doctor Id");
                dp.DoctorId = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter DrugTime Id");
                dp.DrugTime = Convert.ToInt32(Console.ReadLine());
                context.Treatments.Add(dp);
                context.SaveChanges();
            }
        }
        static void removedTreatment()
        {
            using (var context = new Context())
            {
                Treatments hp = new Treatments();
                Console.WriteLine("Enter Treatment Id");
                hp.TreatmentId = Convert.ToInt32(Console.ReadLine());

                context.Treatments.Remove(hp);
                context.SaveChanges();
            }

        }
        static void getTreatments()
        {

            using (var context = new Context())
            {
                Drugs hp = new Drugs();
                //Console.WriteLine("Enter Hospital Id");
                foreach (var item in context.Drugs.ToList())
                {
                    Console.WriteLine($"ID {item.DrugId} - Name {item.DrugName} ");
                }
            }
        }
        static void addappointment()
        {
            using (var context = new Context())
            {

                Appoinment dp = new Appoinment();
                Console.WriteLine("Enter Drug Name");
                dp.PatientId = Convert.ToInt32(Console.ReadLine());
                var check = context.Appoinments.SingleOrDefault(t => t.PatientId == dp.PatientId && t.DoctorId == dp.DoctorId && t.Time == dp.Time);
                if (check == null)
                {
                    try
                    {
                        context.Appoinments.Add(dp);
                        context.SaveChanges();
                        Console.WriteLine("Appointment Successfully done");
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e);
                    }
                }
                else
                {
                    Console.WriteLine("Appointment  is already Booked");
                }
            }
        }
    

    static void removeappointment()
    {
        using (var context = new Context())
        {
            Appoinment hp = new Appoinment();
            Console.WriteLine("Enter Appoinment Id");
            hp.AppoinmentId = Convert.ToInt32(Console.ReadLine());

            context.Appoinments.Remove(hp);
            context.SaveChanges();
        }

    }
    static void appointmentList()
    {

        using (var context = new Context())
        {
            Appoinment hp = new Appoinment();
            //Console.WriteLine("Enter Hospital Id");
            foreach (var item in context.Appoinments.ToList())
            {
                Console.WriteLine($"ID {item.AppoinmentId} - Time {item.Time}-patientId{item.AppoinmentId}-DoctorId{item.DoctorId} ");
            }
        }

    }
    

    }
}

