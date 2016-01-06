<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default2.aspx.cs" Inherits="AspEmpty.default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbaseConnectionString2 %>" SelectCommand="SELECT [Salary], [Name] FROM [Table] WHERE (([Name] = @Name) AND ([Salary] = @Salary)) ORDER BY [Salary] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Mary" Name="Name" Type="String" />
                <asp:Parameter DefaultValue="1200000" Name="Salary" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Enter Name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Salary:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
