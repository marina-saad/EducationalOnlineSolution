using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationalOnlineSolution
{
    public partial class OnlineEducation : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetCategories(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            
            SqlCommand cmdzs = new SqlCommand("SELECT MAX (Id) as max_Categories_id FROM Categories ", con);
            cmdzs.CommandType = CommandType.Text;
            con.Open();
            string id = cmdzs.ExecuteScalar().ToString();
            SqlCommand cmd = new SqlCommand("SELECT Category_Name from Categories;", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            StringBuilder sb = new StringBuilder();
            int IId = Int32.Parse(id);

            

        }
       

    }
}