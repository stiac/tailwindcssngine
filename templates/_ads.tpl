{if $_master}

	{if $_ads && !in_array($page, ["static", "settings", "admin"])}
		<!-- ads: wrapper con utility Tailwind per card e spaziature -->
		{foreach $_ads as $ads_unit}
			<div class="mb-3 overflow-hidden content rounded-xl border border-slate-200 bg-white shadow-sm">
				<!-- ads: titolo sezione -->
				<h6 class="headline-font fw-semibold m-0 side_widget_title px-3 pt-3 text-xs uppercase tracking-wide text-slate-500">
					{__("Sponsored")}
				</h6>
				<!-- ads: contenuto annunci -->
				<div class="px-3 pb-3 pt-2 side_item_list text-sm text-slate-700">
					{$ads_unit['code']}
				</div>
			</div>
		{/foreach}
		<!-- ads -->
	{/if}

{else}

	{if $ads}
		<!-- ads: wrapper con utility Tailwind per card e spaziature -->
		{foreach $ads as $ads_unit}
			<div class="mb-3 overflow-hidden content rounded-xl border border-slate-200 bg-white shadow-sm">
				<!-- ads: titolo sezione -->
				<h6 class="headline-font fw-semibold m-0 side_widget_title px-3 pt-3 text-xs uppercase tracking-wide text-slate-500">
					{__("Sponsored")}
				</h6>
				<!-- ads: contenuto annunci -->
				<div class="px-3 pb-3 pt-2 side_item_list text-sm text-slate-700">
					{$ads_unit['code']}
				</div>
			</div>
		{/foreach}
		<!-- ads -->
	{/if}

{/if}
