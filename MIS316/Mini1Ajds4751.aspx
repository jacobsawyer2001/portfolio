<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Mini1Ajds4751.aspx.cs" Inherits="MIS316_Mini1Ajds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Enter two numbers below, one in each box:</p>
    <p>
        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
    </p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Them" Width="128px" />
        <asp:Label ID="lblSumResult" runat="server"></asp:Label>
    <p>
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract Them" OnClick="btnSubtract_Click" Width="127px" />
        <asp:Label ID="lblDiffResult" runat="server"></asp:Label>
    </p>
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply Them" Width="128px" OnClick="btnMultiply_Click" style="margin-bottom: 0px" />
        <asp:Label ID="lblProdResult" runat="server"></asp:Label>
    <br />
    <br />
        <asp:Button ID="btnDivide" runat="server" Text="Divide Them" OnClick="btnDivide_Click" Width="129px" />
    <asp:Label ID="lblQuotResult" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnCalcAllValues" runat="server" OnClick="btnCalcAllValues_Click" Text="Calculate All Values" />
    <p>
        <asp:Button ID="btnResetAllValues" runat="server" OnClick="btnResetAllValues_Click" Text="Reset All Values" />
    </p>
    </asp:Content>

