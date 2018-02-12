<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="generallogin.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
        </td>
        <td>
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
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 30px">
                          </td>
        <td style="height: 30px">
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                                           />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/generallogin.aspx">SignUp</asp:HyperLink>
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

