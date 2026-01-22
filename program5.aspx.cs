using System;
using System.Text;
using System.Web.UI.WebControls;

public partial class Program5 : System.Web.UI.Page
{
    protected void btnShowSelections_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        sb.Append("Fruits: ");
        foreach (ListItem li in lstFruits.Items)
        {
            if (li.Selected)
                sb.Append(li.Text + ", ");
        }

        sb.Append(" | Hobbies: ");
        foreach (ListItem li in cbHobbies.Items)
        {
            if (li.Selected)
                sb.Append(li.Text + ", ");
        }

        lblSelections.Text = sb.ToString().TrimEnd(',', ' ');
    }
}
