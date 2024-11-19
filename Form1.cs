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
    public partial class Form1 : Form
    {
        MySqlConnection conn = new MySqlConnection(@"datasource=localhost;port=3306;username=root;password=''");
        public Form1()
        {
            InitializeComponent();

            GetData();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        void GetData()
        {
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM final_project.user", conn);
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
            dt.Columns.Add("ID",  typeof(int));
            dt.Columns.Add("EmailAddress", typeof(string));
            dt.Columns.Add("Password", typeof(string));

            foreach(DataGridViewRow dgv in dataGridView1.Rows )
            {
                dt.Rows.Add(dgv.Cells[0].Value, dgv.Cells[1].Value, dgv.Cells[2].Value);
            }
            ds.Tables.Add(dt);
            ds.WriteXmlSchema("users.xml");


            CrystalReport1 cr = new CrystalReport1();
            cr.SetDataSource(ds); 

            Form2 form2 = new Form2();
            form2.crystalReportViewer1.ReportSource = cr;
            form2.crystalReportViewer1.Refresh();
            form2.Show();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form11 form11 = new Form11();
            form11.Show();
            this.Hide();
        }
    }
}
