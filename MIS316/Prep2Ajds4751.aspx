<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Prep2Ajds4751.aspx.cs" Inherits="MIS316_Prep2Ajds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1">Colors</h1>
    <table>
        <tr>
            <td style="vertical-align: top">
                <asp:RadioButtonList ID="rblColors" runat="server" AutoPostBack="True" BackColor="#CCCCCC" OnSelectedIndexChanged="rblColors_SelectedIndexChanged" RepeatColumns="2">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Purple</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btnRemoveSelected" runat="server" CausesValidation="False" OnClick="btnRemoveSelected_Click" Text="Remove Selected" Visible="False" />
            </td>
            <td class="auto-style2" style="vertical-align: top">Add new color: <asp:TextBox ID="txtNewColor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewColor" runat="server" ControlToValidate="txtNewColor" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

