<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question1.aspx.cs" Inherits="Question1" %>


<!DOCTYPE html>
<link href="StyleSheet.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 163px;
        }

        .auto-style4 {
            height: 23px;
        }

        .style1 {
            width: 242px;
            height: 23px;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            font-weight: bold;
            font-size: large;
            background-color: #999999;
        }

        .newStyle1 {
            background-color: #FFFFCC;
            border-style: solid;
            border-color: #999966;
        }

        .auto-style7 {
            background-color: #FFFFCC;
            border-style: solid;
            border-color: #999966;
            width: 602px;
            height: 436px;
        }

        .newStyle2 {
            background-color: #FFFFCC;
            border-style: solid;
            border-color: #999966;
        }

        .auto-style8 {
            background-color: #FFFFCC;
            border-style: solid;
            border-color: #999966;
            width: 608px;
            height: 352px;
        }

        .auto-style10 {
            color: #000066;
        }

        .auto-style11 {
            width: 163px;
            height: 27px;
        }

        .auto-style12 {
            height: 27px;
        }

        .auto-style13 {
            width: 163px;
            height: 23px;
        }

        .auto-style16 {
            font-size: small;
            color: #CC0000;
        }

        .auto-style21 {
            width: 193px;
            height: 23px;
        }

        .auto-style22 {
            width: 193px;
        }

        .auto-style23 {
            width: 165px;
            height: 23px;
        }

        .auto-style24 {
            width: 165px;
        }

        .auto-style25 {
            height: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <br />

        <table class="auto-style7" align="center">
            <tr>
                <td colspan="3">
                    <em>
                        <asp:Label ID="lblDescript" runat="server" CssClass="auto-style10" Text="Customer's Details"></asp:Label>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblName" runat="server" Text="Name :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" Height="16px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" CssClass="auto-style16" ErrorMessage="required your name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblContactNum" runat="server" Text="Contact Number :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtContactNum" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContactNum" CssClass="auto-style16" ErrorMessage="required contact number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblEmail" runat="server" Text="Email :"></asp:Label>
                </td>
                <td colspan="2" class="auto-style12">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style16" ErrorMessage="Wrong format . E.g : example555@ gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblOrderDetails" runat="server" Text="Order Details :"></asp:Label>
                </td>
                <td class="auto-style23"></td>
                <td class="auto-style21">
                    <asp:Label ID="lblCapacity" runat="server" Text="Quantity :"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblRice" runat="server" Text="Rice :"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="128px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>-Choose-</asp:ListItem>
                        <asp:ListItem Value="1.50">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyRice" runat="server" type="number" Width="54px" Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQttyRice" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="4">
                    <asp:Label ID="lblSideDishes" runat="server" Text="Side Dishes :"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="lblSideDishes3" runat="server" Text="Chicken Curry"></asp:Label>
                    <br />
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyChicken" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQttyChicken" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="lblSideDishes4" runat="server" Text="Mixed Vegetable"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtMixed" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtMixed" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="lblSideDishes5" runat="server" Text="Grilled Fish"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyFish" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtQttyFish" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="lblSideDishes6" runat="server" Text="Condiment"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyCondiment" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtQttyCondiment" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="2">
                    <asp:Label ID="lblbeverages" runat="server" Text="Beverages :"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="lblbeverages3" runat="server" Text="Mango Juice"></asp:Label>
                    <br />
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyJuice" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtQttyJuice" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="lblbeverages4" runat="server" Text="Cendol"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtQttyCendol" runat="server" type="number" Width="54px"
                        Height="16px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtQttyCendol" CssClass="auto-style16" ErrorMessage="Invalid input!" Operator="DataTypeCheck" ToolTip="The input must be numeric" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDelivery" runat="server" Text="Delivery :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="128px">
                        <asp:ListItem>-Please Select-</asp:ListItem>
                        <asp:ListItem>Self-pick up </asp:ListItem>
                        <asp:ListItem>Request for delivery</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style5">
                    <br />
                    <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Order" CssClass="auto-style6" style="height: 33px" />
                    </strong>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style8" align="center">
            <tr>
                <td colspan="3"><em>
                    <asp:Label ID="lblDescript0" runat="server" CssClass="auto-style10"></asp:Label>
                </em></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName0" runat="server"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblName1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblContactNum0" runat="server"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblContactNum1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail0" runat="server"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="lblEmail1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblOrderDetails0" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblCapacity0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblRice0" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRice1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRice2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lblSideDishes0" runat="server"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblSideDishes1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes7" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes9" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes11" runat="server"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblSideDishes2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes8" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes10" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblSideDishes12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblbeverages0" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblbeverages1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblbeverages5" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblbeverages2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblbeverages6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDelivery0" runat="server"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblDelivery1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTotal0" runat="server"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
