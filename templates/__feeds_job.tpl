<div class="w-full md:w-1/2 lg:w-1/3 mb-6">
	<!-- Job card with Tailwind utilities for layout and spacing -->
	<div class="x_adslist flex h-full flex-col rounded-2xl bg-white p-5 shadow-sm ring-1 ring-slate-200/70">
		{if $post['needs_subscription']}
			<!-- Subscription gate -->
			<a href="{$system['system_url']}/posts/{$post['post_id']}" class="block rounded-xl bg-slate-50 p-4">
				{include file='_need_subscription.tpl'}
			</a>
		{else}
			<!-- Cover image -->
			<a href="{$system['system_url']}/posts/{$post['post_id']}" class="group relative block aspect-[4/3] overflow-hidden rounded-xl">
				<img src="{$system['system_uploads']}/{$post['job']['cover_image']}" alt="{$post['job']['title']}" class="h-full w-full object-cover transition duration-300 group-hover:scale-105">
				{if $_boosted}
					<!-- Promoted badge -->
					<div class="absolute left-3 top-3">
						<span class="inline-flex items-center rounded-full bg-amber-500 px-3 py-1 text-xs font-semibold text-white shadow">
							{__("Promoted")}
						</span>
					</div>
				{/if}
			</a>

			<!-- Job title -->
			<div class="mt-4 text-lg font-semibold text-slate-900 truncate">
				<a href="{$system['system_url']}/posts/{$post['post_id']}" class="body-color">
					{$post['job']['title']}
				</a>
			</div>
			<!-- Salary range -->
			<div class="text-sm text-slate-600">
				{print_money($post['job']['salary_minimum'], $post['job']['salary_minimum_currency']['symbol'], $post['job']['salary_minimum_currency']['dir'])} - {print_money($post['job']['salary_maximum'], $post['job']['salary_maximum_currency']['symbol'], $post['job']['salary_maximum_currency']['dir'])}
				<span class="text-xs text-slate-500">/ {$post['job']['pay_salary_per_meta']}</span>
			</div>

			<!-- Job type -->
			<div class="mt-3 flex items-center gap-2 text-sm text-slate-500">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" color="currentColor" fill="none" class="shrink-0"><path d="M3 11L3.15288 14.2269C3.31714 17.6686 3.39927 19.3894 4.55885 20.4447C5.71843 21.5 7.52716 21.5 11.1446 21.5H12.8554C16.4728 21.5 18.2816 21.5 19.4412 20.4447C20.6007 19.3894 20.6829 17.6686 20.8471 14.2269L21 11" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M2.84718 10.4431C4.54648 13.6744 8.3792 15 12 15C15.6208 15 19.4535 13.6744 21.1528 10.4431C21.964 8.90056 21.3498 6 19.352 6H4.648C2.65023 6 2.03603 8.90056 2.84718 10.4431Z" stroke="currentColor" stroke-width="1.75"></path><path d="M11.9999 11H12.0089" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M15.9999 6L15.9116 5.69094C15.4716 4.15089 15.2516 3.38087 14.7278 2.94043C14.204 2.5 13.5083 2.5 12.1168 2.5H11.8829C10.4915 2.5 9.79575 2.5 9.27198 2.94043C8.7482 3.38087 8.52819 4.15089 8.08818 5.69094L7.99988 6" stroke="currentColor" stroke-width="1.75"></path></svg>
				<span class="truncate">{$post['job']['type_meta']}</span>
			</div>
			<!-- Job location -->
			<div class="mt-2 flex items-center gap-2 text-sm text-slate-500">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" color="currentColor" fill="none" class="shrink-0"><path d="M14.5 9C14.5 10.3807 13.3807 11.5 12 11.5C10.6193 11.5 9.5 10.3807 9.5 9C9.5 7.61929 10.6193 6.5 12 6.5C13.3807 6.5 14.5 7.61929 14.5 9Z" stroke="currentColor" stroke-width="1.75"></path><path d="M18.2222 17C19.6167 18.9885 20.2838 20.0475 19.8865 20.8999C19.8466 20.9854 19.7999 21.0679 19.7469 21.1467C19.1724 22 17.6875 22 14.7178 22H9.28223C6.31251 22 4.82765 22 4.25311 21.1467C4.20005 21.0679 4.15339 20.9854 4.11355 20.8999C3.71619 20.0475 4.38326 18.9885 5.77778 17" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M13.2574 17.4936C12.9201 17.8184 12.4693 18 12.0002 18C11.531 18 11.0802 17.8184 10.7429 17.4936C7.6543 14.5008 3.51519 11.1575 5.53371 6.30373C6.6251 3.67932 9.24494 2 12.0002 2C14.7554 2 17.3752 3.67933 18.4666 6.30373C20.4826 11.1514 16.3536 14.5111 13.2574 17.4936Z" stroke="currentColor" stroke-width="1.75"></path></svg>
				<span class="truncate">{if $post['job']['location']}{$post['job']['location']}{else}{__("N/A")}{/if}</span>
			</div>
			{if $system['posts_reviews_enabled']}
				<!-- Reviews meta -->
				<div class="mt-2 flex items-center gap-2 text-sm text-slate-500">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" color="currentColor" fill="none" class="shrink-0"><path d="M13.7276 3.44418L15.4874 6.99288C15.7274 7.48687 16.3673 7.9607 16.9073 8.05143L20.0969 8.58575C22.1367 8.92853 22.6167 10.4206 21.1468 11.8925L18.6671 14.3927C18.2471 14.8161 18.0172 15.6327 18.1471 16.2175L18.8571 19.3125C19.417 21.7623 18.1271 22.71 15.9774 21.4296L12.9877 19.6452C12.4478 19.3226 11.5579 19.3226 11.0079 19.6452L8.01827 21.4296C5.8785 22.71 4.57865 21.7522 5.13859 19.3125L5.84851 16.2175C5.97849 15.6327 5.74852 14.8161 5.32856 14.3927L2.84884 11.8925C1.389 10.4206 1.85895 8.92853 3.89872 8.58575L7.08837 8.05143C7.61831 7.9607 8.25824 7.48687 8.49821 6.99288L10.258 3.44418C11.2179 1.51861 12.7777 1.51861 13.7276 3.44418Z" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round" /></svg>
					<span class="truncate">
						{$post['reviews_count']} {__("Reviews")}
						{if $post['post_rate']}
							({$post['post_rate']|number_format:1})
						{/if}
					</span>
				</div>
			{/if}

			{if $post['author_id'] != $user->_data['user_id'] }
				<!-- Apply CTA -->
				<button type="button" class="js_job-apply mt-4 w-full rounded-lg bg-slate-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-slate-800 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-slate-900/50" data-toggle="modal" data-size="large" data-url="posts/job.php?do=application&post_id={$post['post_id']}">
					{__("Apply Now")}
				</button>
			{/if}
		{/if}
	</div>
</div>
