using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1Ajds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            //Declare the necessary variables
            decimal Num1 = 0m;
            decimal Num2 = 0m;
            decimal Sum = 0m;

            //Convert user input to decimal form so the application can add them
            Num1 = Convert.ToDecimal(txtNum1.Text);
            Num2 = Convert.ToDecimal(txtNum2.Text);

            //Calculate sum
            Sum = Num1 + Num2;

            //Output sum to string form so the application can display it as text
            lblSum.Text = "The sum is " + Convert.ToString(Sum);
        }

        catch (Exception)
        {
            lblSum.Text = "Please enter only numbers";
        }
    }
}