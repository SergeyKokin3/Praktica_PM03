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

namespace Сессия__1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Number_KeyUp(object sender, KeyEventArgs e)
        {

        }

        private void Update_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void Password_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                TextBox txtBox = e.Source as TextBox;
                if (txtBox != null)
                {
                    Method P = new Method();
                    var code = P.GetCode();
                    MessageBox.Show(code, "Генератор кода");
                }
            }
        }

        private void Code_KeyUp(object sender, KeyEventArgs e)
        {

        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            NumbeR.Clear();
            Password.Clear();
            Code.Clear();
            MessageBox.Show("Поля очищены", "Отмена");
        }

        private void Entrance_Click_2(object sender, RoutedEventArgs e)
        {

        }

        private void NumbeR_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                TextBox txtBox = e.Source as TextBox;
                if (txtBox != null)
                {
                    Password.IsEnabled = IsEnabled;
                }
            }
        }
        class Method
        {
            public string GetCode()
            {
                int[] arr = new int[8];
                Random rnd = new Random();
                string Code = "";

                for (int i = 0; i < arr.Length; i++)
                {
                    arr[i] = rnd.Next(33, 125);
                    Code += (char)arr[i];
                }
                return Code;
            }
        }
    }
}
