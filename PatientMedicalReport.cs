using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Eye_Clinic_SS
{
    public partial class Patient_s_medical_report : Form
    {
        string connectionString = @"datasource=localhost;user=root;password='';database=logindata;port=3306";
        //Database connection
        public Patient_s_medical_report()
        {
            InitializeComponent();
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection(connectionString)) //Condition of connection
            {
                con.Open();
                MySqlDataAdapter dat = new MySqlDataAdapter("SELECT*FROM eye_measurement", con); //Connection of selected parts in clinic manger table
                DataTable dt = new DataTable();
                dat.Fill(dt);

                dataGridView2.DataSource = dt;  //Display nurse data
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {


            using (MySqlConnection con = new MySqlConnection(connectionString)) //Condition of connection
            {
                con.Open();
                MySqlDataAdapter dat = new MySqlDataAdapter("SELECT*FROM test_results", con); //Connection of selected parts in clinic manger table
                DataTable dt = new DataTable();
                dat.Fill(dt);

                dataGridView3.DataSource = dt;  //Display nurse data
            }

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }



        private void pictureBox2_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button9_Click_1(object sender, EventArgs e)
        {
            Receptionist r1 = new Receptionist();
            r1.Show();
            this.Close();
        }
    }
}

