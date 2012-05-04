<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
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
		<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" EnableHistory="True" Height="100%"
			HorizontalAlign="NotSet" Width="100%">
			<telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"
				SelectedIndex="0">
				<Tabs>
					<telerik:RadTab runat="server" PageViewID="RadPageView1" Selected="True" Text="Root RadTab1">
					</telerik:RadTab>
				</Tabs>
			</telerik:RadTabStrip>
			<telerik:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0">
				<telerik:RadPageView ID="RadPageView1" runat="server" Selected="True">
					<telerik:RadEditor ID="RadEditor1" runat="server" Width="100%">
					</telerik:RadEditor>
				</telerik:RadPageView>
			</telerik:RadMultiPage>
		</telerik:RadAjaxPanel>
	</div>
	</form>
</body>
</html>
