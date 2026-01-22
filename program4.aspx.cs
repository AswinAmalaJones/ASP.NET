using System;
using System.Web.UI;

public partial class Program12 : System.Web.UI.Page
{
    protected void btnStyle_Click(object sender, EventArgs e)
    {
        // Apply selected color
        lblStyledText.ForeColor = System.Drawing.Color.FromName(ddlColors.SelectedValue);

        // Apply bold if checked
        lblStyledText.Font.Bold = chkBold.Checked;

        // Apply font size from RadioButtonList
        lblStyledText.Font.Size = new System.Web.UI.WebControls.FontUnit(
            Convert.ToInt32(rblSize.SelectedValue)
        );
    }
}
