using OxcoderBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Admin
{
    public partial class Admin_Challenge : System.Web.UI.Page
    {
        private OxcoderIBL.SearchChallengeIBL User = new OxcoderBL.SearchChallengeBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetBind();
            }
        }
        private void SetBind()
        {
            rpt_Challenge.DataSource = User.Search(0,5);
            Page.DataBind();
        }
    }
}