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
public partial class Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ibtnLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedValue == "学生")
        {

            chkUser();
        }
        if (DropDownList1.SelectedValue == "教师")
        {

            chkTeacUser();
        }
        else
        {
            ChkAdmin();
        }

    }
    private void ChkAdmin()
    {
        if (UserName.Text == "" && PassWord.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  [Admin] where Name='" + UserName.Text.Trim() + "'and Password='" + PassWord.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["User"] = dr["Name"].ToString();
                Session["UserId"] = dr["id"].ToString();
                Response.Redirect("Admin/Default.aspx");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }
  
    private void chkUser()
    {
        if (UserName.Text == "" && PassWord.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  [Student] where Name='" + UserName.Text.Trim() + "'and Pwd='" + PassWord.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["User"] = dr["Name"].ToString();
                Session["UserId"] = dr["id"].ToString();
                Response.Redirect("Default.aspx");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }

    private void chkTeacUser()
    {
        if (UserName.Text == "" && PassWord.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  [Teachter] where Name='" + UserName.Text.Trim() + "'and Pwd='" + PassWord.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["User"] = dr["Name"].ToString();
                Session["UserId"] = dr["id"].ToString();
                Response.Redirect("Teachter/Default.aspx");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("StReg.aspx");
    }
}
