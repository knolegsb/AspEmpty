<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspEmpty.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 346px;
        }
        .auto-style3 {
            width: 418px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="custid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="custid" HeaderText="custid" ReadOnly="True" SortExpression="custid" />
                            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                            <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="orderid" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" SortExpression="orderid" />
                            <asp:BoundField DataField="item name" HeaderText="item name" SortExpression="item name" />
                            <asp:BoundField DataField="number bought" HeaderText="number bought" SortExpression="number bought" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Inner</asp:ListItem>
            <asp:ListItem>Left</asp:ListItem>
            <asp:ListItem>Right</asp:ListItem>
            <asp:ListItem>Full</asp:ListItem>
        </asp:DropDownList>
        <hr />
    </div>
        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [customers]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [orderdetails]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [custordinner]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [custorleft]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [custorright]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString3 %>" SelectCommand="SELECT * FROM [custordfull]"></asp:SqlDataSource>
    </form>
</body>
</html>
