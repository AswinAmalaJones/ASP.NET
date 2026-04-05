using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace program10
{
    public partial class Program10 : System.Web.UI.Page
    {
        string connString = System.Configuration.ConfigurationManager
            .ConnectionStrings["SchoolDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string sql = "SELECT StudentID, Name, Age FROM Student";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string sql = "INSERT INTO Student (Name, Age) VALUES (@Name, @Age); SELECT SCOPE_IDENTITY()";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName10.Text);
                    cmd.Parameters.AddWithValue("@Age", txtAge10.Text);
                    int newID = (int)(decimal)cmd.ExecuteScalar();
                    txtID.Text = newID.ToString();
                    lblResult10.Text = "Record inserted with ID: " + newID;
                }
            }
            LoadGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtID.Text))
            {
                lblResult10.Text = "Select a record to update.";
                return;
            }
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string sql = "UPDATE Student SET Name=@Name, Age=@Age WHERE StudentID=@ID";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName10.Text);
                    cmd.Parameters.AddWithValue("@Age", txtAge10.Text);
                    cmd.Parameters.AddWithValue("@ID", txtID.Text);
                    int rows = cmd.ExecuteNonQuery();
                    lblResult10.Text = rows + " row(s) updated.";
                }
            }
            LoadGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtID.Text))
            {
                lblResult10.Text = "Select a record to delete.";
                return;
            }
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string sql = "DELETE FROM Student WHERE StudentID=@ID";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", txtID.Text);
                    int rows = cmd.ExecuteNonQuery();
                    lblResult10.Text = rows + " row(s) deleted.";
                }
            }
            LoadGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            txtID.Text = row.Cells[1].Text;
            txtName10.Text = row.Cells[2].Text;
            txtAge10.Text = row.Cells[3].Text;
        }
    }
}
