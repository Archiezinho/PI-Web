using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Happy_Mind.pages
{
    public partial class calendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["mudarMes"].ToString() == "next")
                {
                    if (Session["mes"].ToString() == "janeiro")
                    {
                        mes.Text = "fevereiro";
                    }
                    else if (Session["mes"].ToString() == "fevereiro")
                    {
                        mes.Text = "março";
                    }
                    else if (Session["mes"].ToString() == "março")
                    {
                        mes.Text = "abril";
                    }
                    else if (Session["mes"].ToString() == "abril")
                    {
                        mes.Text = "maio";
                    }
                    else if (Session["mes"].ToString() == "maio")
                    {
                        mes.Text = "junho";
                    }
                    else if (Session["mes"].ToString() == "junho")
                    {
                        mes.Text = "julho";
                    }
                    else if (Session["mes"].ToString() == "julho")
                    {
                        mes.Text = "agosto";
                    }
                    else if (Session["mes"].ToString() == "agosto")
                    {
                        mes.Text = "setembro";
                    }
                    else if (Session["mes"].ToString() == "setembro")
                    {
                        mes.Text = "outubro";
                    }
                    else if (Session["mes"].ToString() == "outubro")
                    {
                        mes.Text = "novembro";
                    }
                    else if (Session["mes"].ToString() == "novembro")
                    {
                        mes.Text = "dezembro";
                    }
                    else if (Session["mes"].ToString() == "dezembro")
                    {
                        mes.Text = "janeiro";
                        ano.Text = Convert.ToString(Convert.ToInt32(ano.Text) + 1);
                    }
                }
                else if (Session["mudarMes"].ToString() == "prev")
                {
                    if (Session["mes"].ToString() == "janeiro")
                    {
                        mes.Text = "dezembro";
                        ano.Text = Convert.ToString(Convert.ToInt32(ano.Text) - 1);
                    }
                    else if (Session["mes"].ToString() == "fevereiro")
                    {
                        mes.Text = "janeiro";
                    }
                    else if (Session["mes"].ToString() == "março")
                    {
                        mes.Text = "fevereiro";
                    }
                    else if (Session["mes"].ToString() == "abril")
                    {
                        mes.Text = "março";
                    }
                    else if (Session["mes"].ToString() == "maio")
                    {
                        mes.Text = "abril";
                    }
                    else if (Session["mes"].ToString() == "junho")
                    {
                        mes.Text = "maio";
                    }
                    else if (Session["mes"].ToString() == "julho")
                    {
                        mes.Text = "junho";
                    }
                    else if (Session["mes"].ToString() == "agosto")
                    {
                        mes.Text = "julho";
                    }
                    else if (Session["mes"].ToString() == "setembro")
                    {
                        mes.Text = "agosto";
                    }
                    else if (Session["mes"].ToString() == "outubro")
                    {
                        mes.Text = "setembro";
                    }
                    else if (Session["mes"].ToString() == "novembro")
                    {
                        mes.Text = "outubro";
                    }
                    else if (Session["mes"].ToString() == "dezembro")
                    {
                        mes.Text = "novembro";
                    }
                }
            }
            catch (Exception)
            {

            }
            d1.CssClass = "dia";
            d2.CssClass = "dia";
            d3.CssClass = "dia";
            d4.CssClass = "dia";
            d5.CssClass = "dia";
            d6.CssClass = "dia";
            d7.CssClass = "dia";
            d8.CssClass = "dia";
            d9.CssClass = "dia";
            d10.CssClass = "dia";
            d11.CssClass = "dia";
            d12.CssClass = "dia";
            d13.CssClass = "dia";
            d14.CssClass = "dia";
            d15.CssClass = "dia";
            d16.CssClass = "dia";
            d17.CssClass = "dia";
            d18.CssClass = "dia";
            d19.CssClass = "dia";
            d20.CssClass = "dia";
            d21.CssClass = "dia";
            d22.CssClass = "dia";
            d23.CssClass = "dia";
            d24.CssClass = "dia";
            d25.CssClass = "dia";
            d26.CssClass = "dia";
            d27.CssClass = "dia";
            d28.CssClass = "dia";
            d29.CssClass = "dia";
            d30.CssClass = "dia";
            d31.CssClass = "dia";
            if (Convert.ToInt32(Session["dia"]) == 1)
            {
                d1.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 2)
            {
                d2.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 3)
            {
                d3.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 4)
            {
                d4.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 5)
            {
                d5.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 6)
            {
                d6.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 7)
            {
                d7.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 8)
            {
                d8.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 9)
            {
                d9.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 10)
            {
                d10.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 11)
            {
                d11.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 12)
            {
                d12.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 13)
            {
                d13.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 14)
            {
                d14.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 15)
            {
                d15.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 16)
            {
                d16.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 17)
            {
                d17.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 18)
            {
                d18.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 19)
            {
                d19.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 20)
            {
                d20.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 21)
            {
                d21.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 22)
            {
                d22.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 23)
            {
                d23.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 24)
            {
                d24.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 25)
            {
                d25.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 26)
            {
                d26.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 27)
            {
                d27.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 28)
            {
                d28.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 29)
            {
                d29.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 30)
            {
                d30.CssClass = "active";
            }
            else if (Convert.ToInt32(Session["dia"]) == 31)
            {
                d31.CssClass = "active";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
        }
        protected void d1_Click(object sender, EventArgs e)
        {
            Session["dia"] = "1";
            this.Page_Load(sender,e);
        }
        protected void d2_Click1(object sender, EventArgs e)
        {
            Session["dia"] = "2";
            this.Page_Load(sender, e);
        }

        protected void d3_Click(object sender, EventArgs e)
        {
            Session["dia"] = "3";
            this.Page_Load(sender, e);
        }

        protected void d4_Click(object sender, EventArgs e)
        {
            Session["dia"] = "4";
            this.Page_Load(sender, e);
        }

        protected void d5_Click(object sender, EventArgs e)
        {
            Session["dia"] = "5";
            this.Page_Load(sender, e);
        }

        protected void d6_Click(object sender, EventArgs e)
        {
            Session["dia"] = "6";
            this.Page_Load(sender, e);
        }

        protected void d7_Click(object sender, EventArgs e)
        {
            Session["dia"] = "7";
            this.Page_Load(sender, e);
        }

        protected void d8_Click(object sender, EventArgs e)
        {
            Session["dia"] = "8";
            this.Page_Load(sender, e);
        }

        protected void d9_Click(object sender, EventArgs e)
        {
            Session["dia"] = "9";
            this.Page_Load(sender, e);
        }

        protected void d10_Click(object sender, EventArgs e)
        {
            Session["dia"] = "10";
            this.Page_Load(sender, e);
        }

        protected void d11_Click(object sender, EventArgs e)
        {
            Session["dia"] = "11";
            this.Page_Load(sender, e);
        }

        protected void d12_Click(object sender, EventArgs e)
        {
            Session["dia"] = "12";
            this.Page_Load(sender, e);
        }

        protected void d13_Click(object sender, EventArgs e)
        {
            Session["dia"] = "13";
            this.Page_Load(sender, e);
        }

        protected void d14_Click(object sender, EventArgs e)
        {
            Session["dia"] = "14";
            this.Page_Load(sender, e);
        }

        protected void d15_Click(object sender, EventArgs e)
        {
            Session["dia"] = "15";
            this.Page_Load(sender, e);
        }

        protected void d16_Click(object sender, EventArgs e)
        {
            Session["dia"] = "16";
            this.Page_Load(sender, e);
        }

        protected void d17_Click(object sender, EventArgs e)
        {
            Session["dia"] = "17";
            this.Page_Load(sender, e);
        }

        protected void d18_Click(object sender, EventArgs e)
        {
            Session["dia"] = "18";
            this.Page_Load(sender, e);
        }

        protected void d19_Click(object sender, EventArgs e)
        {
            Session["dia"] = "19";
            this.Page_Load(sender, e);
        }

        protected void d20_Click(object sender, EventArgs e)
        {
            Session["dia"] = "20";
            this.Page_Load(sender, e);
        }

        protected void d21_Click(object sender, EventArgs e)
        {
            Session["dia"] = "21";
            this.Page_Load(sender, e);
        }

        protected void d22_Click(object sender, EventArgs e)
        {
            Session["dia"] = "22";
            this.Page_Load(sender, e);
        }

        protected void d23_Click(object sender, EventArgs e)
        {
            Session["dia"] = "23";
            this.Page_Load(sender, e);
        }

        protected void d24_Click(object sender, EventArgs e)
        {
            Session["dia"] = "24";
            this.Page_Load(sender, e);
        }

        protected void d25_Click(object sender, EventArgs e)
        {
            Session["dia"] = "25";
            this.Page_Load(sender, e);
        }

        protected void d26_Click(object sender, EventArgs e)
        {
            Session["dia"] = "26";
            this.Page_Load(sender, e);
        }

        protected void d27_Click(object sender, EventArgs e)
        {
            Session["dia"] = "27";
            this.Page_Load(sender, e);
        }

        protected void d28_Click(object sender, EventArgs e)
        {
            Session["dia"] = "28";
            this.Page_Load(sender, e);
        }

        protected void d29_Click(object sender, EventArgs e)
        {
            Session["dia"] = "29";
            this.Page_Load(sender, e);
        }

        protected void d30_Click(object sender, EventArgs e)
        {
            Session["dia"] = "30";
            this.Page_Load(sender, e);
        }

        protected void d31_Click(object sender, EventArgs e)
        {
            Session["dia"] = "31";
            this.Page_Load(sender, e);
        }

        protected void next_Click(object sender, EventArgs e)
        {
            Session["mes"] = mes.Text;
            Session["mudarMes"] = "next";
            this.Page_Load(sender, e);
        }

        protected void prev_Click(object sender, EventArgs e)
        {
            Session["mes"] = mes.Text;
            Session["mudarMes"] = "prev";
            this.Page_Load(sender, e);
        }
    }
}