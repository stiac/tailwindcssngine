{if $_tpl == "featured"}
	{if $_iteration == 1}
		<div class="w-full mb-6">
			<!-- Featured blog card with Tailwind layout utilities -->
			<div class="x_feat_blog relative overflow-hidden rounded-2xl bg-slate-900/90 p-6 shadow-lg">
				{if $blog['needs_payment']}
					<div class="px-5 py-5">
						{include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price']}
					</div>
				{elseif $blog['needs_subscription']}
					<div class="px-5 py-5">
						{include file='_need_subscription.tpl'}
					</div>
				{elseif $blog['needs_pro_package']}
					<div class="px-5 py-5">
						{include file='_need_pro_package.tpl'}
					</div>
				{elseif $blog['needs_age_verification']}
					<div class="px-5 py-5">
						{include file='_need_age_verification.tpl'}
					</div>
				{else}
					<!-- Background image and gradient overlay -->
					<div class="x_feat_blog_bg absolute inset-0 overflow-hidden">
						<div class="x_feat_blog_img_bg">
							<img src="{$blog['blog']['parsed_cover']}" alt="" class="h-full w-full object-cover">
						</div>
						<div class="x_feat_blog_grad_bg absolute inset-0"></div>
					</div>
					<!-- Content grid -->
					<div class="relative grid gap-6 md:grid-cols-2">
						<div class="order-2 md:order-1">
							<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="blog-content flex h-full flex-col text-white">
								<h3 class="text-2xl font-semibold leading-snug overflow-hidden">{$blog['blog']['title']}</h3>
								<div class="text-sm text-slate-200/90 overflow-hidden mb-4">{$blog['blog']['text_snippet']|truncate:200}</div>
								<div class="mt-auto flex items-center gap-3 min-w-0 x_user_info">
									<img src="{$blog['post_author_picture']}" alt="{$blog['post_author_name']}" class="h-10 w-10 rounded-full object-cover flex-none">
									<div class="min-w-0">
										<div class="font-semibold text-white truncate">{$blog['post_author_name']}</div>
										<p class="m-0 text-sm text-slate-200/80 truncate">
											<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
										</p>
									</div>
								</div>
							</a>
						</div>
						<div class="order-1 md:order-2 self-center mb-4 md:mb-0">
							<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="blog-image block w-full aspect-[4/3]">
								<img src="{$blog['blog']['parsed_cover']}" class="h-full w-full rounded-2xl object-cover">
							</a>
						</div>
					</div>
				{/if}
			</div>
		</div>
	{else}
		<div class="w-full sm:w-1/2 lg:w-1/3 mb-6">
			<!-- Standard featured card -->
			<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="blog-container group relative flex h-full flex-col overflow-hidden rounded-2xl bg-white shadow-sm ring-1 ring-slate-200/70 transition hover:-translate-y-0.5 hover:shadow-lg body-color">
				{if $blog['needs_payment']}
					<div class="px-5 py-5">
						{include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price']}
					</div>
				{elseif $blog['needs_subscription']}
					<div class="px-5 py-5">
						{include file='_need_subscription.tpl'}
					</div>
				{elseif $blog['needs_pro_package']}
					<div class="px-5 py-5">
						{include file='_need_pro_package.tpl'}
					</div>
				{elseif $blog['needs_age_verification']}
					<div class="px-5 py-5">
						{include file='_need_age_verification.tpl'}
					</div>
				{else}
					<div class="blog-image aspect-[4/3] flex-none overflow-hidden">
						<img src="{$blog['blog']['parsed_cover']}" class="h-full w-full object-cover transition duration-300 group-hover:scale-105">
					</div>
					<div class="blog-content flex flex-1 flex-col gap-3 p-5">
						<h6 class="text-lg font-semibold text-slate-900 overflow-hidden">{$blog['blog']['title']}</h6>
						<div class="text-sm text-slate-600 overflow-hidden">{$blog['blog']['text_snippet']|truncate:400}</div>
						<div class="mt-auto flex items-center gap-3 text-sm text-slate-500 min-w-0 x_user_info">
							<img src="{$blog['post_author_picture']}" alt="{$blog['post_author_name']}" class="h-9 w-9 rounded-full object-cover flex-none">
							<div class="min-w-0">
								<div class="font-medium text-slate-800 truncate">{$blog['post_author_name']}</div>
								<p class="m-0 text-slate-500 truncate text-sm">
									<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
								</p>
							</div>
						</div>
					</div>
				{/if}
			</a>
		</div>
	{/if}
{else}
	{if $_small}
		{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}
		{else}
			<!-- Compact list item -->
			<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="body-color feeds-item block rounded-xl px-4 py-3 transition hover:bg-slate-50 side_item_hover side_item_list" title="{$blog['blog']['title']}">
				<div class="flex items-center justify-between gap-4 x_user_info">
					<div class="min-w-0">
						<div class="font-semibold text-slate-900 truncate">
							{$blog['blog']['title']}
						</div>
						<p class="m-0 text-sm text-slate-500 truncate">
							{$blog['blog']['text_snippet']|truncate:400}
						</p>
					</div>
					<div class="flex-none">
						<img src="{$blog['blog']['parsed_cover']}" class="h-14 w-20 rounded-lg object-cover">
					</div>
				</div>
			</a>
		{/if}
	{else}
		<div class="w-full md:w-1/2 mb-6">
			<!-- Standard feed card -->
			<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="blog-container group relative flex h-full flex-col overflow-hidden rounded-2xl bg-white shadow-sm ring-1 ring-slate-200/70 transition hover:-translate-y-0.5 hover:shadow-lg body-color">
				{if $blog['needs_payment']}
					<div class="px-5 py-5">
						{include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price']}
					</div>
				{elseif $blog['needs_subscription']}
					<div class="px-5 py-5">
						{include file='_need_subscription.tpl'}
					</div>
				{elseif $blog['needs_pro_package']}
					<div class="px-5 py-5">
						{include file='_need_pro_package.tpl'}
					</div>
				{elseif $blog['needs_age_verification']}
					<div class="px-5 py-5">
						{include file='_need_age_verification.tpl'}
					</div>
				{else}
					<div class="blog-image aspect-[4/3] flex-none overflow-hidden">
						<img src="{$blog['blog']['parsed_cover']}" class="h-full w-full object-cover transition duration-300 group-hover:scale-105">
					</div>
					<div class="blog-content flex flex-1 flex-col gap-3 p-5">
						<h6 class="text-lg font-semibold text-slate-900 overflow-hidden">{$blog['blog']['title']}</h6>
						<div class="text-sm text-slate-600 overflow-hidden">{$blog['blog']['text_snippet']|truncate:400}</div>
						<div class="mt-auto flex items-center gap-3 text-sm text-slate-500 min-w-0 x_user_info">
							<img src="{$blog['post_author_picture']}" alt="{$blog['post_author_name']}" class="h-9 w-9 rounded-full object-cover flex-none">
							<div class="min-w-0">
								<div class="font-medium text-slate-800 truncate">{$blog['post_author_name']}</div>
								<p class="m-0 text-slate-500 truncate text-sm">
									<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
								</p>
							</div>
						</div>
					</div>
				{/if}
			</a>
		</div>
	{/if}
{/if}
