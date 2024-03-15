using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep2Ajds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rblColors_SelectedIndexChanged(object sender, EventArgs e)
    {
        //make the remove button visible upon selection of an option
        btnRemoveSelected.Visible = true;
    }

    protected void btnRemoveSelected_Click(object sender, EventArgs e)
    {
        rblColors.Items.RemoveAt(rblColors.SelectedIndex);
        btnRemoveSelected.Visible = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //store selection as all-lowercase string (to account for all-caps input
        string strNewColor = txtNewColor.Text.ToLower();

        //capitalize first letter of the new color to avoid counting "Black" and "black" as two separate colors
        //code courtesy of https://linuxhint.com/capitalize-first-letter-of-string-csharp/#2
        strNewColor = char.ToUpper(strNewColor[0]) + strNewColor.Substring(1);

        //obviously best to format the user-inputted string before processing it through the loops

        //loop through existing colors
        bool blnColorAlreadyExists = false;
        foreach (ListItem liColor in rblColors.Items)
        {
            if (liColor.Text == strNewColor)
            {
                blnColorAlreadyExists = true;
            }
        }

        //add new color if not already existing
        if (blnColorAlreadyExists == true)
        {
            lblError.Text = "This color already exists!";
        }
        else
        {
            lblError.Text = "";

            rblColors.Items.Add(strNewColor);
            txtNewColor.Text = "";

            //loop through colors to determine number of primary, secondary, and other colors
            int intPrimaryCount = 0;
            int intSecondaryCount = 0;
            int intOtherCount = 0;
            foreach (ListItem liColor in rblColors.Items)
            { 
                if (liColor.Text.ToLower() == "red" || liColor.Text.ToLower() == "yellow" || liColor.Text.ToLower() == "blue")
                {
                    intPrimaryCount++;
                }
                else if (liColor.Text.ToLower() == "green" || liColor.Text.ToLower() == "orange" || liColor.Text.ToLower() == "purple")
                {
                    intSecondaryCount++;
                }
                else
                {
                    intOtherCount++;
                }
            }

            //output message
            lblMessage.Text = "The current list has:<br>";
            lblMessage.Text += intPrimaryCount.ToString() + " primary colors<br>";
            lblMessage.Text += intSecondaryCount.ToString() + " secondary colors<br>";
            lblMessage.Text += intOtherCount.ToString() + " other colors";
             
        }
    }
}