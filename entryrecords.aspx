<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="entryrecords.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
     <tr>
            <td style="width: 153px; height: 17px;">
                <asp:Label ID="Label4" runat="server" Text="File Details" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 17px">
                
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="#0066FF" NavigateUrl="~/phr.aspx">PHRhome</asp:HyperLink>
                
            </td>
        </tr>
        <tr>
            <td style="width: 153px; height: 24px;">
                <asp:Label ID="Label1" runat="server" Text="patientid"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="paid" DataValueField="paid" 
                    Height="32px" Width="120px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:healthConnectionString9 %>" 
                    SelectCommand="SELECT [paid] FROM [patientreg]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 153px; height: 21px;">
                <asp:Label ID="Label2" runat="server" Text="File name"></asp:Label>
            </td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox2" runat="server" Width="124px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">
                <asp:Label ID="Label3" runat="server" Text="File"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="209px" />
            </td>
        </tr>
        <tr>
            <td style="width: 153px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                <asp:Label ID="Label5" runat="server" Text="File Successfully uploaded "></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="105px" Width="228px">
                </asp:GridView>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Decrypt" 
                    onclick="Button2_Click" />
                &nbsp;<br />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Enter Key" Visible="False"></asp:Label>
                :<asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Decrypt" 
                    onclick="Button3_Click" Visible="False" />
                <br />
                <asp:GridView ID="GridView2" runat="server" BackColor="#0066FF" 
                    ForeColor="Black" Height="105px" Width="228px" 
                    onrowcommand="GridView2_RowCommand">
                    <Columns>
                      
                 <%--   <asp:TemplateField HeaderText="FilePath">
<ItemTemplate>
<asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>--%>
  </Columns>
                </asp:GridView>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

