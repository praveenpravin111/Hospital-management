<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Adviewdoctordet.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 166px">
                <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Public Authority" ForeColor="Red"></asp:Label>
            </td>
        </tr>
         <tr>
            <td style="width: 166px">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

