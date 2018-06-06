using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProveedorWeb {
    public partial class _CategoriaServicio : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Label1_DataBound(object sender, EventArgs e)
        {
            SqlDataSource2.DataBind();
        }
    }
}