using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1Bjds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNameContinue_Click(object sender, EventArgs e)
    {
        //if no siblings, hide name panel and show only-child message
        if (rbSiblingsNo.Checked == true)
        {
            pnlName.Visible = false;
            lblMessage.Text = txtName.Text + " is an only child.";
        }

        //if siblings, hide name panel and show siblings panel
        else if (rbSiblingsYes.Checked == true)
        {
            pnlName.Visible = false;
            pnlNumberOfSiblings.Visible = true;
        }
    }

    protected void btnSiblingsContinue_Click(object sender, EventArgs e)
    {
        //show message about number of siblings
        pnlNumberOfSiblings.Visible = false;
        lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " siblings.";
    }
}