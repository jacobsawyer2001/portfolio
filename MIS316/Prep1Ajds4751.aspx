<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Prep1Ajds4751.aspx.cs" Inherits="MIS316_Prep1Ajds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
        +<asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
        =<asp:Label ID="lblSum" runat="server"></asp:Label>
        <br />
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
    </p>
    <p>
    </p>
</asp:Content>

