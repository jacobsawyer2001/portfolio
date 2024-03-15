using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep2Bjds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProcess_Click(object sender, EventArgs e)
    {
        int intValueFromUser = 0;
        intValueFromUser = Convert.ToInt32(txtNumber.Text);
        lblResults.Text = "";
        for (int i = 2; i <= 10; i++)
        {
            if (IsMultipleOf(intValueFromUser, i) == true)
            {
                lblResults.Text += txtNumber.Text + " is a multiple of " + i.ToString() + "<br>";
            }
        }

        if (lblResults.Text == "")
        {
            lblResults.Text = txtNumber.Text + " is not a multiple of any numbers from 2-10.";
        }    
    }

    protected bool IsMultipleOf(int intNumberToTest, int intRoot)
    {
        bool blnIsMultipleOf = false;
        if (intNumberToTest % intRoot == 0)
        {
            blnIsMultipleOf = true;
        }

        return blnIsMultipleOf;
    }
}