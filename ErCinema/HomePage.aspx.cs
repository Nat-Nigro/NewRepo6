using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ErCinema
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionStringDb"].ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(connectionString);
            string selectedValue = DropDownList2.SelectedValue;

            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandText = "INSERT INTO CineMax(Nome, Cognome, SalaNord, SalaSud, SalaEst, Ridotto ) " +
                    "values (@Nome, @Cognome, @SalaNord, @SalaSud, @SalaSud, @SalaEst, @Ridotto)";

                cmd.Parameters.AddWithValue("@Nome", Nome.Text);
                cmd.Parameters.AddWithValue("@Cognome", Cognome.Text);
                cmd.Parameters.AddWithValue("@SalaNord", selectedValue == "Nord" ? true : false);
                cmd.Parameters.AddWithValue("@SalaSud", selectedValue == "Surd" ? true : false);
                cmd.Parameters.AddWithValue("@SalaEst", selectedValue == "Est" ? true : false);
                cmd.Parameters.AddWithValue("@Ridotto", CheckBox1.Checked);

                cmd.ExecuteNonQuery();

                Response.Write("Ciao");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Close();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}