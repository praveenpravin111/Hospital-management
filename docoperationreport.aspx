<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="docoperationreport.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    
            <tr>
            <td style="width: 337px; height: 48px;">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="#0066FF" NavigateUrl="~/dochome.aspx">DoctorHome</asp:HyperLink>
                </td>
            <td style="height: 48px">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Font-Underline="True" 
                    ForeColor="#0066FF" Text="Operation Report"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 337px; height: 90px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 90px">
                <asp:Label ID="Label1" runat="server" Text="Choose Patient ID"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="144px" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString4 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 337px; height: 48px;">
                </td>
            <td style="height: 48px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Success</asp:ListItem>
                    <asp:ListItem>Failure</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        
        <tr>
            <td style="width: 337px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ok" Width="46px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

