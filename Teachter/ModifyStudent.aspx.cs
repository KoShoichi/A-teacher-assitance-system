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
public partial class Admin_ModifyStudent : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
            BinderClass();
            GetArticle();

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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinderClass();
    }
    private void GetArticle()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Student where id=" + id);
        dr.Read();
        txtname.Text = dr["Name"].ToString();
        txtds.Text = dr["Ds"].ToString();
        DropDownList1.Items[0].Text = dr["Sex"].ToString();
        DropDownList2.Items[0].Text = dr["zhuanye"].ToString();

        DropDownList3.Items[0].Text = dr["BanJi"].ToString();


    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   Student set Name='" + txtname.Text + "',Ds='" + txtds.Text + "',Sex='" + DropDownList1.SelectedItem.Text + "', zhuanye='" + DropDownList2.SelectedItem.Text + "',BanJi='" + DropDownList3.SelectedItem.Text + "'  where id=" + id);

        Alert.AlertAndRedirect("修改成功！", "StManger.aspx");
    }
}
