<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBookList.aspx.cs" Inherits="WebApplication1.IssueBookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            margin-left: 397px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7" align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookIssueID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style8">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="BookIssueID" HeaderText="BookIssueID" InsertVisible="False" ReadOnly="True" SortExpression="BookIssueID" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Emaild" HeaderText="Emaild" SortExpression="Emaild" />
                <asp:BoundField DataField="BookIssueTime" HeaderText="BookIssueTime" SortExpression="BookIssueTime" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyLibDBConnectionString %>" DeleteCommand="DELETE FROM [tblBookIssueMaster] WHERE [BookIssueID] = @original_BookIssueID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Emaild] = @original_Emaild) OR ([Emaild] IS NULL AND @original_Emaild IS NULL)) AND (([BookIssueTime] = @original_BookIssueTime) OR ([BookIssueTime] IS NULL AND @original_BookIssueTime IS NULL))" InsertCommand="INSERT INTO [tblBookIssueMaster] ([BookName], [UserName], [Emaild], [BookIssueTime]) VALUES (@BookName, @UserName, @Emaild, @BookIssueTime)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblBookIssueMaster]" UpdateCommand="UPDATE [tblBookIssueMaster] SET [BookName] = @BookName, [UserName] = @UserName, [Emaild] = @Emaild, [BookIssueTime] = @BookIssueTime WHERE [BookIssueID] = @original_BookIssueID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Emaild] = @original_Emaild) OR ([Emaild] IS NULL AND @original_Emaild IS NULL)) AND (([BookIssueTime] = @original_BookIssueTime) OR ([BookIssueTime] IS NULL AND @original_BookIssueTime IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BookIssueID" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Emaild" Type="String" />
                <asp:Parameter Name="original_BookIssueTime" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Emaild" Type="String" />
                <asp:Parameter Name="BookIssueTime" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Emaild" Type="String" />
                <asp:Parameter Name="BookIssueTime" Type="String" />
                <asp:Parameter Name="original_BookIssueID" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Emaild" Type="String" />
                <asp:Parameter Name="original_BookIssueTime" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
