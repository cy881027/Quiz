using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz {
    public partial class Quiz20210511_1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            string s_ID = "";
            string s_Name = "";
            
            s_Name = (string)Session["Name"];
            Label1.Text = s_ID + "</br>" + s_Name;
            if(Session["ID"] != null)
            {
                s_ID = (string)Session["ID"];
                Label1.Text = s_ID;
            }
            else
            {
                Label1.Text = "沒有東西啦qq";
            }
        }
    }
}