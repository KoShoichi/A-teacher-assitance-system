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
public partial class Admin_AddStudyInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from Course");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into StudyInfo(Name,Contents,CourseName,CourseId)values('" + txtname.Text + "','" + txtcontents.Value + "','"+this.DropDownList1.SelectedItem.Text+"','"+DropDownList1.SelectedValue+"')");
        Alert.AlertAndRedirect("添加成功", "StudyManger.aspx");
    }
}
