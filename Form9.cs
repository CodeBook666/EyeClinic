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
    public partial class Form9 : Form
    {
        MySqlConnection conn = new MySqlConnection(@"datasource=localhost;port=3306;username=root;password=''");
        public Form9()
        {
            InitializeComponent();
            GetData();
        }

        void GetData()
        {
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM final_project.eye_measurement", conn);
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
            dt.Columns.Add("left_eye", typeof(string));
            dt.Columns.Add("right_eye", typeof(string));
            dt.Columns.Add("eyeMeasurement_date", typeof(string));
            dt.Columns.Add("eyeMeasurement_id", typeof(int));
            dt.Columns.Add("frame_size", typeof(int));
            

            foreach (DataGridViewRow dgv in dataGridView1.Rows)
            {
                dt.Rows.Add(dgv.Cells[0].Value, dgv.Cells[1].Value, dgv.Cells[2].Value, dgv.Cells[3].Value, dgv.Cells[4].Value);
            }
            ds.Tables.Add(dt);
            ds.WriteXmlSchema("eyeMeasurement.xml");

            CrystalReport5 cr = new CrystalReport5();
            cr.SetDataSource(ds);

            Form10 form10 = new Form10();
            form10.crystalReportViewer1.ReportSource = cr;
            form10.crystalReportViewer1.Refresh();
            form10.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form11 form11 = new Form11();
            form11.Show();
            this.Hide();
        }
    }
}
