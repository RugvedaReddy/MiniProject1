using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorsDetails
{
    public partial class Check_OutPage : System.Web.UI.Page
    {
        VisitorsDetailsEntities1 db = new VisitorsDetailsEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {


                var data = (from t in db.VisitorsInfoes

                            where t.Status == "Signed In"
                            select new
                            {
                                id = t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.IDType,
                                ID_Num = t.IDNum
                            }).ToList();


                GridView1.DataSource = data;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //THIS IS FOR SEARCH BY ID
            if (!string.IsNullOrEmpty(txtVisitors.Text))

            {
                int id = int.Parse(txtVisitors.Text);
                var data = (from t in db.VisitorsInfoes

                            where t.Id == id && t.Status == "Signed In"
                            select new
                            {
                                id=t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.IDType,
                                ID_Num = t.IDNum
                            }).ToList();


                GridView1.DataSource = data;
                GridView1.DataBind();

            }
            else
            {
                var data = (from t in db.VisitorsInfoes

                            where t.Status == "Signed In"
                            select new
                            {
                                id=t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.IDType,
                                ID_Num = t.IDNum
                            }).ToList();


                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //THIS IS FOR SEARCH BY NAME
            if (!string.IsNullOrEmpty(txtVisitors.Text))

            {
                string name = txtVisitors.Text;
                var data = (from t in db.VisitorsInfoes

                            where (t.FirstName == name||t.LastName==name) && t.Status == "Signed In"
                            select new
                            {
                                id=t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.IDType,
                                ID_Num = t.IDNum
                            }).ToList();


                GridView1.DataSource = data;
                GridView1.DataBind();

            }
            else
            {
                var data = (from t in db.VisitorsInfoes

                            where t.Status == "Signed In"
                            select new
                            {
                                id=t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.IDType,
                                ID_Num = t.IDNum
                            }).ToList();


                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void b3_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            Response.Write(r.Cells[0].Text + "  ,  " + r.Cells[1].Text + "  ,  " + r.Cells[2].Text + "  ,  " + r.Cells[3].Text);
            //string id = r.Cells[4].Text;
            int id = int.Parse(r.Cells[1].Text);

            var olddata = (from t in db.VisitorsInfoes where t.Id==id  && t.Status == "Signed In" select t).SingleOrDefault();
            olddata.Status = "Signed Out";
            // olddata.ID_Num = idnum;
            olddata.CheckInTime = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView1.DataBind();
        }
    }
}