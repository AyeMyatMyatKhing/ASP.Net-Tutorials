using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Services.User;

namespace SampleFrame.Views.User
{
    public partial class User : System.Web.UI.Page
    {
        UserServices user = new UserServices();

        protected void Page_Load(object sender, EventArgs e)
        {
            user.FillDate();
        }
    }
}