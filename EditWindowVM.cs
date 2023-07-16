using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using System.Windows;
using System.Data;
using SMS_UOR;

namespace SMS_UOR
{
    public partial class EditWindowVM : ObservableObject
    {
        public Person Student { get; private set; }
        public Action CloseAction { get; internal set; }

        [ObservableProperty]
        public string firstname;

        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public string dob;

        [ObservableProperty]
        public double? gpa;

        [ObservableProperty]
        public string email;

        [ObservableProperty]
        public string other;

        [ObservableProperty]
        public BitmapImage imgURL;

        public BitmapImage _selectedImage;


        public BitmapImage SelectedImage
        {
            get { return _selectedImage; }
            set { SetProperty(ref _selectedImage, value); UpdateImageDetails(); }
        }

        public void DefaultImage()
        {

        }

        [RelayCommand]
        public void OpenFile()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                SelectedImage = new BitmapImage(new Uri(dialog.FileName));


                MessageBox.Show("Image successfuly uploded!", "successfull");
            }
        }

        [RelayCommand]
        public void Save()
        {
            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("GPA value must be between 0 and 4.", "Error");
                return;
            }

            if (Student == null)
            {
                Student = new Person()
                {
                    FirstName = firstname,
                    LastName = lastname,
                    DOB = dob,
                    GPA = gpa,
                    Mail = email,
                    Other = other,
                    ProfilePhoto = SelectedImage
                };
            }
            else
            {
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.DOB = dob;
                Student.GPA = gpa;
                Student.Mail = email;
                Student.Other = other;
                Student.ProfilePhoto = SelectedImage;
            }

            if (Student.FirstName != null)
            {
                CloseAction();
            }

            Application.Current.MainWindow.UpdateLayout();
            Application.Current.MainWindow.Show();
        }

        public EditWindowVM(Person p)
        {
            Student = p;

            firstname = Student.FirstName;
            lastname = Student.LastName;
            dob = Student.DOB;
            gpa = Student.GPA;
            email = Student.Mail;
            other = Student.Other;
            SelectedImage = Student.ProfilePhoto;
        }

        public EditWindowVM()
        {

        }

        private void UpdateImageDetails()
        {

        }
    }
}
