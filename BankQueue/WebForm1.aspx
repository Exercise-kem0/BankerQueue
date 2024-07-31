<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BankQueue.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }

        .auto-style2 {
            width: 128px;
            height: 22px;
        }

        .auto-style3 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-content:center">
            <table >
                <tr style="font-style: italic">
                    <td class="auto-style2" style="font-size: x-large; font-weight: 700; color: #0000FF; background-color: #00FFFF; border-spacing: inherit; text-align: center;">Counter 1 : </td>
                    <td style="font-size: x-large; font-weight: 700; color: #0000FF; background-color: #00FFFF; border-spacing: inherit; text-align: center;">Counter 2 :</td>
                    <td  style="font-size: x-large; font-weight: 700; color: #0000FF; background-color: #00FFFF; border-spacing: inherit; text-align: center;">Counter 3 :</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox  ID="TextBox_1" runat="server" BackColor="Blue" BorderColor="#6699FF" Font-Bold="True" Font-Size="Large" ForeColor="White">sdgerrghberh</asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_2" runat="server" BackColor="Blue" BorderColor="#6699FF" Font-Bold="True" Font-Size="Large" ForeColor="White">sdgerrghberh</asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_3" runat="server" BackColor="Blue" BorderColor="#6699FF" Font-Bold="True" Font-Size="Large" ForeColor="White">sdgerrghberh</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn1" runat="server" Text="Next" Font-Overline="False" Font-Size="Large" Height="30px" Width="148%" OnClick="btn1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn2" runat="server" Text="Next" Font-Overline="False" Font-Size="Large" Height="30px" Width="100%" OnClick="btn2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn3" runat="server" Text="Next" Font-Overline="False" Font-Size="Large" Height="30px" Width="100%" OnClick="btn3_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5" class="auto-style3">
                        <asp:TextBox ID="Details" runat="server" BackColor="#FF66FF" BorderColor="Yellow" Columns="1" Font-Italic="True" Font-Overline="True" Font-Size="Large" ForeColor="Black" Height="37px" OnTextChanged="Details_TextChanged" Width="100%" Style="text-align: center" CssClass="auto-style2">gdfngfrn</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="5">
                        <div style="text-align: center;" display:="" inline-block;="" margin:="" 5px;"="" vertical-align:="" middle;"="">
                        <select runat="server"  size="4" id="listBox" style="font-size:Large;Width:30%;height: 250px;">
                          </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align:center">
                        <asp:Button ID="prtintTokenBtn" runat="server" Text="Print Token" Font-Size="Large" OnClick="prtintTokenBtn_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align:center">
                        <asp:Label ID="Label1" runat="server" Text="There are 0 Customers before you" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;
    </p>
</body>
</html>
