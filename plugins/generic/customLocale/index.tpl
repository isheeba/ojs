{**
 * plugins/generic/customLocale/index.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * List of operations this plugin can perform
 *
 *}
{strip}
{assign var="pageTitle" value="plugins.generic.customLocale.name"}
{include file="common/header.tpl"}
{/strip}

<p>{translate key="plugins.generic.customLocale.longDescription"}</p>

<div id="locales">
<h3>{translate key="plugins.generic.customLocale.availableLocales"}</h3>
<table class="listing">
	<tr><td colspan="3" class="headseparator">&nbsp;</td></tr>
	<tr class="heading" valign="bottom">
		<td>{translate key="plugins.generic.customLocale.localeKey"}</td>
		<td>{translate key="plugins.generic.customLocale.localeName"}</td>
		<td>{translate key="common.action"}</td>
	</tr>
	<tr><td colspan="3" class="headseparator">&nbsp;</td></tr>

{iterate from=locales key=localeKey item=localeName}
	<tr>
		<td>{$localeKey|escape}</td>
		<td>{$localeName|escape}</td>
		<td>
			<a href="{plugin_url path="edit" key=$localeKey}" class="action">{translate key="common.edit"}</a>
		</td>
	</tr>
	<tr>
		<td colspan="3" class="{if $locales->eof()}end{/if}separator">&nbsp;</td>
	</tr>
{/iterate}

{if $locales->wasEmpty()}
	<tr>
		<td colspan="3" class="nodata">{translate key="common.none"}</td>
	</tr>
	<tr>
		<td colspan="3" class="endseparator">&nbsp;</td>
	</tr>
{else}
	<tr>
		<td colspan="2" align="left">{page_info iterator=$locales}</td>
		<td align="right">{page_links anchor="locales" name="locales" iterator=$locales}</td>
	</tr>
{/if}

</table>
</div>

{include file="common/footer.tpl"}
