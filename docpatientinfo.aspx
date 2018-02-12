<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="docpatientinfo.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="width: 372px; height: 37px;">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="#0066FF" NavigateUrl="~/dochome.aspx">DoctorHome</asp:HyperLink>
            </td>
            <td style="height: 37px">
                </td>
        </tr>
        <tr>
            <td style="width: 372px">
                <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    Height="18px" Width="153px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString3 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="#0066CC" 
                    ForeColor="Black">
                </asp:GridView>
            </td>
        </tr>
        
        <tr>
            <td style="width: 372px">
                <asp:Label ID="Label2" runat="server" Text="Patient Report By Doctor"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="102px" TextMode="MultiLine" 
                    Width="323px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

