<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="phrhome.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="width: 200px; height: 49px">
        </td>
        <td style="height: 49px">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/register.aspx">PHR 
            owner Registration</asp:HyperLink>
        </td>
        <td style="height: 49px">
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            &nbsp;</td>
        <td>
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/adlogin.aspx">Login</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

