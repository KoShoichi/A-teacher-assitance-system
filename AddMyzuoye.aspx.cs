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
public partial class AddMyzuoye : System.Web.UI.Page
{
    public string DownPath;
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Getshijuan();
        }
    }


    private void Getshijuan()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from zuoye where id=" + id);
        dr.Read();
        txtTitle.Text = dr["Sname"].ToString();

        //HyperLink1.NavigateUrl = dr["SPath"].ToString();

        //Label3.Text= dr["SkemuName"].ToString();

        //student.Text = dr["Student"].ToString();
        txtDs.Text = dr["SDs"].ToString();
        //txttime.Text = dr["Sktime"].ToString();
        Label4.Text = dr["SClassName"].ToString();
        Label6.Text = dr["SClassId"].ToString();
        //Label5.Text = dr["Skemu"].ToString();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        string Sname = txtTitle.Text;

        string SPath = pic.Text;
        string Student = Session["User"].ToString();

        //int Skemu = int.Parse(Label5.Text);



        int SClassId = int.Parse(Label6.Text);
        string SClassName = Label4.Text;

        //string SkemuName = Label3.Text;
        string sds = txtDs.Text;


        DateTime Saddtime = DateTime.Now;
        data.RunSql("insert into TJzuoye(id,SClassId,Sname,SClassName,SPath,Student,Saddtime,SDs) values(" + id + "," + SClassId + ",'" + Sname + "','" + SClassName + "','" + SPath + "','" + Student + "','" + Saddtime + "','" + sds + "')");
        Alert.AlertAndRedirect("提交作业成功！", "Mychenji.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
    }



}