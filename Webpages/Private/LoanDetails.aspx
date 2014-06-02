<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/Templates/Site.Master" AutoEventWireup="true" CodeBehind="LoanDetails.aspx.cs" Inherits="MortgageUnderwritingSystem.Webpages.Private.LoanDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Loan Details for Loan Number 123456
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="2" cellspacing="2" border="0" style="width:100%" >
        <tr>
        <td colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:10%">&nbsp;</td>
            <td align="right"><asp:Label ID="Label1" runat="server" Text="Loan Amount:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtLoanAmount" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label2" runat="server" Text="Interest Rate:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtInterestRate" runat="server"></asp:TextBox>
            </td>
            <td style="width:10%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label3" runat="server" Text="P&I Payment:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtPnI" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label4" runat="server" Text="Proposed Taxes:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtTaxes" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label5" runat="server" Text="Proposed Housing Expense:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label6" runat="server" Text="Other Monthly Debt:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label7" runat="server" Text="Total Housing Expense:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label8" runat="server" Text="DTI Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label9" runat="server" Text="TDTI Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label10" runat="server" Text="LTV Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label11" runat="server" Text="CTLV Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Calculate Ratios" CssClass="lodButton" Width="120px"/></td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Save" CssClass="lodButton" Width="120px"/>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
