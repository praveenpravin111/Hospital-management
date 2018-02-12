<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="patientreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
           
            <td style="width: 242px; height: 82px;">
                </td>
            <td style="width: 241px; height: 82px;">
                
                <asp:Label ID="Label14" runat="server" Text="Patient Registration!!" 
                    Font-Size="X-Large" ForeColor="Red"></asp:Label>
                
            </td>
            
        </tr>
        <tr>
            <td style="width: 242px; height: 33px;">
                <asp:Label ID="Label1" runat="server" Text="PatientID"></asp:Label>
            </td>
            <td style="width: 241px; height: 33px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 128px; height: 33px;">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 33px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 69px;">
                <asp:Label ID="Label2" runat="server" Text="PatientName"></asp:Label>
            </td>
            <td style="width: 241px; height: 69px;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 128px; height: 69px;">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="height: 69px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 71px;">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 241px; height: 71px;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="19px" Width="125px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 128px; height: 71px;">
                <asp:Label ID="Label8" runat="server" Text="Disease"></asp:Label>
            </td>
            <td style="height: 71px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 62px; width: 242px">
                <asp:Label ID="Label4" runat="server" Text="maritalstatus"></asp:Label>
            </td>
            <td style="height: 62px; width: 241px;">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="20px" Width="125px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>single</asp:ListItem>
                    <asp:ListItem>married</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 62px; width: 128px;">
                <asp:Label ID="Label9" runat="server" Text="Patient History"></asp:Label>
            </td>
            <td style="height: 62px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 71px;">
                <asp:Label ID="Label5" runat="server" Text="Phno"></asp:Label>
            </td>
            <td style="width: 241px; height: 71px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="height: 71px; width: 128px">
                <asp:Label ID="Label10" runat="server" Text="Key"></asp:Label>
            </td>
            <td style="height: 71px">
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 63px;">
                <asp:Label ID="Label15" runat="server" Text="Key"></asp:Label>
            </td>
            <td style="width: 241px; height: 63px;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
                <asp:Button ID="btnUpload" runat="server" BackColor="#FF9966" Height="26px" 
                    onclick="btnUpload_Click" Text="Upload" />
                <br />
                <br />
                <br />
                <img id="img" runat="server" height="100" width="100" /><br />
                <br />
            </td>
            <td style="width: 128px; height: 63px;">
                &nbsp;</td>
            <td style="height: 63px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                <asp:Button ID="Button1" runat="server" Text="New" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Getkey" onclick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 128px">
                <asp:Button ID="Button3" runat="server" Text="Add" onclick="Button3_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

