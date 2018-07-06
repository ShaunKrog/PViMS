﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="_KnockoutTemplates.ascx.cs" Inherits="PVIMS.Web._KnockoutTemplates" %>
<script type="text/html" id="org-unit-tree-item">
	<li>
	<div data-bind="visible: isLoading">
		<i class="fa fa-cog fa-spin"></i> <em>loading...</em>
	</div>
	<!-- ko if: !isLoading() -->
	<label class="checkbox" style="display:inline">
		<input type="checkbox" data-bind="checked: checked" />
		<i></i>

	</label>

	<i data-bind="	attr: { class: 'fa ' + icon(), title: orgUnitTypeName }"></i>
	<a href="javascript:;" data-bind="click: toggleExpanded">
		<i class="fa fa-caret-right" data-bind="visible: !expanded()"></i>
		<i class="fa fa-caret-down" data-bind="visible: expanded"></i>
		&nbsp;<strong style="font-weight: normal;text-transform: capitalize;" data-bind="text: name"></strong>
	</a>

	<!-- /ko -->

	<ul data-bind="template: { name: 'org-unit-tree-item', foreach: filteredChildren }, visible: expanded"></ul>
</li>
</script>