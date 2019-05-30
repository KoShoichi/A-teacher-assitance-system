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

public partial class Admin_Modify_ZuoYe : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from zuoye where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                txtTitle.Text = dr["Sname"].ToString();
                txtDs.Text = dr["SContent"].ToString();
                pic.Text = dr["SPath"].ToString();
                TextBox1.Text = dr["danPath"].ToString();

            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        data.RunSql("update zuoye set  Sname='" + txtTitle.Text + "', SContent='" + txtDs.Text + "',SPath='" + pic.Text + "',danPath='" + TextBox1.Text + "'   where id=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "ZuoyeList.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(File2, "../uploads/");
        this.Label3.Visible = true;
        this.Label3.Text = up.Resup[Convert.ToInt32(res)];
        TextBox1.Text = up.s;
    }
}
