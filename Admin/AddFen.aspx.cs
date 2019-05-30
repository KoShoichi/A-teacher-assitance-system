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
public partial class Admin_AddFen : System.Web.UI.Page
{
    public string DownPath;
    SqlHelper data = new SqlHelper();
    public string zuoyedananPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Getshijuan();

        }
    }


    private void Getshijuan()
    {
        int id = int.Parse(Request.QueryString["tid"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from TJzuoye where tid=" + id);
        dr.Read();
        txtTitle.Text = dr["Sname"].ToString();
        HyperLink1.NavigateUrl = "../uploads/" + dr["SPath"].ToString();
        student.Text = dr["Student"].ToString();
        ds.Text = dr["SDs"].ToString();
        ddClass.Text = dr["SClassName"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from zuoye where id=" + id);
        dr.Read();
        zuoyedananPath = dr["danPath"].ToString();
        data.RunSql("update TJzuoye set IsPinfen='1' where id=" + id);
        data.RunSql("insert into  ChengJi(daanPath,cj,UserName,ZyId,zyName)values('" + zuoyedananPath + "','" + TextBox1.Text + "','" + student.Text + "'," + id + ",'" + txtTitle.Text + "')");
        Alert.AlertAndRedirect("评分成功！查看成绩列表", "ChenJI.aspx");
    }

}