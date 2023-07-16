using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace SMS_UOR
{


    public partial class DetailsWindowVM : ObservableObject
    {
        public Person Student { get; private set; }
        public Action CloseAction { get; internal set; }

        [ObservableProperty]
        public string firstname;

        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public string? dob;

        [ObservableProperty]
        public double? gpa;

        [ObservableProperty]
        public string email;

        [ObservableProperty]
        public string other;

        [ObservableProperty]
        public BitmapImage imgURL;

        public DetailsWindowVM(Person p)
        {
            Student = p;

            firstname = Student.FirstName;
            lastname = Student.LastName;
            dob = Student.DOB;
            gpa = Student.GPA;
            email = Student.Mail;
            other = Student.Other;
            imgURL = Student.ProfilePhoto;
        }

        public DetailsWindowVM()
        {

        }

        [RelayCommand]
        public void OK()
        {
            CloseAction();
            Application.Current.MainWindow.Show();
        }

    }
}
