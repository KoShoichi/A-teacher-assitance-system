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

public partial class Admin_AddZuoYe : System.Web.UI.Page
{
    public string DownPath;
    public string daan;
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindClass();
        }
    }
    private void BindClass()
    {

        ddClass.DataSource = data.GetDataReader("select * from Course");
        ddClass.DataTextField = "name";
        ddClass.DataValueField = "id";
        ddClass.DataBind();


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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string Sname = txtTitle.Text;

        string SPath = pic.Text;
        string STeacher = Session["User"].ToString();

        int SClassId = int.Parse(ddClass.SelectedValue);
        string SClassName = ddClass.SelectedItem.Text;
        string sds = txtDs.Text;
        DateTime Saddtime = DateTime.Now;

        string daanpath = TextBox1.Text;

        data.RunSql("insert into zuoye(danPath,SClassId,Sname,SClassName,SPath,STeacher,Saddtime,SDs) values('" + daanpath + "'," + SClassId + ",'" + Sname + "','" + SClassName + "','" + SPath + "','" + STeacher + "','" + Saddtime + "','" + sds + "')");
        Alert.AlertAndRedirect("发布作业成功！", "ZuoyeList.aspx");
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
