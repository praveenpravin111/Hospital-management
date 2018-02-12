<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="height: 48px">
        </td>
        <td style="height: 48px">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                ForeColor="#0066FF" NavigateUrl="~/patreoprt.aspx">Patient Report</asp:HyperLink>
        </td>
        <td style="height: 48px">
        </td>
    </tr>
    <tr>
        <td style="height: 48px">
        </td>
        <td style="height: 48px">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                ForeColor="#0066FF" NavigateUrl="~/docreport.aspx">Doctors Report</asp:HyperLink>
        </td>
        <td style="height: 48px">
        </td>
    </tr>
</table>
</asp:Content>

