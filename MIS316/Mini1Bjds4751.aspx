<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejds4751.master" AutoEventWireup="true" CodeFile="Mini1Bjds4751.aspx.cs" Inherits="MIS316_Mini1Bjds4751" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Crispy Circles Online Ordering Tool</h2>
    <asp:Panel ID="pnlOrderOptions" runat="server">
        <table>
            <tr>
                <td class="auto-style4">Your Name</td>
                <td>
                    <asp:TextBox ID="txtCustomerName" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtCustomerName" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">How Many Bagels?</td>
                <td>
                    <asp:TextBox ID="txtNumberOfBagels" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNumberOfBagels" runat="server" ControlToValidate="txtNumberOfBagels" Display="Dynamic" ErrorMessage="*Number of bagels is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvNumberOfBagels" runat="server" ControlToValidate="txtNumberOfBagels" Display="Dynamic" ErrorMessage="*Must be between 1 and 25" ForeColor="Red" SetFocusOnError="True" MaximumValue="25" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:RadioButton ID="rbDineIn" runat="server" GroupName="dinein" Text="Dine-In (7% tax)" />
        <br />
        <asp:RadioButton ID="rbCarryOut" runat="server" GroupName="dinein" Text="Carry Out" Checked="True" />
        <br />
        <br />
        <asp:Button ID="btnStartOrder" runat="server" Text="Start Order" OnClick="btnStartOrder_Click" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="pnlBagelOptions" runat="server" Visible="False">
        <table>
            <tr>
                <td class="auto-style1"><strong>Order for</strong></td>
                <td class="auto-style1">
                    <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Order Type</strong></td>
                <td>
                    <asp:Label ID="lblOrderType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Bagel Quantity</strong></td>
                <td>
                    <asp:Label ID="lblNumberOfBagels" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Base Price</strong></td>
                <td>$2.00</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Bagel Type</strong></td>
                <td class="auto-style9">
                    <asp:RadioButton ID="rbPlain" runat="server" Checked="True" GroupName="type" Text="Plain" />
                    <asp:RadioButton ID="rbWholeWheat" runat="server" GroupName="type" Text="Whole Wheat (adds $1.00 each)" />
                    <asp:RadioButton ID="rbEverything" runat="server" GroupName="type" Text="Everything (adds $1.50 each)" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Extras</strong></td>
                <td>
                    <asp:CheckBox ID="cbToasted" runat="server" Text="Toasted (adds $0.50 each)" />
                    &nbsp;<asp:CheckBox ID="cbCreamCheese" runat="server" Text="Cream Cheese (adds $1.00 each)" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong></strong></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Payment Type</strong></td>
                <td>
                    <asp:RadioButton ID="rbCash" runat="server" Checked="True" GroupName="payment" Text="Cash" />
                    <asp:RadioButton ID="rbCredit" runat="server" GroupName="payment" Text="Credit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Dine-In Tax?</strong></td>
                <td>
                    <asp:Label ID="lblDineInTax" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnFinishOrder" runat="server" Text="Finish Order" OnClick="btnFinishOrder_Click" />
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="pnlOrderDetails" runat="server" Visible="False">
            <asp:Label ID="lblOrderDetails" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnNextCustomer" runat="server" Text="Next Customer" OnClick="btnNextCustomer_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
    </asp:Panel>
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
    <p>
    </p>
    <p>
    </p>
</asp:Content>

