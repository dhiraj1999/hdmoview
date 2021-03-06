﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MovieDashBoard.master" AutoEventWireup="true" CodeFile="Bollywoodmovies.aspx.cs" Inherits="Bollywoodmovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="    text-align:center;width:auto;height:40px;color:white; background-color:#192965;border-radius:5px;">
            <h3>Bollywood Movies</h3>
        </div>&nbsp;&nbsp;&nbsp;
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="video" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="5" ShowHeader="False" BorderColor="#3399FF" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id"> </asp:BoundField>
                <asp:ImageField DataImageUrlField="video" HeaderText="video" SortExpression="video"></asp:ImageField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name">
                <ItemStyle Font-Names="Verdana" ForeColor="#FF6600" />
                </asp:BoundField>
                <asp:HyperLinkField Text="Click here" SortExpression="link" DataNavigateUrlFields="link" >
                <ItemStyle ForeColor="#3399FF" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection %>" ProviderName="<%$ ConnectionStrings:connection.ProviderName %>" SelectCommand="SELECT * FROM [movie] ORDER BY [id] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>

