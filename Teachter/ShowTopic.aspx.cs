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
public partial class ShowTopic : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");
            }
            else
            {
                BinderTopic();
                BinderReplay();
            }
        }
    }
    private void BinderReplay()
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Replay where TopicId=" + id);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }

    private void BinderTopic()
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Topic where id=" + id);
        dr.Read();
        Label1.Text = dr["Topic"].ToString();
        Label2.Text = dr["Addtime"].ToString();
        Label3.Text = dr["Contents"].ToString();
        Label4.Text = dr["AddUser"].ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());

        data.RunSql("insert into Replay(Replay,ReplayUser,TopicId)values('" + ArticleContent.Value + "','" + Session["User"].ToString() + "'," + id + ")");

        data.RunSql("update Topic set isReplay='1' where id=" + id);
        Alert.AlertAndRedirect("回复成功！", "ShowTopic.aspx?id=" + id);
        BinderTopic();
        BinderReplay();
    }
}
