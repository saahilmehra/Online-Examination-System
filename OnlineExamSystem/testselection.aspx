﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Selection</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style type="text/css">
        .style10{
            width:280px;
        }
        .style11{
            width:448px;
        }
        .style13{
            font-size:large;
            font-weight:bold;
            padding:0;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
        <table align="center" class="style1">
            <tr>
                <td class="style2">Online Examination System</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style1">
                        <tr>
                            <td bgcolor="#3333FF">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="styleText" style="text-align:center; color:000099;">
                                <b><a href="logout.aspx">Logout</a></b>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <table align="center" class="style4">
                                    <tr>
                                        <td  class="style10">&nbsp;</td>
                                        <td class="style11">
                                            <table align="center" class="style4 styleText">
                                                
                                                <tr>
                                                    <td class="style13 styleText">Select a Test</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="styleText">
                                                        <asp:DropDownList ID="testlist" runat="server" height="22px" width="200px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J1EFRCC;Initial Catalog=OnlneExamSystem;Integrated Security=True"
                                                            SelectCommand="select distinct [settype] from [question]"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="styleText">
                                                        <asp:Button ID="submit" runat="server" Text="Submit" Width="200px" OnClick="Button1_Click" Style="font-weight:700"></asp:Button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>

                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                              <td bgcolor="#3333FF">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#666666" style="text-align:center">
                    <span class="style3">Designed by :- Sahil Mehra</span>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
