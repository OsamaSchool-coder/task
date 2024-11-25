using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Task_wpf_v2
{
    /// <summary>
    /// Interaction logic for manager.xaml
    /// </summary>
    public partial class manager : Window
    {
        Task1Entities taskEnt = new Task1Entities();
        Task _Task;
        public manager()
        {
            InitializeComponent();
            display();
        }

        public void display()
        {
            display_task.ItemsSource = taskEnt.Tasks.ToList();
        }


        private void task_add_Click(object sender, RoutedEventArgs e)
        {
            var something = new Task
            {
               task_id =int.Parse(task_id_txt.Text),
               task_title= task_title.Text,
               task_desc= task_desc.Text,
               task_state=task_state.Text,
               //userr_id=int.Parse(task_emp_name_txt.Text)
            };
            taskEnt.Tasks.Add(something);
            taskEnt.SaveChanges();
            display();
        }

        private void task_update_Click(object sender, RoutedEventArgs e)
        {
            display_task.IsReadOnly = true;
            if (display_task.SelectedItem is Task task)
            {

                task.task_id = int.Parse(task_id_txt.Text);
                task.task_title = task_title.Text;
                task.task_desc = task_desc.Text;
                task.task_state= task_state.Text;

                //task_id_txt.Text = task.task_id.ToString();
                //task_title.Text = task.task_title;
                //task_desc.Text = task.task_desc;
                //task_state.Text = task.task_state;
                //task_emp_name_txt.Text = task.userr_id.ToString();
                taskEnt.SaveChanges();
                display();
            }
        }

        private void display_task_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            display_task.IsReadOnly = true;
            if (display_task.SelectedItem is Task task)
            {
                task_id_txt.Text = task.task_id.ToString();
                task_title.Text = task.task_title;
                task_desc.Text = task.task_desc;
                task_state.Text = task.task_state;
                task_emp_name_txt.Text = task.userr_id.ToString();
                taskEnt.SaveChanges();
            }
        }

        private void task_delete_Click(object sender, RoutedEventArgs e)
        {
            var task = display_task.SelectedItem as Task;
            taskEnt.Tasks.Remove(task);
            taskEnt.SaveChanges();
            display();
           
        }
    }
}
