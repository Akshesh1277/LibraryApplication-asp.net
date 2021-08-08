<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<%--CSS--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">            
    <style type="text/css">         /*Adding CSS to make it more attractive*/
        .auto-style7 {
            text-align: center;
            text-decoration: underline;
            font-size: xx-large;
        }
        .newStyle1 {
            background-color: #00CCFF;
        }
        .newStyle2 {
            background-color: #33CCCC;
        }
        .auto-style7 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style7">
        <strong class="newStyle2">Welcome to our Online Library Portal </strong>    <%--Make it home page--%>    
    </p>

    <p>
        <asp:Image ID="Image1" Height="400px" Width="1504px" ImageAlign="Middle" runat="server" ImageUrl="~/libimage.jpg" />     <%-- Add Image and it's size--%>  
    </p>

</asp:Content>
