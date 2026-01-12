using System;

public partial class Program1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblInfo.Text =
            "This web application is running on: " +
            Request.Browser.Browser + " " +
            Request.Browser.Version +
            "<br />Server software: ASP.NET using Visual Studio 2019" +
            "<br />Tools used: Visual Studio, .NET Framework, IIS Express.";
    }
}
