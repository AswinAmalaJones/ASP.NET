using System;

public partial class Program6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set current date in textbox on first load
            txtDate.Text = DateTime.Now.ToShortDateString();
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        // Update textbox when calendar date is selected
        txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (fuFile.HasFile)
        {
            // Save uploaded file to "Uploads" folder
            string path = Server.MapPath("~/Uploads/") + fuFile.FileName;
            fuFile.SaveAs(path);

            // Show confirmation message
            lblMessage.Text = "Date: " + txtDate.Text + " | File saved at: " + path;
        }
        else
        {
            lblMessage.Text = "Please select a file.";
        }
    }
}
