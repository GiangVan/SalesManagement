namespace SalesManagement
{
    partial class frmStart
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnLogAdmin = new System.Windows.Forms.Button();
            this.btnLogin = new System.Windows.Forms.Button();
            this.pnLinkPage = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnExit);
            this.panel1.Controls.Add(this.btnLogAdmin);
            this.panel1.Controls.Add(this.btnLogin);
            this.panel1.Controls.Add(this.pnLinkPage);
            this.panel1.Location = new System.Drawing.Point(240, 60);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(320, 500);
            this.panel1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 10F);
            this.label1.Location = new System.Drawing.Point(32, 460);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(253, 31);
            this.label1.TabIndex = 4;
            this.label1.Text = "Điều khoản sử dụng";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(254)))), ((int)(((byte)(52)))), ((int)(((byte)(57)))));
            this.btnExit.FlatAppearance.CheckedBackColor = System.Drawing.Color.White;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExit.Font = new System.Drawing.Font("Times New Roman", 15F);
            this.btnExit.ForeColor = System.Drawing.Color.White;
            this.btnExit.Location = new System.Drawing.Point(35, 390);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(250, 50);
            this.btnExit.TabIndex = 3;
            this.btnExit.Text = "EXIT";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.BtnExit_Click);
            // 
            // btnLogAdmin
            // 
            this.btnLogAdmin.BackColor = System.Drawing.Color.LightSkyBlue;
            this.btnLogAdmin.FlatAppearance.BorderSize = 0;
            this.btnLogAdmin.FlatAppearance.CheckedBackColor = System.Drawing.Color.White;
            this.btnLogAdmin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogAdmin.Font = new System.Drawing.Font("Times New Roman", 15F);
            this.btnLogAdmin.ForeColor = System.Drawing.Color.White;
            this.btnLogAdmin.Location = new System.Drawing.Point(35, 298);
            this.btnLogAdmin.Name = "btnLogAdmin";
            this.btnLogAdmin.Size = new System.Drawing.Size(250, 50);
            this.btnLogAdmin.TabIndex = 2;
            this.btnLogAdmin.Text = "QUẢN LÝ";
            this.btnLogAdmin.UseVisualStyleBackColor = false;
            this.btnLogAdmin.Click += new System.EventHandler(this.BtnLogAdmin_Click);
            // 
            // btnLogin
            // 
            this.btnLogin.BackColor = System.Drawing.Color.White;
            this.btnLogin.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(175)))), ((int)(((byte)(227)))));
            this.btnLogin.FlatAppearance.BorderSize = 2;
            this.btnLogin.FlatAppearance.CheckedBackColor = System.Drawing.Color.White;
            this.btnLogin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogin.Font = new System.Drawing.Font("Times New Roman", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLogin.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(147)))), ((int)(((byte)(202)))));
            this.btnLogin.Location = new System.Drawing.Point(35, 232);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(250, 50);
            this.btnLogin.TabIndex = 1;
            this.btnLogin.Text = "NHÂN VIÊN";
            this.btnLogin.UseVisualStyleBackColor = false;
            this.btnLogin.Click += new System.EventHandler(this.BtnLogin_Click);
            // 
            // pnLinkPage
            // 
            this.pnLinkPage.BackColor = System.Drawing.Color.White;
            this.pnLinkPage.BackgroundImage = global::SalesManagement.Properties.Resources.Screen_Shot_2019_03_23_at_9_58_45_AM;
            this.pnLinkPage.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pnLinkPage.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pnLinkPage.Location = new System.Drawing.Point(-1, 0);
            this.pnLinkPage.Name = "pnLinkPage";
            this.pnLinkPage.Size = new System.Drawing.Size(320, 180);
            this.pnLinkPage.TabIndex = 0;
            this.pnLinkPage.Click += new System.EventHandler(this.PnLinkPage_Click);
            // 
            // frmStart
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::SalesManagement.Properties.Resources._30325_service_marketing_communication_business_startup_company_1920x1080;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(800, 600);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "frmStart";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnLogAdmin;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.Panel pnLinkPage;
        private System.Windows.Forms.Label label1;
    }
}

