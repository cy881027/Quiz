<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210525.aspx.cs" Inherits="Quiz.Quiz20210525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sqldb1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Name], [Chi], [Math], [Eng]) VALUES (@Name, @Chi, @Math, @Eng)" SelectCommand="SELECT * FROM [Stu]" UpdateCommand="UPDATE [Stu] SET [Name] = @Name, [Chi] = @Chi, [Math] = @Math, [Eng] = @Eng WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqldb1" OnRowCommand="gv1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Chi" HeaderText="Chi" SortExpression="Chi" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="Eng" HeaderText="Eng" SortExpression="Eng" />
                    <asp:ButtonField ButtonType="Button" Text="計算" CommandName="cal" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="lb_Show" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
