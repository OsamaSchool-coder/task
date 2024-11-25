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
using System.Windows.Shapes;

namespace Task_wpf_v2
{
    /// <summary>
    /// Interaction logic for emp.xaml
    /// </summary>
    public partial class emp : Window
    {
        Task1Entities task = new Task1Entities();
        Task display;
        public emp()
        {
            InitializeComponent();
            display_pending_inProgress_func();
            display_completed_func();
        }

        public void display_pending_inProgress_func()
        {
            display_pending_inProgress.ItemsSource=task.Tasks.Where(state => state.task_state == "Pending" || state.task_state == "In Progress").ToList();
        }
        public void display_completed_func()
        {
            display_completed.ItemsSource = task.Tasks.Where(state => state.task_state == "Completed").ToList();
        }

        private void display_pending_inProgress_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            display_pending_inProgress.IsReadOnly = true;
            if (display_pending_inProgress.SelectedItem is Task task_display)
            {
                //task_display = display;
                task_id_txt.Text = task_display.task_id.ToString();
                task_state.Text = task_display.task_state.ToString();
            }
        }

        private void Save_btn_Click(object sender, RoutedEventArgs e)
        {
            var replace = new Task
            {
                task_state = task_state.Text
            };
            replace.Equals(task_state);
            task.SaveChanges();
            display_completed_func();
            display_pending_inProgress_func();
        }
    }
}
