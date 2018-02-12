<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="newreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="width: 216px">
            &nbsp;</td>
        <td style="width: 466px">
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/docreg.aspx">Doctors 
            Registration</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/patientreg.aspx">Patient 
            Registration</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

