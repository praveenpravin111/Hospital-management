<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="viewappointment.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="width: 285px">
                &nbsp;</td>
            <td style="width: 306px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Appointment Details"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    Width="266px">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

