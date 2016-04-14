﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master"
    Inherits="NHDNUG.Mvc.Admin.Admin_Addresses" CodeBehind="Addresses.aspx.cs" %>

<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
    
<asp:Content ContentPlaceHolderID="pageBody" runat="server">
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
        AllowAutomaticUpdates="True" AllowPaging="True" AllowSorting="True" AutoGenerateDeleteColumn="True"
        AutoGenerateEditColumn="True" DataSourceID="AddressesListEntityDataSource" GridLines="None"
        Skin="Default">
        <MasterTableView AutoGenerateColumns="False" CellSpacing="-1" DataKeyNames="AddressID"
            DataSourceID="AddressesListEntityDataSource" CommandItemDisplay="Top">
            <Columns>
                <telerik:GridBoundColumn DataField="AddressID" DataType="System.Int32" HeaderText="AddressID"
                    ReadOnly="True" SortExpression="AddressID" 
                    UniqueName="AddressID" Visible="false">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name"
                    UniqueName="Name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Street1" HeaderText="Street1" SortExpression="Street1"
                    UniqueName="Street1">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Street2" HeaderText="Street2" SortExpression="Street2"
                    UniqueName="Street2">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="City" HeaderText="City" SortExpression="City"
                    UniqueName="City">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="State" HeaderText="State" SortExpression="State"
                    UniqueName="State">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode"
                    UniqueName="ZipCode">
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource ID="AddressesListEntityDataSource" runat="server" ConnectionString="name=NhdnugEntities"
        DefaultContainerName="NhdnugEntities" EnableDelete="True" EnableInsert="True"
        EnableUpdate="True" EntitySetName="AddressSet">
    </asp:EntityDataSource>
</asp:Content>