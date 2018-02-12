<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Admain.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 72px">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" 
                    NavigateUrl="~/Addoctordetails.aspx">Doctors Registration</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="height: 40px">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" 
                    NavigateUrl="~/Adviewdoctordet.aspx">View Doctor Records</asp:HyperLink>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 15px">
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Red" 
                    NavigateUrl="~/AAemergency.aspx">Emergency for search</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

