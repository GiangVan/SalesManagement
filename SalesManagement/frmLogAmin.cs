using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SalesManagement
{
    public partial class frmLogAmin : Form
    {
        frmLogin Login = new frmLogin();
        SqlCommand command;
        SqlConnection connection;
        SqlDataReader datareader;

        public frmLogAmin()
        {
            InitializeComponent();
            timer1.Start();
            connection = new SqlConnection(Login.strConnection);
            connection.Open();
        }

        private void TxtUserName_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
        }

        private void TxtPassword_Click(object sender, EventArgs e)
        {
            txtPassword.UseSystemPasswordChar = true;
            txtPassword.Text = "";
        }

        private void BtnBack_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Timer1_Tick(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.Now;
            lblDateTime.Text = dateTime.ToString();
        }

        private void BtnLogin_Click(object sender, EventArgs e)
        {
            int count = 5;
            string sql = @"select * from tblAdmin where Username like '" + txtUserName.Text + "' and Password like '" + txtPassword.Text + "'";
            command = new SqlCommand(sql, connection);
            datareader = command.ExecuteReader();
            datareader.Read();

            if (datareader.HasRows)
            {
                MessageBox.Show("Welcome", "Susscess", MessageBoxButtons.OK, MessageBoxIcon.None);
                Application.Exit();
                datareader.Close();
                frmStart frmStart = (frmStart)Application.OpenForms["frmStart"];
                frmStart.Hide();
                this.Hide();
            }
            else
            {
                DialogResult = MessageBox.Show("Không được phép truy cập! ", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                count--;
            }
        }

        private void FrmLogAmin_Load(object sender, EventArgs e)
        {

        }
    }
}
