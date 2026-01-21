<footer class="mini-footer mb-3 px-3 text-sm leading-4 text-slate-500">
	<!-- Footer top row: copyright + language dropdown (Tailwind utilities for layout). -->
	<div class="copyrights flex items-center justify-between gap-3">
		<span class="flex-none text-slate-500">&copy; {date('Y')} {__($system['system_title'])}</span>
		<!-- Language dropdown (Bootstrap behavior + Tailwind spacing/colors). -->
		<div class="dropdown relative">
			<a href="javascript:void(0);" class="language-dropdown inline-flex items-center gap-1 text-slate-500 transition-colors hover:text-slate-600" data-bs-toggle="dropdown">
				<span>{$system['language']['title']}</span>
			</a>
			<div class="dropdown-menu dropdown-menu-end mt-2">
				<div class="js_scroller">
					{foreach $system['languages'] as $language}
						<a class="dropdown-item flex items-center gap-2 text-slate-600" href="?lang={$language['code']}">
							<img width="16" height="16" class="flex-none" src="{$language['flag']}">{$language['title']}
						</a>
					{/foreach}
				</div>
			</div>
		</div>
		<!-- End language dropdown. -->
	</div>
	<!-- Footer links row: Tailwind utilities for wrap, gap and hover states. -->
	<div class="links mt-1 flex flex-wrap items-center gap-x-3 gap-y-1">
		{if $static_pages}
			{foreach $static_pages as $static_page}
				{if $static_page['page_in_footer']}
					<a href="{$static_page['url']}" class="text-slate-500 transition-colors hover:text-slate-700">
						{__($static_page['page_title'])}
					</a>
				{/if}
			{/foreach}
		{/if}
		{if $system['contact_enabled']}
			<a href="{$system['system_url']}/contacts" class="text-slate-500 transition-colors hover:text-slate-700">
				{__("Contact Us")}
			</a>
		{/if}
		{if $system['support_center_enabled']}
			<a href="{$system['system_url']}/support" class="text-slate-500 transition-colors hover:text-slate-700">
				{__("Support Center")}
			</a>
		{/if}
		{if $system['directory_enabled']}
			<a href="{$system['system_url']}/directory" class="text-slate-500 transition-colors hover:text-slate-700">
				{__("Directory")}
			</a>
		{/if}
		{if $system['developers_apps_enabled'] || $system['developers_share_enabled']}
			<a href="{$system['system_url']}/developers{if !$system['developers_apps_enabled']}/share{/if}" class="text-slate-500 transition-colors hover:text-slate-700">
				{__("Developers")}
			</a>
		{/if}
	</div>
</footer>
