{if $_registration}
	{foreach $_custom_fields as $custom_field}
		<!-- Campo personalizzato per registrazione con classi Tailwind CSS -->
		<div class="space-y-1">
			{if $custom_field['type'] == "textbox"}
				<input class="block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm placeholder-slate-400 focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}" type="text" placeholder="{__($custom_field['label'])}" {if $custom_field['mandatory'] && !$_search}required{/if}>
			{elseif $custom_field['type'] == "textarea"}
				<textarea class="block w-full min-h-[96px] rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm placeholder-slate-400 focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}" placeholder="{__($custom_field['label'])}" {if $custom_field['mandatory'] && !$_search}required{/if}></textarea>
			{elseif $custom_field['type'] == "selectbox"}
				<select class="block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}" {if $custom_field['mandatory'] && !$_search}required{/if}>
					{if $_search}
						<option selected value="any">{__("Any")}</option>
					{else}
						<option selected value="none">{__("Select")} {__($custom_field['label'])}</option>
					{/if}
					{foreach $custom_field['options'] as $id => $value}
						<option value="{$id}">{__($value|trim)}</option>
					{/foreach}
				</select>
			{elseif $custom_field['type'] == "multipleselectbox"}
				<select class="block w-full min-h-[128px] rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}[]" multiple {if $custom_field['mandatory'] && !$_search}required{/if}>
					{foreach $custom_field['options'] as $id => $value}
						<option value="{$id}">{__($value|trim)}</option>
					{/foreach}
				</select>
			{/if}
			{if $custom_field['description'] && !$_search}
				<!-- Descrizione del campo per guidare l'utente -->
				<p class="text-xs text-slate-500">
					{__($custom_field['description'])}
				</p>
			{/if}
			<label class="text-sm font-medium text-slate-700">{__($custom_field['label'])} {if $custom_field['mandatory'] && !$_search}*{/if}</label>
		</div>
	{/foreach}
{else}
	{foreach $_custom_fields as $custom_field}
		<!-- Campo personalizzato per modifica profilo con classi Tailwind CSS -->
		<div class="space-y-1">
			{if $custom_field['type'] == "textbox"}
				<input class="block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm placeholder-slate-400 focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" type="text" name="fld_{$custom_field['field_id']}" placeholder="{__($custom_field['label'])}" value="{$custom_field['value']}" {if $custom_field['mandatory']}required{/if}>
			{elseif $custom_field['type'] == "textarea"}
				<textarea class="block w-full min-h-[96px] rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm placeholder-slate-400 focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" placeholder="{__($custom_field['label'])}" name="fld_{$custom_field['field_id']}" {if $custom_field['mandatory']}required{/if}>{$custom_field['value']}</textarea>
			{elseif $custom_field['type'] == "selectbox"}
				<select class="block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}" {if $custom_field['mandatory']}required{/if}>
					<option {if $custom_field['value'] == ""}selected{/if} value="none">{__("Select")} {__($custom_field['label'])}</option>
					{foreach $custom_field['options'] as $id => $value}
						<option {if $custom_field['value'] == $value}selected{/if} value="{$id}">{__($value|trim)}</option>
					{/foreach}
				</select>
			{elseif $custom_field['type'] == "multipleselectbox"}
				<select class="block w-full min-h-[128px] rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500" name="fld_{$custom_field['field_id']}[]" multiple {if $custom_field['mandatory']}required{/if}>
					{foreach $custom_field['options'] as $id => $value}
						<option {if isset($custom_field['value']) && in_array($id, $custom_field['value'])}selected{/if} value="{$id}">{__($value|trim)}</option>
					{/foreach}
				</select>
			{/if}
			{if $custom_field['description']}
				<!-- Descrizione del campo per guidare l'utente -->
				<p class="text-xs text-slate-500">
					{__($custom_field['description'])}
				</p>
			{/if}
			<label class="text-sm font-medium text-slate-700">{__($custom_field['label'])} {if $custom_field['mandatory']}*{/if}</label>
		</div>
	{/foreach}
{/if}
