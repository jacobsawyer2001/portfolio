using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Mini1Ajds4751 : System.Web.UI.Page
{
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
            {
            //Declare variables 
            decimal Num1 = 0m;
            decimal Num2 = 0m;
            decimal Sum = 0m;

            //Store user input in the variables
            Num1 = Convert.ToDecimal(txtNum1.Text);
            Num2 = Convert.ToDecimal(txtNum2.Text);

            //Add the numbers
            Sum = Num1 + Num2;

            //Output sum
            lblSumResult.Text = "The sum is " + Convert.ToString(Sum);
            }
        catch (Exception)
            {
            //Remind users to enter only numbers if they do otherwise
            lblSumResult.Text = "Please enter only numbers.";
            }
    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        try
        {
            //Declare variables 
            decimal Num1 = 0m;
            decimal Num2 = 0m;
            decimal Diff = 0m;

            //Store user input in the variables
            Num1 = Convert.ToDecimal(txtNum1.Text);
            Num2 = Convert.ToDecimal(txtNum2.Text);

            //Subtract the numbers
            Diff = Num1 - Num2;

            //Output difference
            lblDiffResult.Text = "The difference is " + Convert.ToString(Diff);
        }
        catch (Exception)
        {
            //Remind users to enter only numbers if they do otherwise
            lblDiffResult.Text = "Please enter only numbers.";
        }
    }

    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        try
        {
            //Declare variables 
            decimal Num1 = 0m;
            decimal Num2 = 0m;
            decimal Prod = 0m;

            //Store user input in the variables
            Num1 = Convert.ToDecimal(txtNum1.Text);
            Num2 = Convert.ToDecimal(txtNum2.Text);

            //Multiply the numbers
            Prod = Num1 * Num2;

            //Output product
            lblProdResult.Text = "The product is " + Convert.ToString(Prod);
        }
        catch (Exception)
        {
            //Remind users to enter only numbers if they do otherwise
            lblProdResult.Text = "Please enter only numbers.";
        }
    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        try
        {
            //Declare variables 
            decimal Num1 = 0m;
            decimal Num2 = 0m;
            decimal Quo = 0m;

            //Store user input in the variables
            Num1 = Convert.ToDecimal(txtNum1.Text);
            Num2 = Convert.ToDecimal(txtNum2.Text);

            //Divide the numbers
            Quo = Num1 / Num2;

            //Output quotient
            lblQuotResult.Text = "The quotient is " + Convert.ToString(Quo);
        }
        catch(DivideByZeroException)
        {
            lblQuotResult.Text = "Hmmmm, even the math gods are still trying to figure out this one!";
        }
        catch (Exception)
        {
            //Remind users to enter only numbers if they do otherwise
            lblQuotResult.Text = "Please enter only numbers.";
        }
    }

    

    protected void btnCalcAllValues_Click(object sender, EventArgs e)
    {
        //Call all methods associated with each individual operations to calculate all 
        btnAdd_Click(sender, e);
        btnSubtract_Click(sender, e);
        btnMultiply_Click(sender, e);
        btnDivide_Click(sender, e);
    }

    protected void btnResetAllValues_Click(object sender, EventArgs e)
    {
        //clear all values currently displayed in both input textboxes and output labels
        txtNum1.Text = string.Empty;
        txtNum2.Text = string.Empty;
        lblSumResult.Text = string.Empty;
        lblDiffResult.Text = string.Empty;
        lblProdResult.Text = string.Empty;
        lblQuotResult.Text = string.Empty;

    }
}