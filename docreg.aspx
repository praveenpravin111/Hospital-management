<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="docreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
           
            <td style="width: 242px; height: 82px;">
                </td>
            <td style="width: 241px; height: 82px;">
                
                <asp:Label ID="Label14" runat="server" Text="Doctors Registration!!" 
                    Font-Size="X-Large" ForeColor="Red"></asp:Label>
                
            </td>
            
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label1" runat="server" Text="DoctorsID"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 128px">
                <asp:Label ID="Label8" runat="server" Text="DateofBirth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="date" 
                    Width="40px" />
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 69px;">
                <asp:Label ID="Label2" runat="server" Text="DoctorsName"></asp:Label>
            </td>
            <td style="width: 241px; height: 69px;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 128px; height: 69px;">
                <asp:Label ID="Label9" runat="server" Text="Qualification"></asp:Label>
            </td>
            <td style="height: 69px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 71px;">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 241px; height: 71px;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="29px" Width="142px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 128px; height: 71px;">
                <asp:Label ID="Label10" runat="server" Text="JoiningDate"></asp:Label>
            </td>
            <td style="height: 71px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="date" 
                    Width="40px" />
                <asp:Calendar ID="Calendar2" runat="server" 
                    onselectionchanged="Calendar2_SelectionChanged" Visible="False">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="height: 62px; width: 242px">
                <asp:Label ID="Label4" runat="server" Text="maritalstatus"></asp:Label>
            </td>
            <td style="height: 62px; width: 241px;">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="24px" Width="142px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 62px; width: 128px;">
                <asp:Label ID="Label11" runat="server" Text="Timings"></asp:Label>
            </td>
            <td style="height: 62px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
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
                <asp:Label ID="Label12" runat="server" Text="Specialist"></asp:Label>
            </td>
            <td style="height: 71px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 63px;">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 241px; height: 63px;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 128px; height: 63px;">
                <asp:Label ID="Label13" runat="server" Text="Key"></asp:Label>
            </td>
            <td style="height: 63px">
                <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
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

