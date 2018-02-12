<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>VDS 4</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/xfade2.js"></script>
        <style type="text/css">
            .style1
            {
                width: 100%;
            }
            .style3
            {
                height: 21px;
            }
            .style4
            {
                height: 22px;
            }
            .style5
            {
                height: 6px;
            }
            .style6
            {
                height: 21px;
                width: 131px;
            }
            .style7
            {
                width: 131px;
            }
            .style8
            {
                height: 6px;
                width: 131px;
            }
            .style9
            {
                height: 22px;
                width: 131px;
            }
        </style>
        </head>
<body>
    <form id="form1" runat="server">
<div id="container">
  <div id="container2">
    <div id="top_container">
      <div id="vrh">
        <div id="logo"><a href="#"><img src="images/hh.jpg" width="476" height="54" 
                alt="" /></a></div>
      </div>
      <div class="clr"></div>
      <div class="menu">
      <ul>
          <li class="menu_active"> <a href="#">HOME</a> </li>
      
          <li> <a href="newreg.aspx">Registration</a></li>
          <li> <a href="phrhome.aspx">PHR Owner</a> </li>
          <li> <a href="access.aspx">Access control</a> </li>
          <li> <a href="emergencymain.aspx">Emergency</a> </li>
           <li> <a href="report.aspx">Report</a> </li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div id="content_container">
      <div class="centercolumn">
        <div id="maincontent">
          <div id="sadrzaj">
              <br />
              <table class="style1">
                  <tr>
                      <td class="style6">
                          <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                      </td>
                      <td class="style3">
                          <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                      </td>
                  </tr>
                   <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox3" runat="server" Width="142px" AutoPostBack="True" 
                              ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox4" runat="server" Width="144px" TextMode="Password"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style8">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td class="style5">
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style9">
                          <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
                      </td>
                      <td class="style4">
                          <asp:TextBox ID="TextBox5" runat="server" Width="144px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <asp:Label ID="Label6" runat="server" Text="Emailid"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox6" runat="server" Width="143px" Height="20px" 
                              ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style9">
                          <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                      </td>
                      <td class="style4">
                          <asp:TextBox ID="TextBox7" runat="server" Width="143px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <asp:Label ID="Label8" runat="server" Text="Key" Enabled="False"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox8" runat="server" Width="143px" Enabled="False"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                      </td>
                      <td>
                          <%--<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>--%>
                      </td>
                  </tr>
                  <tr>
                      <td class="style7">
                          &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Register" 
                                            onclick="Button1_Click" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" Text="GetKey" 
                                            onclick="Button2_Click" Visible="False" />
                                    &nbsp;<asp:Button ID="Button3" runat="server" Text="New" 
                                            onclick="Button3_Click" />
                                    </td>
                                </tr>
                                <tr>
                      <td class="style7">
&nbsp;:</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
          </div>
          <div id="slajder">
            <div id="rotator"> <img src="images/slide1.jpg" width="436" height="206" alt="" /> <img src="images/slide2.jpg" width="436" height="206" alt="" /> <img src="images/slide3.jpg" width="436" height="206" alt="" /> </div>
          </div>
        </div>
        <div class="clr">
                    </div>
        <div class="vodoravno"></div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
    </form>
</body>
</html>

