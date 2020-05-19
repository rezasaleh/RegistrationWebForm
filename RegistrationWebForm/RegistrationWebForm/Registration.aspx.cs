using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationWebForm
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnterInfoButton_OnClick(object sender, EventArgs e)
        {
            //this.Response.Redirect("RegistrationResult.aspx");
            if (Page.IsValid)
            {
                //this.Response.Redirect("RegistrationResult.aspx");

                Session["firstName"] = Server.HtmlEncode(firstNameTextBox.Text);
                Session["lastName"] = Server.HtmlEncode(lastNameTextBox.Text);
                Session["address"] = Server.HtmlEncode(addressTextBox.Text);
                Session["city"] = Server.HtmlEncode(cityTextBox.Text);
                Session["stateOrProvince"] = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                Session["zipCode"] = Server.HtmlEncode(zipCodeTextBox.Text);
                Session["country"] = Server.HtmlEncode(countryTextBox.Text);

                this.Response.Redirect("RegistrationResuslt.aspx");
            }
        }
    }
}