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
public partial class Admin_Modify_NewsInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from News where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

              txtname.Text= dr["Name"].ToString();
              txtcontents.Value= dr["Contents"].ToString();

            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
 data.RunSql("update News set  Name='" + txtname.Text + "', Contents='" +txtcontents.Value + "'   where id=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "NewsManger.aspx");
    }
}
