using System;

public partial class Program3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Optional: code that runs on page load
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        lbloutput.Text = "You entered: " + txtinput.Text;
    }
}
