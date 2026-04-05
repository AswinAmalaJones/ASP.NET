using System;

namespace program1
{
    public partial class Program3 : System.Web.UI.Page
    {
        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            lblResult.Text = "You entered: " + txtMessage.Text;
        }
    }
}
