using System;

public partial class MIS316_Mini1Bjds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnStartOrder_Click(object sender, EventArgs e)
    { 

        //Determine whether to add 7% tax and update labels accordingly
        if (rbDineIn.Checked)
        {
            lblDineInTax.Text = "Yes";
            lblOrderType.Text = "Dine-In";
        }
        else
        {
            lblDineInTax.Text = "No";
            lblOrderType.Text = "Carry Out";
        }

        //Hide first panel and show second panel and its labels
        pnlOrderOptions.Visible = false;
        pnlBagelOptions.Visible = true;
        pnlOrderDetails.Visible = false;
        lblCustomerName.Text = txtCustomerName.Text;
        lblNumberOfBagels.Text = txtNumberOfBagels.Text;

    }

    protected void btnFinishOrder_Click(object sender, EventArgs e)
    {
        //Define variables
        decimal quantity = Convert.ToDecimal(txtNumberOfBagels.Text);
        string orderType = "";
        string toasted = "";
        string bagelType = "";
        string bagelOrBagels = "Bagel";
        string creamCheese = "";
        string paymentMethod = "";
        decimal costPerBagel = 2.00m;
        decimal wholeWheatCost = 1.00m;
        decimal everythingCost = 1.50m;
        decimal toastedCost = 0.50m;
        decimal creamCheeseCost = 1.00m;
        decimal taxRate = 0.07m;
        decimal taxAmount = 0m;
        decimal subtotal = 0m;
        decimal totalCost = 0m;

        //Determine if more than one bagel is ordered (important for final output)
        if (quantity > 1)
        {
            bagelOrBagels = "Bagels";
        }

        //Add extra costs of non-plain options
        if (rbPlain.Checked)
            {
            bagelType = "Plain";
            }

        else if (rbWholeWheat.Checked)
        {
            costPerBagel += wholeWheatCost;
            bagelType = "Whole Wheat";
        }

        else if (rbEverything.Checked)
        {
            costPerBagel += everythingCost;
            bagelType = "Everything";
        }

        //Add extra costs of toasting and topping the bagels
        if (cbToasted.Checked)
        {
            costPerBagel += toastedCost;
            toasted = "Toasted";
        }
        if (cbCreamCheese.Checked)
        {
            costPerBagel += creamCheeseCost;
            creamCheese = " with Cream Cheese";
        }

        //Calculate subtotal
        subtotal = quantity * costPerBagel;

        //Add tax if applicable
        if (rbDineIn.Checked)
        {
            taxAmount = subtotal * taxRate;
            orderType = "Dine In";
        }

        else if (rbCarryOut.Checked)
        {
            taxAmount = 0;
            orderType = "Carry Out";
        }

        //Determine payment method
        if (rbCredit.Checked)
        {
            paymentMethod = "Credit";
        }
        else if (rbCash.Checked)
        {
            paymentMethod = "Cash";
        }

        totalCost = subtotal + taxAmount;

        //hide the options and show the order details
        pnlBagelOptions.Visible = false;
        pnlOrderDetails.Visible = true;

        //show order details
        lblOrderDetails.Text = orderType + " Order for " + txtCustomerName.Text + "<br/><br/>";
        lblOrderDetails.Text += Convert.ToString(quantity) + " " + toasted + " " + bagelType + " " + bagelOrBagels + " " + creamCheese + "<br/></br>";
        lblOrderDetails.Text += "Paying by " + paymentMethod + "<br/></br>";
        lblOrderDetails.Text += "Subtotal: " + subtotal.ToString("C") + " (" + costPerBagel.ToString("C") + " each) Tax: " + taxAmount.ToString("C") + "<br/>";
        lblOrderDetails.Text += "Total Due: <strong>" + totalCost.ToString("C") + "</strong>";
    }


    protected void btnNextCustomer_Click(object sender, EventArgs e)
    {
        //make the first panel visible
        pnlOrderOptions.Visible = true;
        pnlBagelOptions.Visible = false;
        pnlOrderDetails.Visible = false;

        //reset all inputs and selections to defaults
        txtCustomerName.Text = string.Empty;
        txtNumberOfBagels.Text = string.Empty;
        rbDineIn.Checked = false;
        rbCarryOut.Checked = true;
        rbPlain.Checked = true;
        rbWholeWheat.Checked = false;
        rbEverything.Checked = false;
        cbToasted.Checked = false;
        cbCreamCheese.Checked = false;
        rbCash.Checked = true;
        rbCredit.Checked = false;
    }
}