using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EmpApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                //txtTgl.Text = DateTime.Now.ToString("dd-MM-yyyy");
                LoadRecord();
            }

        }

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-AJ5OA48\SQLEXPRESS;Initial Catalog=dbEmp;Persist Security Info=True;User ID=sa;Password=123");
        protected void Button1_Click(object sender, EventArgs e)
        {
            // buka koneksi
            con.Open();
            // validasi jika emp id sudah ada/jika terjadi duplicate data
            SqlCommand commCheckEmpID = new SqlCommand(" Select EmployeeId from Employee where EmployeeId = '" + int.Parse(txtEmpID.Text) + "'",con);
            SqlDataAdapter sd = new SqlDataAdapter(commCheckEmpID);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Already Exist Employee ID !');", true);
            }
            else { 
            //insert data
            SqlCommand comm = new SqlCommand("Insert into Employee values('" + int.Parse(txtEmpID.Text) + "','" + txtFullName.Text + "','" + Convert.ToDateTime(txtTgl.Text).ToString("dd-MMMM-yy") + "')", con);
            comm.ExecuteNonQuery();
            //tutup koneksi
            con.Close();           
            //notifikasi jika input sukses
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Successfully Saved !');",true);
            //panggil method
            LoadRecord();
            }
        }

        //menambahkan method untuk get gridview (menampilkan data pegawai)
        void LoadRecord() 
        {
            SqlCommand comm = new SqlCommand("select * from employee", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
       


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // buka koneksi
            con.Open();
            //update data
            SqlCommand comm = new SqlCommand("Update Employee set FullName = '" + txtFullName.Text + "',BirthDate = '" + DateTime.Parse(txtTgl.Text) + "' where EmployeeId ='" + int.Parse(txtEmpID.Text) +"'", con);
            comm.ExecuteNonQuery();
            //tutup koneksi
            con.Close();
            //notifikasi jika update sukses
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Update Success!');", true);
            //panggil method
            LoadRecord();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // buka koneksi
            con.Open();
            //delete data
            SqlCommand comm = new SqlCommand("Delete from Employee where EmployeeId ='" + int.Parse(txtEmpID.Text) + "'", con);
            comm.ExecuteNonQuery();
            //tutup koneksi
            con.Close();
            //notifikasi jika delete sukses
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Delete Success!');", true);
            //panggil method
            LoadRecord();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //menambahkan clause untuk menampilkan data tertentu
            SqlCommand comm = new SqlCommand("select * from employee where EmployeeId ='" + int.Parse(txtEmpID.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

   

        protected void btnGet_Click(object sender, EventArgs e)
        {
            // button untuk seacrh bedasarkan ID
            con.Open();
            SqlCommand comm = new SqlCommand("select * from employee where EmployeeId ='" + int.Parse(txtEmpID.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read()) 
            {
                txtFullName.Text = r.GetValue(1).ToString();
                txtTgl.Text = Convert.ToDateTime(r.GetValue(2)).ToString("mm/dd/yyyy");
            }
            con.Close();
        }
    }
}