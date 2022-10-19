using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Happy_Mind.classes
{
    public class consulta
    {
        private int idP;
        private string nome, email, dtNascimento, data, hora;
        private decimal rg, telefone;
        public string[] horas = new string[24];

        SqlConnection conexao = new SqlConnection();
        //ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString()

        public void construtor(int idPC, string nomeC,string emailC, string dtNascimentoC, string dataC, string horaC, decimal rgC, decimal telefoneC)
        {
            idP = idPC;
            nome = nomeC;
            email = emailC;
            dtNascimento = dtNascimentoC;
            data = dataC;
            hora = horaC;
            rg = rgC;
            telefone = telefoneC;
        }

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into consulta values(" + idP + "," + nome + "," + rg + "," + telefone + "," + email + "," + Convert.ToDateTime(dtNascimento) + "," + Convert.ToDateTime(data) + "," + hora + ")";
                //cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                cmd.ExecuteNonQuery();
                conexao.Close();

                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }
        public string selectComData(string dataS)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from where hora = "+ Convert.ToDateTime(dataS);
                //cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    int cont = 1;
                    while (leitor.Read())
                    {
                        horas[cont] = leitor.GetString(8);
                        cont++;
                    }
                }

                conexao.Close();

                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }
    }
}