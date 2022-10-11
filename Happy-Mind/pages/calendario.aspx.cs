using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Happy_Mind.pages
{
    public partial class calendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nome"] == null)
            {
                Response.Redirect("../default.html");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["data"] != null)
            {
                try
                {
                    SqlConnection conexao = new SqlConnection();
                    //ConfigurationManager.ConnectionStrings["stringDeComando"].ConnectionString.ToString()



                    SqlCommand cmd = new SqlCommand();



                    cmd.CommandText = "pi_consulta";

                    cmd.Connection = conexao;



                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("idPsicologo", Convert.ToInt32(Session["id"]));
                    cmd.Parameters.AddWithValue("nome", Session["nome"].ToString());
                    cmd.Parameters.AddWithValue("rg", Convert.ToDecimal(Session["rg"].ToString()));
                    cmd.Parameters.AddWithValue("email", Session["email"].ToString());
                    cmd.Parameters.AddWithValue("telefone", Convert.ToDecimal(Session["telefone"]));
                    cmd.Parameters.AddWithValue("dtNascimento", Convert.ToDateTime(Session["dtNascimento"]));
                    cmd.Parameters.AddWithValue("data", Convert.ToDateTime(Session["data"]));
                    cmd.Parameters.AddWithValue("hora", Session["hora"].ToString());

                    conexao.Open();
                    cmd.ExecuteNonQuery();
                    conexao.Close();

                    Session.Clear();

                    Response.Write("Consulta marcada!!");
                    Response.Redirect("../default.html");
                }
                catch (SqlException)
                {
                    Response.Write("Problemas com acesso ao banco de dados!!!");
                }
                catch (Exception)
                {
                    Response.Write("Erro desconhecido!!!");
                }
            }
            else
            {
                Response.Write("Escolha a data e horário de sua consulta");
            }
        }
    }
}