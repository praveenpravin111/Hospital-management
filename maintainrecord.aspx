<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="maintainrecord.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="style1">
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px; height: 52px;">
                <asp:Label ID="Label2" runat="server" Text="PatientID"></asp:Label>
            </td>
            <td style="width: 281px; height: 52px;">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    Height="17px" Width="144px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString7 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
            </td>
            <td style="height: 52px">
                </td>
            <td style="height: 52px">
                </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="Label3" runat="server" Text="Secret Key"></asp:Label>
            </td>
            <td style="width: 281px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                <asp:Label ID="Label4" runat="server" Text="Attribute Based Encryption "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Decryption "></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                <asp:Button ID="Button1" runat="server" Text="Patient Info" 
                    onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Patient Info" 
                    onclick="Button3_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px; height: 129px;">
                </td>
            <td style="width: 281px; height: 129px;">
                <asp:GridView ID="GridView1" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="99px" Width="213px">
                </asp:GridView>
            </td>
            <td style="height: 129px">
                <asp:GridView ID="GridView3" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="99px" Width="218px">
                </asp:GridView>
            </td>
            <td style="height: 129px">
                </td>
        </tr>
        <tr>
            <td style="width: 190px; height: 67px;">
                </td>
            <td style="width: 281px; height: 67px;">
                <asp:Button ID="Button2" runat="server" Text="Doctors Prescription" 
                    onclick="Button2_Click" />
            </td>
            <td style="height: 67px">
                <asp:Button ID="Button4" runat="server" Text="Doctors Prescription" 
                    onclick="Button4_Click" />
            </td>
            <td style="height: 67px">
                </td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                <asp:GridView ID="GridView2" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="100px" Width="215px">
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GridView4" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="88px" Width="221px">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 281px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

