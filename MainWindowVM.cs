using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Media.Imaging;

namespace SMS_UOR
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<Person> persons;
        [ObservableProperty]
        public Person selectedUser = null;
        [ObservableProperty]
        public Person defaultPerson = null;

        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }

        [RelayCommand]
        public void RemovePerson()
        {
            if (SelectedUser != null)
            {
                string name = SelectedUser.FirstName;
                Persons.Remove(SelectedUser);
                MessageBox.Show($"{name} is successfuly Deleted.", "DELETED");

            }
            else
            {
                MessageBox.Show("Plese Select a Student before Deleting.", "Error");
            }
        }

        [RelayCommand]
        public void details()
        {
            if (SelectedUser != null)
            {
                var vm = new DetailsWindowVM(SelectedUser);
                DetailsWindow window = new DetailsWindow(vm);
                window.ShowDialog();

            }
            else
            {
                MessageBox.Show("Please Select a student to get the details.", "Error");
            }
        }

        [RelayCommand]
        public void add()
        {
            var vm = new EditWindowVM();
            var window = new EditWindow(vm);
            window.ShowDialog();
            Persons.Add(vm.Student);
        }

        [RelayCommand]
        public void edit()
        {
            if (SelectedUser != null)
            {
                var vm = new EditWindowVM(SelectedUser);
                var window = new EditWindow(vm);
                window.ShowDialog();

                int index = Persons.IndexOf(SelectedUser);
                Persons.RemoveAt(index);
                Persons.Insert(index, vm.Student);

            }
            else
            {
                MessageBox.Show("Please Select a student to get the details.", "Error");
            }
        }


        public MainWindowVM()
        {
            persons = new ObservableCollection<Person>();
            BitmapImage image1 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/Themal.jpg", UriKind.Relative));
            persons.Add(new Person("Themal", "De Silva", "2001.01.18", image1, 3.7, "themalcampus@gmail.com", "Undergraduate student of University of Ruhuna."));
            BitmapImage image2 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/pp1.jpg", UriKind.Relative));
            persons.Add(new Person("Sahan", "Gammanpila", "1998.09.23", image2, 3.9, "gamman98@gmail.com", "Undergraduate student of University of Ruhuna."));
            BitmapImage image3 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/pp2.jpg", UriKind.Relative));
            persons.Add(new Person("Ruwan", "Rathnayake", "1999.08.12", image3, 3.1, "ruwanruwan01@gmail.com", "Undergraduate student of University of Ruhuna."));
            BitmapImage image4 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/pp3.jpg", UriKind.Relative));
            persons.Add(new Person("Dinekshi", "Fernando", "2000.06.07", image4, 3.2, "itsdinekshi7@gmail.com", "Undergraduate student of University of Ruhuna."));
            BitmapImage image5 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/pp4.jpg", UriKind.Relative));
            persons.Add(new Person("Chamath", "Sandaru", "1999.05.03", image5, 3.6, "sandaruchamath@gmail.com", "Undergraduate student of University of Ruhuna."));
            BitmapImage image6 = new BitmapImage(new Uri("C:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/pp5.jpg", UriKind.Relative));
            persons.Add(new Person("Sayumi", "De Alwis ", "2000.08.26", image6, 3.8, "sayumi_08@gmail.com", "Undergraduate student of University of Ruhuna."));


        }


    }
}
