<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
	<link rel="stylesheet" type="text/css">
	.widthheight{ width: 100%; height: 100%; }
	</link>
</head>
<body>
	<form id="form1" runat="server">
	<telerik:RadScriptManager ID="RadScriptManager1" runat="server">
		<Scripts>
			<%--Needed for JavaScript IntelliSense in VS2010--%>
			<%--For VS2008 replace RadScriptManager with ScriptManager--%>
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
		</Scripts>
	</telerik:RadScriptManager>
	<script type="text/javascript">
		//Put your JavaScript code here.
	</script>
	<telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
	</telerik:RadAjaxManager>
	<div>
		<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" EnableHistory="True" Height="600px"
			HorizontalAlign="NotSet" Width="100%">
			<telerik:RadSplitter ID="RadSplitter1" Runat="server" Height="100%" 
				Orientation="Horizontal" Width="100%">
				<telerik:RadPane ID="RadPane1" Runat="server" Height="30px">
					<telerik:RadTabStrip ID="RadTabStrip1" runat="server" Height="30px" 
						MultiPageID="RadMultiPage1" SelectedIndex="0" Width="100%">
						<Tabs>
							<telerik:RadTab runat="server" PageViewID="RadPageView1" Selected="True" 
								Text="Root RadTab1">
							</telerik:RadTab>
						</Tabs>
					</telerik:RadTabStrip>
					<br />
				</telerik:RadPane>
				<telerik:RadPane ID="RadPane2" Runat="server" CssClass="widthheight" 
					MinWidth="400">
					<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="100%" 
						SelectedIndex="0" Width="100%">
						<telerik:RadPageView ID="RadPageView1" runat="server" Height="100%" 
							Selected="True" Width="100%">
							<telerik:RadEditor ID="RadEditor1" runat="server" Width="100%">
							</telerik:RadEditor>
						</telerik:RadPageView>
					</telerik:RadMultiPage>
				</telerik:RadPane>
			</telerik:RadSplitter>
		</telerik:RadAjaxPanel>
	</div>
	</form>
</body>
</html>
