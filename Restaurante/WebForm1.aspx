<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Restaurante.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }

        .auto-style2 {
            width: 122px;
            height: 23px;
        }

        .auto-style3 {
            height: 23px;
        }

        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style5 {
            width: 122px;
            height: 48px;
        }

        .auto-style6 {
            height: 48px;
        }

        .auto-style7 {
            width: 122px;
            height: 26px;
        }

        .auto-style8 {
            height: 26px;
        }

        #txtNome {
            width: 100%;
            padding-left: 10px;
            height: 30px;
            line-height: 30px;
            border-radius: 15px;
            border: 1px solid #ccc;
            outline: none;
        }

        #txtValor {
            width: 100%;
            padding-left: 10px;
            height: 30px;
            line-height: 30px;
            border-radius: 15px;
            border: 1px solid #ccc;
            outline: none;
        }

        #form1 
        {
            width: auto;
            padding: 100px;
            border: 1px solid #ccc;
        }

        #form1 label
        {
             width: 100%;
             font-size: 1.5em;
        }
        #Insert
        {
            width: 100px;
            padding-left: 10px;
            height: 30px;
            line-height: 30px;
            border-radius: 15px;
            border: 1px solid #ccc;
            outline: none;
        }
        .auto-style9 {
            table-layout: inherit;
            margin-left: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="font-family: Calibri; font-size: 51px; font-style: inherit; text-decoration: underline blink; font-variant: inherit; color: #000000; text-transform: capitalize" class="auto-style9">Lanchonete</h1>
            <p>&nbsp;</p>

        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Name" runat="server" Text="Nome" BorderStyle="None" Font-Italic="True" ValidateRequestMode="Enabled" Width="78px"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtNome" runat="server" Width="440px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Valor</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtValor" runat="server" CssClass="auto-style4" Width="443px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="myButton">
                    <asp:Button ID="Insert" runat="server" OnClick="btnLogs_Click" Text="Insert" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">&nbsp;<asp:Label ID="lblMSG" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="GVTable" runat="server" CellPadding="4" ForeColor="Blue" GridLines="None" Height="273px" Width="335px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#000099" Font-Italic="True" />
                        <FooterStyle BackColor="#0099FF" Font-Bold="True" ForeColor="Black" />
                        <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#66CCFF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
