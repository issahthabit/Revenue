﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Revenue1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="NRB_Revenue.dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h4 class="text-danger"><strong>DASHBOARD:</strong></h4>
        <div class="col m-2">
            <asp:Label ID="lblWeeklypiechart" runat="server" CssClass="fs-4" Font-Bold="true">Weekly Revenue Statistics</asp:Label>
            <%--Pie Chart--%>
            <div class="alert-warning" style="height:400px;">
<<<<<<< HEAD
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="765px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="ReasonForReplacement" YValueMembers="counts" ChartType="Doughnut"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:INRS2ConnectionString %>' SelectCommand="select 
CASE
    WHEN ReasonForReplacement=1 THEN 'Damaged'
    WHEN ReasonForReplacement=2 THEN 'Defaced'
    WHEN ReasonForReplacement=3 THEN 'Expired'
	WHEN ReasonForReplacement=4 THEN 'Namechange'
    WHEN ReasonForReplacement=5 THEN 'OtherChange'
    ELSE 'Other'
END as ReasonForReplacement,
count(*) as counts from Person where ReasonForReplacement between 1 and 6 group by ReasonForReplacement"></asp:SqlDataSource>
=======
                
>>>>>>> b20ed38642b13fca7da6fba709d28a38cdd3f20b
            </div>

        </div>
        <div class="col m-2">
            <asp:Label ID="lblMonthlypiechart" runat="server" CssClass="fs-4" Font-Bold="true">Monthly Revenue Statistics</asp:Label>
            <%--Pie Chart 2--%>
            <div class="alert-warning" style="height:400px;">

            </div>
        </div>
    </div>
    <div class="col mt-3">
        <asp:Label ID="lblbargraphstat" CssClass="fs-4" runat="server" Font-Bold="true">Annualy Revenue Statistics</asp:Label>
        <%--Bar Graph--%>
        <div class="alert-warning m-2" style="height:400px;">

        </div>
    </div>
</asp:Content>
