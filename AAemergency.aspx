<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="AAemergency.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 173px">
                &nbsp;</td>
            
            <td>
                <asp:Label ID="Label2" runat="server" Text="Public Authority"></asp:Label>
            </td>
        </tr>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </table>
</asp:Content>

