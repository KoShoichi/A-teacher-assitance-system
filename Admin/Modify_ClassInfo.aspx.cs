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

public partial class Admin_Modify_ClassInfo : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getxueyuan();
            SqlDataReader dr = data.GetDataReader("select * from ClassInfo where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                TextBox1.Text = dr["name"].ToString();

            }
        }
    }
    private void Getxueyuan()
    {

        DropDownList1.DataSource = data.GetDataReader("select * from  ZhuanYeInfo");
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();



    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        data.RunSql("update ClassInfo set  name='" + TextBox1.Text + "', ZhuanYeId='" + DropDownList1.SelectedValue + "',ZhuanYeName='" + DropDownList1.SelectedItem.Text + "'  where id=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "ClassManger.aspx");
    }
}
