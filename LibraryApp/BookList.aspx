<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="WebApplication1.BookList" %>

<%--CSS--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 450px;
        }
    </style>
</asp:Content>


<%--Data get it from GridView and it is fetch from Issue Book--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style7">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyLibDBConnectionString %>" DeleteCommand="DELETE FROM [tblBookMaster] WHERE [BookId] = @original_BookId AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))" InsertCommand="INSERT INTO [tblBookMaster] ([BookName], [Quantity], [AuthorName]) VALUES (@BookName, @Quantity, @AuthorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblBookMaster]" UpdateCommand="UPDATE [tblBookMaster] SET [BookName] = @BookName, [Quantity] = @Quantity, [AuthorName] = @AuthorName WHERE [BookId] = @original_BookId AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BookId" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Decimal" />
                <asp:Parameter Name="original_AuthorName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Decimal" />
                <asp:Parameter Name="AuthorName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Decimal" />
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="original_BookId" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Decimal" />
                <asp:Parameter Name="original_AuthorName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
