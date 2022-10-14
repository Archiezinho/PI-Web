﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Happy_Mind.classes
{
    public class psicologo
    {
        public int id;
        public string nome, email, descricao, imgPerfil, senha;
        public decimal cpf, telefone, cfp, nota;

        public void construtor(int idC, string nomeC, decimal cpfC, string emailC, decimal telefoneC, decimal cfpC, string descricaoC, decimal notaC, string imgPerfilC, string senhaC)
        {
            id = idC;
            nome = nomeC;
            email = emailC;
            descricao = descricaoC;
            imgPerfil = imgPerfilC;
            senha = senhaC;
            cpf = cpfC;
            telefone = telefoneC;
            cfp = cfpC;
            nota = notaC;
        }

        SqlConnection conexao = new SqlConnection();
        //ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString()

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into psicologo values(" + nome + "," + cpf + "," + email + "," + telefone + "," + cfp + "," + descricao + "," + nota + "," + imgPerfil + "," + senha + ")";
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

        public string selecionarComNome(string nome)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from psicologo where nome = " + nome;
                //cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    leitor.Read();
                    construtor(leitor.GetInt32(0), leitor.GetString(1), leitor.GetDecimal(2), leitor.GetString(3), leitor.GetDecimal(4), leitor.GetDecimal(5), leitor.GetString(6), leitor.GetDecimal(7), leitor.GetString(8), leitor.GetString(9));
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