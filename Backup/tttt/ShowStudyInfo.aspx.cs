using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class ShowStudyInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from StudyInfo where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

               Label1.Text = dr["Name"].ToString();
             DIV1.InnerHtml = dr["Contents"].ToString();

            }
        }
    }
}
