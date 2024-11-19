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
    public partial class Form7 : Form
    {
        MySqlConnection conn = new MySqlConnection(@"datasource=localhost;port=3306;username=root;password=''");
        public Form7()
        {
            InitializeComponent();

            GetData();
        }

        void GetData()
        {
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM final_project.payments", conn);
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
            dt.Columns.Add("firstname", typeof(string));
            dt.Columns.Add("lastname", typeof(string));
            dt.Columns.Add("EmailAddress", typeof(string));
            dt.Columns.Add("cardNumber", typeof(string));
            dt.Columns.Add("cvc", typeof(int));
            dt.Columns.Add("Amount", typeof(int));

            foreach (DataGridViewRow dgv in dataGridView1.Rows)
            {
                dt.Rows.Add(dgv.Cells[0].Value, dgv.Cells[1].Value, dgv.Cells[2].Value, dgv.Cells[3].Value, dgv.Cells[4].Value, dgv.Cells[5].Value);
            }
            ds.Tables.Add(dt);
            ds.WriteXmlSchema("payment.xml");

            CrystalReport4 cr = new CrystalReport4();
            cr.SetDataSource(ds);

            Form8 form8 = new Form8();
            form8.crystalReportViewer1.ReportSource = cr;
            form8.crystalReportViewer1.Refresh();
            form8.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form11 form11 = new Form11();
            form11.Show();
            this.Hide();
        }
    }
}
