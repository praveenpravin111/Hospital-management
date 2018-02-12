<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="keysendmail.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 181px">
                <asp:Label ID="Label3" runat="server" Text="Secret Key Send To Mailid" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 16px">
                <asp:Label ID="Label2" runat="server" Text="Secret Key"></asp:Label>
            </td>
            <td style="height: 16px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
              
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
              
            </td>
        </tr>
         <tr>
                          <asp:Button ID="Button1" runat="server" Text="Button" />
            
           
        </tr>
    </table>
</asp:Content>

