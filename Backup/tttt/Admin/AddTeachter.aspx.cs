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

public partial class Admin_AddTeachter : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
          
        }
    }
    /// <summary>
    /// 绑定专业
    /// </summary>
    private void Type()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from  ZhuanYeInfo  ");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into Teachter(Pwd,Name,Sex,zhuanye,Ds)values('" + TextBox1.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtds.Text + "')");

        Alert.AlertAndRedirect("添加成功！", "TeachterManger.aspx");
    }
    protected void txtds_TextChanged(object sender, EventArgs e)
    {

    }
  
}
