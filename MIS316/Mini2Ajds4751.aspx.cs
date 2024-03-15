using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mini2Ajds4751 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        string FirstName = txtFirstName.Text;
        string LastName = txtLastName.Text;
        string Major = ddlMajors.SelectedValue;

        pnlPersonalInfo.Visible = false;
        pnlCourseInfo.Visible = true;
        lblPersonalInfo.Text = LastName + ", " + FirstName + " " + Major;


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        pnlAddNewCourse.Visible = false;
        
        string AddedCourse = txtCoursePrefix.Text.ToUpper() + " " + txtCourseNumber.Text + " (" + ddlLetterGrades.SelectedItem + ")";
        ListItem liAddedCourse = new ListItem(AddedCourse, ddlLetterGrades.SelectedValue);
        rblAddedCourses.Items.Add(liAddedCourse);
        
        txtCoursePrefix.Text = string.Empty;
        txtCourseNumber.Text = string.Empty;
        ddlLetterGrades.SelectedIndex = 0;

        decimal totalGPA = 0m;
        foreach (ListItem liCourse in rblAddedCourses.Items)
        {
            decimal courseGrade = Convert.ToDecimal(liCourse.Value);
            totalGPA += courseGrade;
        }
        decimal currentGPA = totalGPA / rblAddedCourses.Items.Count;
        lblCurrentGPA.Text = currentGPA.ToString("0.00");
        lblNumberOfCourses.Text = rblAddedCourses.Items.Count.ToString();
        int credits = rblAddedCourses.Items.Count * 3;
        lblTotalCredits.Text = credits.ToString();
    }

    protected void lbAddNewCourse_Click(object sender, EventArgs e)
    {
        pnlAddNewCourse.Visible = true;
    }

    protected void rblAddedCourses_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRemoveSelected.Visible = true;
    }

    protected void btnRemoveSelected_Click(object sender, EventArgs e)
    {
        btnRemoveSelected.Visible = false;
        rblAddedCourses.Items.RemoveAt(rblAddedCourses.SelectedIndex);
        try
        {
            decimal totalGPA = 0m;
            foreach (ListItem liCourse in rblAddedCourses.Items)
            {
                decimal courseGrade = Convert.ToDecimal(liCourse.Value);
                totalGPA += courseGrade;
            }
            decimal currentGPA = totalGPA / rblAddedCourses.Items.Count;
            lblCurrentGPA.Text = currentGPA.ToString("0.00");
            lblNumberOfCourses.Text = rblAddedCourses.Items.Count.ToString();
            int credits = rblAddedCourses.Items.Count * 3;
            lblTotalCredits.Text = credits.ToString();
        }
        catch (DivideByZeroException)
        {
            lblNumberOfCourses.Text = "0";
            lblCurrentGPA.Text = "0.00";
            lblTotalCredits.Text = "0";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        pnlAddNewCourse.Visible = false;
        txtCoursePrefix.Text = string.Empty;
        txtCourseNumber.Text = string.Empty;
        ddlLetterGrades.SelectedIndex = 0;
    }

    protected void lbStartOver_Click(object sender, EventArgs e)
    {
        pnlPersonalInfo.Visible = true;
        pnlAddNewCourse.Visible = false;
        pnlCourseInfo.Visible = false;
        txtCoursePrefix.Text = string.Empty;
        txtCourseNumber.Text = string.Empty;
        ddlLetterGrades.SelectedIndex = 0;
        rblAddedCourses.Items.Clear();
        txtFirstName.Text = string.Empty;
        txtLastName.Text = string.Empty;
        ddlMajors.SelectedIndex = 0;
        lblNumberOfCourses.Text = "0";
        lblCurrentGPA.Text = "0.00";
        lblTotalCredits.Text = "0";

    }
}