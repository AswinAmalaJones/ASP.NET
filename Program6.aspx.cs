using System;

namespace program6
{
    public partial class Program6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtDate.Text = DateTime.Now.ToShortDateString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fuFile.HasFile)
            {
                string path = Server.MapPath("~/Uploads/") + fuFile.FileName;
                fuFile.SaveAs(path);
                lblMessage.Text = "Date: " + txtDate.Text + " | File saved at: " + path;
            }
            else
            {
                lblMessage.Text = "Please select a file.";
            }
        }
    }
}
