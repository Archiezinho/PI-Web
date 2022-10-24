using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;

namespace Happy_Mind.pages
{
    public partial class cadastro_consulta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["id"] == null)
           {
               Response.Redirect("../default.html");
           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["nome"] = Nomeconsulta.Text;
            Session["rg"] = RGconsulta.Text;
            Session["email"] = Emailconsulta.Text;
            Session["telefone"] = Telefoneconsulta.Text;
            Session["dtNascimento"] = DataNascimentoconsulta.Text;
            Response.Redirect("calendario.aspx");
        }
    }
}