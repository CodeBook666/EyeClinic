using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace CrystalReports
{
    public partial class Form3 : Form
    {
        MySqlConnection conn = new MySqlConnection(@"datasource=localhost;port=3306;username=root;password=''");
        public Form3()
        {
            InitializeComponent();
            GetData();
        }

        void GetData()
        {
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM final_project.appointments", conn);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable dtset = new DataTable();
            adapter.Fill(dtset);
            BindingSource bsource = new BindingSource();

            bsource.DataSource = dtset;
            dataGridView1.DataSource = bsource;
            adapter.Update(dtset);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt.Columns.Add("First_Name", typeof(string));
            dt.Columns.Add("Last_Name", typeof(string));
            dt.Columns.Add("Phone_Number", typeof(string));
            dt.Columns.Add("Email_Address", typeof(string));
            dt.Columns.Add("Appointment_Date", typeof(string));
            dt.Columns.Add("Visited_Before", typeof(string));
            dt.Columns.Add("Comment", typeof(string));
            dt.Columns.Add("Appointment_Time", typeof(string));

            foreach (DataGridViewRow dgv in dataGridView1.Rows)
            {
                dt.Rows.Add(dgv.Cells[0].Value, dgv.Cells[1].Value, dgv.Cells[2].Value, dgv.Cells[3].Value, dgv.Cells[4].Value,
                    dgv.Cells[5].Value, dgv.Cells[6].Value, dgv.Cells[7].Value);
            }
            ds.Tables.Add(dt);
            ds.WriteXmlSchema("appointments.xml");

            CrystalReport2 cr = new CrystalReport2();
            cr.SetDataSource(ds);

            Form4 form4 = new Form4();
            form4.crystalReportViewer1.ReportSource = cr;
            form4.crystalReportViewer1.Refresh();
            form4.Show();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form11 form11 = new Form11();
            form11.Show();
            this.Hide();
        }
    }
}
