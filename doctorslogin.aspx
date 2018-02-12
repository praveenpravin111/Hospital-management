<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="doctorslogin.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="height: 22px">
            &nbsp;</td>
        <td style="height: 22px">
            <asp:Label ID="Label3" runat="server" Text="Login" Font-Size="Large" 
                ForeColor="Red"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td style="height: 22px">
            <asp:Label ID="Label1" runat="server" Text="Doc Id"></asp:Label>
        </td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>
                          <%--<asp:Label ID="Label3" runat="server" Text="username"></asp:Label>--%>
                      </td>
        <td>
                          <%--<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                          <br />--%>
                      </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Key"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 31px">
                          </td>
        <td style="height: 31px">
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                                             />
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

