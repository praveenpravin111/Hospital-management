<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="phr.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 14px;">
        <tr>
            <td style="width: 398px; height: 11px;">
                &nbsp;&nbsp;&nbsp; &nbsp;
            </td>
            <td style="width: 40px; height: 11px;">
                &nbsp;</td>
            <td style="height: 11px">
                </td>
            <td style="height: 11px">
                &nbsp;</td>
            <td style="height: 11px">
                </td>
        </tr>
         <tr>
    
            <td style="height: 19px; width: 398px;">
                </td>
        </tr>
          <tr>
    
            <td style="height: 14px; width: 398px;">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="Black" NavigateUrl="~/entryrecords.aspx">Entry Personnel Health 
                Records</asp:HyperLink>
              </td>
        </tr>
          <tr>
    
            <td style="height: 18px; width: 398px;">
                <br />
                .</td>
        </tr>
          <tr>
    
            <td style="width: 398px">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                    ForeColor="Black" NavigateUrl="~/maintainrecord.aspx">Maintain Health 
                Records</asp:HyperLink>
              </td>
        </tr>
    </table>
     <table style="width: 100%">
                    </table>
    
</asp:Content>

