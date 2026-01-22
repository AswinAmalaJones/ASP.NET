public partial class Program2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string name = Request.Form["name"];
            Response.Write("Hello " + name);
        }
