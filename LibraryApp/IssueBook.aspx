<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="WebApplication1.IssueBook" %>

<%--CSS--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
            text-align: center;
        }
        .auto-style13 {
            height: 18px;
            text-align: right;
        }
        .auto-style14 {
            height: 18px;
        }
        .auto-style15 {
            height: 34px;
            text-align: center;
        }
        .auto-style16 {
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
            text-align: right;
        }
        .newStyle1 {
            color: #000000;
        }
        .auto-style18 {
            font-size: x-large;
        }
        .auto-style19 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style20 {
            height: 29px;
            text-align: right;
        }
    </style>
</asp:Content>

<%--Issue Book --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style15" colspan="3">
                <br />
                <strong><span class="auto-style19">Issue Book</span></strong><span class="newStyle1"><br class="auto-style18" />
                </span>
                <br />
                <br />
            </td>
        </tr>
        <tr>      <%--Book Name Directly get it from DataBase which Book Has in Library--%>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Book Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">:</td>
            <td class="auto-style14">
                <asp:DropDownList ID="DDLBookName" runat="server" DataSourceID="SqlDataSource1" DataTextField="BookName" DataValueField="BookName" Width="181px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyLibDBConnectionString %>" SelectCommand="SELECT [BookName] FROM [tblBookMaster]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>       <%-- User Name Get it from which user registered in library --%>
            <td class="auto-style17">User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style16">:</td>
            <td class="auto-style16"><asp:DropDownList ID="DDLUserName" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName" Width="181px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyLibDBConnectionString %>" SelectCommand="SELECT [UserName] FROM [tblUserMaster]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>       <%-- Get Email id which we can Issuee Book --%>
            <td class="auto-style20">Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style11">:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtEmailId" runat="server" TextMode="Email" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>        <%--Select Date and Time--%>
            <td class="auto-style20">Issue Date &amp; Time</td>
            <td class="auto-style11">:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtIssueDateTime" runat="server" TextMode="DateTimeLocal" ></asp:TextBox>
            </td>
        </tr>

        <%--Button--%>
        <tr>
            <td class="auto-style12" colspan="3">
                <br />
                <asp:Button ID="btnIssueBook" runat="server" OnClick="btnIssueBook_Click" Text="Issue Book" />         <%-- Issue Book to User--%>
&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />                       <%--Clear--%>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
