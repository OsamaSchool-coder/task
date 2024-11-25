using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Task_wpf_v2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Task1Entities task = new Task1Entities();
        public MainWindow()
        {
            InitializeComponent();
        }
        private void Login_btn_Click(object sender, RoutedEventArgs e)
        {
            var manager = task.users.FirstOrDefault(mang => mang.userr_name == username_txt.Text && mang.user_pass == password_txt.Password && mang.rolee == "manager");
            var employee = task.users.FirstOrDefault(emp => emp.userr_name == username_txt.Text && emp.user_pass == password_txt.Password && emp.rolee == "employee");
            if (manager != null) // Manager
            {
                MessageBox.Show("Welcome Manager", "Login", MessageBoxButton.OK, MessageBoxImage.Information);
                manager managerPage = new manager();
                managerPage.Show();
                this.Close();
                return;
            }
            if (employee != null)
            {
                MessageBox.Show("Welcome Employee", "Login", MessageBoxButton.OK, MessageBoxImage.Information);
                emp empPage = new emp();
                empPage.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Invalid Username or Password", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
