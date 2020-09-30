using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;

namespace EducationalOnlineSolution
{
    /// <summary>
    /// Summary description for CoursesList
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class CoursesList : System.Web.Services.WebService
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        protected DataTable Options(object sender, EventArgs e, int id)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmdzs = new SqlCommand("SELECT Course_Name FROM Courses where Id= " + id, con);
            cmdzs.CommandType = CommandType.Text;
            //return cmdzs;
            SqlDataAdapter sda = new SqlDataAdapter(cmdzs);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            StringBuilder sb = new StringBuilder();
            return dt;
           /* foreach (DataRow dr in dt.Rows)
            {
                sb.Append("< a  ><h5 >");
                sb.Append(dr.ToString());
                sb.Append("</h5></a>");
            }
           */
        }
    }
}
