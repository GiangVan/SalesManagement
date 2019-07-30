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
using SalesManagement.Classes;

namespace SalesManagement
{
    public partial class frmLogin : Form
    {
        SqlCommand command;
        SqlConnection connection;
        SqlDataReader datareader;

        public string strConnection = @"Data Source=PEAGA;Initial Catalog=Database;Integrated Security=True";
        public frmLogin()
        {
            InitializeComponent();
            timer1.Start();
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

        private void Btnback_Click(object sender, EventArgs e)
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
            string sql = @"select * from tblLogin where Username like '" + txtUserName.Text + "' and Password like '" + txtPassword.Text + "'";
            command = new SqlCommand(sql, connection);
            datareader = command.ExecuteReader();
            datareader.Read();

            if (datareader.HasRows)
            {
                MessageBox.Show("Welcome", "Susscess", MessageBoxButtons.OK, MessageBoxIcon.None);
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

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(strConnection);
            connection.Open();
        }
    }
}
