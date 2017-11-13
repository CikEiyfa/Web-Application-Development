<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question 2.aspx.cs" Inherits="CB15125_LAB4_Question_2" %>

<!DOCTYPE html>
<link href="StyleSheet.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 544px;
            height: 137px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 265px;
        }
        .auto-style5 {
            width: 265px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 57%;
        }
        .auto-style9 {
            height: 19px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
            width: 290px;
        }
        .newStyle1 {
            border-color: #333333;
            border-style: solid;
            background-color: #FFCCFF;
        }
        .newStyle2 {
            background-color: #333333;
            color: #FFFFFF;
            font-size: large;
        }
        .newStyle3 {
            background-color: #FFCCFF;
            border-style: solid;
            border-color: #333333;
            width: 559px;
            height: 300px;
        }
        .auto-style11 {
            width: 265px;
            height: 125px;
        }
        .auto-style12 {
            height: 125px;
            width: 290px;
        }
        .newStyle4 {
            background-color: #FFCCFF;
            border-style: solid;
            border-color: #333333;
        }
        .newStyle5 {
            background-color: #D5D5FF;
            border-style: solid;
            border-color: #000080;
        }
        .newStyle6 {
            background-color: #D5D5FF;
            border-style: solid;
            border-color: #000080;
        }
        .auto-style13 {
            background-color: #D5D5FF;
            border-style: solid;
            border-color: #000080;
            width: 566px;
            height: 318px;
        }
        .auto-style14 {
            width: 290px;
        }
        .auto-style15 {
            font-size: small;
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 
        <div class="auto-style2">
            <br />
            <img class="auto-style1" src="fakebook-logo.png" /><br />
            <br />
        </div>
        <table  class="newStyle5" align="center">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtUsername" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" CssClass="auto-style15" ErrorMessage="**"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox type="Password" ID="txtPassword" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="auto-style15" ErrorMessage="**"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Gender :"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlGender" runat="server" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" Width="267px">
                        <asp:ListItem>-choose-</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="DOB :"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Calendar ID="Cal" runat="server" Height="185px" Width="255px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Profile picture :"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:FileUpload ID="UploadProfile" runat="server" Height="22px" Width="266px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label6" runat="server" Text="Write something about your interest :"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtInterest" runat="server" Height="53px" Width="262px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table align="center" class="auto-style7">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="136px" CssClass="newStyle2" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table align="center" class="auto-style13">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblUsername0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblGender" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblGender0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblDOB" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblDOB0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProfile" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="ImgProfile" runat="server" Height="135px" Width="131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblInterest" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lblInterest0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
 
    </form>
</body>
</html>
