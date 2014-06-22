<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/Templates/Site.Master" Theme="Summer" AutoEventWireup="true" CodeBehind="LoanDetails.aspx.cs" Inherits="MortgageUnderwritingSystem.Webpages.Private.LoanDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Loan Details for Loan Number 123456
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="2" cellspacing="2" border="0" style="width:100%" >
        <tr>
        <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:4%">&nbsp;</td>
            <td align="right" style="width:25%"><asp:Label ID="Label1" runat="server" Text="Primary Mortgage:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left" style="width:20%">
                <asp:TextBox ID="txt1stLoanAmount" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td style="width:2%">&nbsp;</td>
            <td align="right" style="width:25%"><asp:Label ID="Label2" runat="server" Text="Secondary Mortgage:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left" style="width:20%">
                <asp:TextBox ID="txt2ndtLoanAmount" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td style="width:4%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label16" runat="server" Text="Primary Mtg. Terms:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txt1stTerms" runat="server" CssClass="CurrencyTextBox" Text="360"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label17" runat="server" Text="Secondary Mtg. terms:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txt2ndTerms" runat="server" CssClass="CurrencyTextBox" Text="360"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label3" runat="server" Text="Primary Mtg. Interest:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txt1stInterestRate" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label4" runat="server" Text="Secondary Mtg. Interest:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txt2ndInterestRate" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label12" runat="server" Text="Primary Mtg. P&I:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txt1stPnI" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label13" runat="server" Text="Secondary Mtg. P&I:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txt2stPnI" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label14" runat="server" Text="Borrower Monthly Income:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtMonthlyIncome" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label15" runat="server" Text="Proposed Taxes/HOA/Insurance:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtProposedTaxesHOAInsurance" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label5" runat="server" Text="Proposed Housing Expense:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txtProposedHousingExpense" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label6" runat="server" Text="Other Monthly Debt:" CssClass="FormFieldName"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtOtherMonthlyDebt" runat="server" CssClass="CurrencyTextBox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label7" runat="server" Text="Total Housing Expense:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txtTotalHousingExpense" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label8" runat="server" Text="DTI Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txtDTIRatio" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label9" runat="server" Text="TDTI Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txtTDTIRatio" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label10" runat="server" Text="LTV Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td  class="RightAlign">
                <asp:Label ID="txtLTVRatio" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td align="right"><asp:Label ID="Label11" runat="server" Text="CTLV Ratio:" CssClass="FormFieldName"></asp:Label></td>
            <td class="RightAlign">
                <asp:Label ID="txtCLTVRatio" runat="server" Text="0.00" CssClass="RightAlign"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td align="center">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="lodButton" Width="120px"/></td>
            <td align="center">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="lodButton" Width="120px"/>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
