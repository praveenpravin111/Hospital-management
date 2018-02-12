<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="patientviewsurgery.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="#0066FF" NavigateUrl="~/patienthome.aspx">patienthome</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 70px">
                <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>
            </td>
            <td style="height: 70px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    Height="25px" Width="134px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString6 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View" onclick="Button1_Click" />
                <asp:GridView ID="GridView1" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="141px" Width="276px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

