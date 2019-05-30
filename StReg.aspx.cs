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

public partial class StReg : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
            BinderClass();
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
    private void BinderClass()
    {

        DropDownList3.DataSource = data.GetDataReader("select * from  ClassInfo where ZhuanYeId='" + DropDownList2.SelectedValue + "'  ");
        DropDownList3.DataTextField = "Name";
        DropDownList3.DataValueField = "id";
        DropDownList3.DataBind();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into Student(Pwd,Name,Sex,zhuanye,Ds,BanJi)values('" + TextBox1.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtds.Text + "','" + DropDownList3.SelectedItem.Text + "')");

        Alert.AlertAndRedirect("注册成功！", "Login.aspx");
    }
    protected void txtds_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinderClass();
    }
}
