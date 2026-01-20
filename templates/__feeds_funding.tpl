<div class="mb-4 pb-1">
	{if $funding['needs_subscription']}
		<!-- Blocco abbonamento richiesto con padding Tailwind -->
		<div class="px-5 py-5">
			{include file='_need_subscription.tpl'}
		</div>
	{else}
		<!-- Layout principale funding con griglia responsive Tailwind -->
		<div class="flex flex-col gap-6 md:flex-row">
			<div class="md:w-5/12">
				<!-- Copertina progetto con aspect ratio 4:3 -->
				<a href="{$system['system_url']}/posts/{$funding['post_id']}" class="block aspect-[4/3] overflow-hidden rounded-2xl bg-slate-100">
					<img src="{$system['system_uploads']}/{$funding['funding']['cover_image']}" class="h-full w-full object-cover" alt="{$funding['funding']['title']}">
				</a>
			</div>
			<div class="md:w-7/12 self-center x_funding_list">
				<!-- Data pubblicazione -->
				<div class="text-xs font-semibold uppercase text-slate-500">
					<small class="js_moment" data-time="{$funding['time']}">{$funding['time']}</small>
				</div>

				<!-- Titolo e descrizione funding -->
				<h4 class="mt-2 text-lg font-semibold text-slate-900 overflow-hidden">
					<a href="{$system['system_url']}/posts/{$funding['post_id']}" class="text-slate-900 hover:text-emerald-600 transition">
						{$funding['funding']['title']}
					</a>
				</h4>
				<div class="mt-2 text-sm text-slate-600 overflow-hidden">
					{$funding['text']|truncate:100}
				</div>

				<!-- Barra di avanzamento raccolta -->
				<div class="mt-4 h-2 w-full rounded-full bg-emerald-100" role="progressbar" aria-valuenow="{$funding['funding']['funding_completion']}" aria-valuemin="0" aria-valuemax="100">
					<div class="h-2 rounded-full bg-emerald-500/75" style="width: {$funding['funding']['funding_completion']}%"></div>
				</div>

				<!-- Totali raccolta e call-to-action -->
				<div class="mt-4 flex flex-wrap items-center justify-between gap-4">
					<div>
						<h5 class="text-base font-semibold text-slate-900">{print_money($funding['funding']['raised_amount'])}</h5>
						<p class="text-sm text-slate-500">{__("Raised of")} {print_money($funding['funding']['amount'])}</p>
					</div>
					<a href="{$system['system_url']}/posts/{$funding['post_id']}" class="inline-flex items-center gap-2 rounded-full bg-emerald-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-emerald-700" target="_blank" rel="noopener">
						{__("Donate")}
						<svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17.5 6.5L6 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 6H18V16" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
					</a>
				</div>
			</div>
		</div>
	{/if}
</div>
