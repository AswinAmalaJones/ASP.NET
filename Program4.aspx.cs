using System;

namespace program4
{
    public partial class Program4 : System.Web.UI.Page
    {
        protected void btnStyle_Click(object sender, EventArgs e)
        {
            lblStyledText.ForeColor = System.Drawing.Color.FromName(ddlColors.SelectedValue);
            lblStyledText.Font.Bold = chkBold.Checked;
            lblStyledText.Font.Size = new System.Web.UI.WebControls.FontUnit(
                Convert.ToInt32(rblSize.SelectedValue)
            );
        }
    }
}
