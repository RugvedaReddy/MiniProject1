using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorsDetails
{
    public partial class VisitorIn : System.Web.UI.Page
    {
        VisitorsDetailsEntities1 db = new VisitorsDetailsEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string fname = txtFirstName.Text;
            string lname = txtLastName.Text;
            string company = txtCompany.Text;
            string visiting = txtVisiting.Text;
            string ID = txtIDType.Text;
            string IDNo = txtIDNum.Text;
            string vehicle = txtVehicleType.Text;
           // if(string.IsNullOrEmpty(vehicle)||string.IsNullOrWhiteSpace(vehicle))
            //{
                vehicle = "NULL";
           // }
            string ContactNo = txtContactNumber.Text;
            string Purpose = txtPurposeOfVisit.Text;
            string status = "Signed In";
            DateTime CheckIn = DateTime.Now;

            VisitorsInfo VI = new VisitorsInfo();
            VI.FirstName = fname;
            VI.LastName = lname;
            VI.Company = company;
            VI.Visiting = visiting;
            VI.IDType = ID;
            VI.IDNum = IDNo;
            VI.VehicleNum = vehicle;
            VI.ContactNum = ContactNo;
            VI.PurposeOfVisit = Purpose;
            VI.Status = status;
            VI.CheckInTime = CheckIn;
            db.VisitorsInfoes.Add(VI);
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("The visitor's details have been saved successfully with visitor id:" + VI.Id);
            else
                Response.Write("VISITOR'S DETAILS HAVE NOT BEEN SAVED");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}