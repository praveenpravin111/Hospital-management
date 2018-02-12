<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="access.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 376px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#0066FF" 
                    NavigateUrl="~/doctorslogin.aspx">Doctors Login</asp:HyperLink>
                <br />
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#0066FF" 
                    NavigateUrl="~/patientlogin.aspx">Patient Login</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

