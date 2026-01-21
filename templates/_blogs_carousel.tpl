<div class="mb-3 overflow-hidden content">
	<!-- Titolo del widget blog -->
	<h6 class="headline-font fw-semibold m-0 side_widget_title text-sm text-slate-700">
		{__("Latest Blogs")}
	</h6>
	<div class="px-2 py-1 side_item_list">
		<!-- Carousel con classi Tailwind per layout e spaziatura -->
		<div id="blogs-carousel" class="carousel slide content relative rounded-3 p-2" data-bs-ride="carousel">
			<div class="carousel-inner">
				{foreach $latest_blogs as $index => $blog}
					<div class="carousel-item {if $index == 0}active{/if}">
						<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" class="body-color block rounded-lg p-2 transition hover:bg-slate-50 focus:outline-none focus-visible:ring-2 focus-visible:ring-slate-400">
							<!-- Copertina blog con ratio 4:3 -->
							<div class="blog-image block w-full aspect-[4/3] overflow-hidden rounded-lg bg-slate-100">
								<img src="{$blog['blog']['parsed_cover']}" class="h-full w-full object-cover" alt="{$blog['blog']['title']}">
							</div>
							<div class="mt-2 space-y-1">
								<div class="fw-semibold text-sm text-slate-800 line-clamp-1">
									{$blog['blog']['title']}
								</div>
								<p class="m-0 text-xs text-slate-500 line-clamp-2">
									{$blog['blog']['text_snippet']|truncate:100}
								</p>
							</div>
						</a>
					</div>
				{/foreach}
			</div>
			<!-- Controllo precedente -->
			<button class="carousel-control-prev absolute left-2 top-1/2 inline-flex h-8 w-8 -translate-y-1/2 items-center justify-center rounded-full bg-white/90 text-slate-600 shadow-sm ring-1 ring-slate-200 transition hover:bg-white hover:text-slate-800 focus:outline-none focus-visible:ring-2 focus-visible:ring-slate-400" type="button" data-bs-target="#blogs-carousel" data-bs-slide="prev">
				<svg class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
					<path fill-rule="evenodd" d="M12.78 4.22a.75.75 0 0 1 0 1.06L8.06 10l4.72 4.72a.75.75 0 1 1-1.06 1.06l-5.25-5.25a.75.75 0 0 1 0-1.06l5.25-5.25a.75.75 0 0 1 1.06 0Z" clip-rule="evenodd" />
				</svg>
			</button>
			<!-- Controllo successivo -->
			<button class="carousel-control-next absolute right-2 top-1/2 inline-flex h-8 w-8 -translate-y-1/2 items-center justify-center rounded-full bg-white/90 text-slate-600 shadow-sm ring-1 ring-slate-200 transition hover:bg-white hover:text-slate-800 focus:outline-none focus-visible:ring-2 focus-visible:ring-slate-400" type="button" data-bs-target="#blogs-carousel" data-bs-slide="next">
				<svg class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
					<path fill-rule="evenodd" d="M7.22 4.22a.75.75 0 0 0 0 1.06L11.94 10l-4.72 4.72a.75.75 0 0 0 1.06 1.06l5.25-5.25a.75.75 0 0 0 0-1.06L8.28 4.22a.75.75 0 0 0-1.06 0Z" clip-rule="evenodd" />
				</svg>
			</button>
		</div>
	</div>
	<!-- Link a tutti i blog -->
	<a class="main px-3 d-block side_item_hover side_item_list text-sm text-slate-700 hover:text-slate-900" href="{$system['system_url']}/blogs">
		{__("See All")}
	</a>
</div>
