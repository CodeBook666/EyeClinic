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
    public partial class Form5 : Form
    {
        MySqlConnection conn = new MySqlConnection(@"datasource=localhost;port=3306;username=root;password=''");

        public Form5()
        {
            InitializeComponent();

            GetData();
        }

        void GetData()
        {
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM final_project.contactus", conn);
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
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Email_Address", typeof(string));
            dt.Columns.Add("Message", typeof(string));

            foreach (DataGridViewRow dgv in dataGridView1.Rows)
            {
                dt.Rows.Add(dgv.Cells[0].Value, dgv.Cells[1].Value, dgv.Cells[2].Value);
            }
            ds.Tables.Add(dt);
            ds.WriteXmlSchema("contactus.xml");

            CrystalReport3 cr = new CrystalReport3();
            cr.SetDataSource(ds);

            Form6 form6 = new Form6();
            form6.crystalReportViewer1.ReportSource = cr;
            form6.crystalReportViewer1.Refresh();
            form6.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form11 form11 = new Form11();
            form11.Show();
            this.Hide();
        }
    }
}
