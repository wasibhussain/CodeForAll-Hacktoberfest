using System;
using System.Windows.Forms;

namespace SimpleCalculator
{
    public partial class CalculatorForm : Form
    {
        public CalculatorForm()
        {
            InitializeComponent();
        }

        private void CalculateButton_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(textBox1.Text);
            double num2 = Convert.ToDouble(textBox2.Text);

            if (addRadioButton.Checked)
                resultLabel.Text = (num1 + num2).ToString();
            else if (subtractRadioButton.Checked)
                resultLabel.Text = (num1 - num2).ToString();
        }
    }
}
