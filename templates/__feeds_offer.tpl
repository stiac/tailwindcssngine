<div class="mb-4 w-full md:w-1/2">
	<!-- Offer card container -->
	<div class="h-full rounded-lg border border-slate-200 bg-white p-4 shadow-sm">
		{if $post['needs_subscription']}
			<!-- Subscription required state -->
			<a href="{$system['system_url']}/posts/{$post['post_id']}" class="block">
				{include file='_need_subscription.tpl'}
			</a>
		{else}
			<!-- Offer content -->
			<div class="flex items-center gap-4">
				<div class="w-16 shrink-0 sm:w-20">
					<a href="{$system['system_url']}/posts/{$post['post_id']}" class="block overflow-hidden rounded-lg">
						<img src="{$system['system_uploads']}/{$post['offer']['thumbnail']}" alt="" class="aspect-square h-full w-full object-cover">
					</a>
				</div>
				<div class="min-w-0 flex-1">
					{if $_boosted}
						<!-- Promoted badge -->
						<div class="mb-1 inline-flex items-center rounded-md bg-amber-500/90 px-2 py-0.5 text-xs font-semibold text-white">
							{__("Promoted")}
						</div>
					{/if}
					<h6 class="truncate text-sm font-semibold text-slate-900">
						<a href="{$system['system_url']}/posts/{$post['post_id']}" class="transition hover:text-slate-700">{$post['offer']['meta_title']}</a>
					</h6>
					{if $post['offer']['price']}
						<div class="mt-1 text-sm text-slate-700">
							{__("From")} <strong class="font-semibold">{print_money($post['offer']['price'])}</strong>
						</div>
					{/if}
					{if $post['offer']['end_date']}
						<div class="mt-1 text-xs text-slate-500">
							{__("Expires")}: {$post['offer']['end_date']|date_format:$system['system_date_format']}
						</div>
					{/if}
				</div>
			</div>
		{/if}
	</div>
</div>
