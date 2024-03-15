<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Mini2Ajds4751.aspx.cs" Inherits="Mini2Ajds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Grade Summary System<br />
    </h1>
    <asp:Panel ID="pnlPersonalInfo" runat="server">
        <table>
            <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Major:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlMajors" runat="server" AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="(Information Technology)">IT</asp:ListItem>
                        <asp:ListItem Value="(Management Information Systems)">MIS</asp:ListItem>
                        <asp:ListItem Value="(Business Analytics)">BA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvMajor" runat="server" ControlToValidate="ddlMajors" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="Continue" />
    </asp:Panel>
    <asp:Panel ID="pnlCourseInfo" runat="server" Visible="False">
        <h3>
            <asp:Label ID="lblPersonalInfo" runat="server"></asp:Label>
        </h3>
        <br />
        <br />
        <table>
            <tr>
                <td class="auto-style3" style="vertical-align: top"><span class="auto-style2"><strong>Course History</strong></span> (<asp:LinkButton ID="lbAddNewCourse" runat="server" OnClick="lbAddNewCourse_Click">Add a New Course</asp:LinkButton>)<br />
                    <br />
                    <asp:RadioButtonList ID="rblAddedCourses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblAddedCourses_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" Visible="False" OnClick="btnRemoveSelected_Click" />
                    <br />
                    <br />
                    <span class="auto-style2"><strong>Summary</strong></span><br />
                    <table>
                        <tr>
                            <td>Number of Courses:</td>
                            <td>
                                <asp:Label ID="lblNumberOfCourses" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Current GPA:</td>
                            <td>
                                <asp:Label ID="lblCurrentGPA" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Total Credits:</td>
                            <td>
                                <asp:Label ID="lblTotalCredits" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    *assuming all courses are 3 credits<br />
                    <br />
                    <asp:LinkButton ID="lbStartOver" runat="server" OnClick="lbStartOver_Click">Start Over</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:Panel ID="pnlAddNewCourse" runat="server" BackColor="#FFFF99" Visible="False">
                    <table>
                        <tr>
                            <td>Course Prefix:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtCoursePrefix" runat="server" MaxLength="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCoursePrefix" runat="server" ControlToValidate="txtCoursePrefix" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="notcancel"></asp:RequiredFieldValidator>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Course Number:</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="txtCourseNumber" runat="server" MaxLength="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCourseNumber" runat="server" ControlToValidate="txtCourseNumber" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="notcancel"></asp:RequiredFieldValidator>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>Grade Earned:</td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="ddlLetterGrades" runat="server">
                                    <asp:ListItem Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="4.00">A</asp:ListItem>
                                    <asp:ListItem Value="3.67">A-</asp:ListItem>
                                    <asp:ListItem Value="3.33">B+</asp:ListItem>
                                    <asp:ListItem Value="3.00">B</asp:ListItem>
                                    <asp:ListItem Value="2.67">B-</asp:ListItem>
                                    <asp:ListItem Value="2.33">C+</asp:ListItem>
                                    <asp:ListItem Value="2.00">C</asp:ListItem>
                                    <asp:ListItem Value="1.67">C-</asp:ListItem>
                                    <asp:ListItem Value="1.33">D+</asp:ListItem>
                                    <asp:ListItem Value="1">D</asp:ListItem>
                                    <asp:ListItem Value="0.67">D-</asp:ListItem>
                                    <asp:ListItem Value="0">F</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvGradeEarned" runat="server" ControlToValidate="ddlLetterGrades" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="notcancel"></asp:RequiredFieldValidator>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="notcancel" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

