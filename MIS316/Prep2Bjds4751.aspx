<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Prep2Bjds4751.aspx.cs" Inherits="MIS316_Prep2Bjds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Multiple of 2-10?</h1>
    <p>
        Enter a Number:
        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvInput" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvInput" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="*enter a whole number greater than 10." ForeColor="Red" MaximumValue="999999999" MinimumValue="11" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        <asp:Button ID="btnProcess" runat="server" Text="Process" OnClick="btnProcess_Click" />
    </p>
    <p>
        <asp:Label ID="lblResults" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

