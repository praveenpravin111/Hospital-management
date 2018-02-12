<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="searchrecord.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 100%">
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                    Text="Enter Keyword For searching Records"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox1" runat="server" Width="236px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

