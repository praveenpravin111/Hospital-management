<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="emergencymain.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
     <tr>
            <td style="width: 75px; height: 37px;">
                <asp:Label ID="Label1" runat="server" Text="Emergency" 
                    Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td style="width: 75px; height: 37px;">
                <asp:Label ID="Label3" runat="server" Text="EmergencyID"></asp:Label>
            </td>
            <td style="height: 37px; width: 290px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 75px; height: 95px;">
                <asp:Label ID="Label4" runat="server" Text="PatientID"></asp:Label>
            </td>
            <td style="height: 95px; width: 290px;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    Height="20px" Width="151px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString8 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
            </td>
        </tr>
                  <tr>
            <td style="width: 75px; height: 17px;">
                <asp:Label ID="Label2" runat="server" Text="PatientName"></asp:Label>
            </td>
            <td style="height: 17px; width: 290px;">
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;
                </td>
        </tr>
         <tr>
            <td style="width: 75px; height: 17px;">
                <asp:Label ID="Label5" runat="server" Text="Emailid"></asp:Label>
            </td>
            <td style="height: 17px; width: 290px;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;
                </td>
        </tr>
          <tr>
            <td style="width: 75px; height: 17px;">
                &nbsp;</td>
            <td style="height: 17px; width: 290px;">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="NewID" onclick="Button1_Click" />
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Send Mail" 
                    onclick="Button3_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="View PatientInfo" 
                    onclick="Button2_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        
    </table>
</asp:Content>

