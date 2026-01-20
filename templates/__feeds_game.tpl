{if $_tpl != "list"}
	<li class="mb-6">
		<!-- Card gioco con utilities Tailwind CSS -->
		<a href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}" class="block aspect-square overflow-hidden rounded-2xl bg-slate-100 shadow-sm ring-1 ring-slate-200">
			<img alt="{$_game['title']}" src="{$_game['thumbnail']}" class="h-full w-full object-cover transition duration-300 ease-out hover:scale-105" />
		</a>
		<!-- Dettagli gioco -->
		<div class="mt-3 text-center">
			<h5 class="text-base font-semibold text-slate-900 {if !$_game['played']}mb-1{/if} truncate">
				<a class="text-slate-900 hover:text-slate-700" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}" title="{$_game['title']}">{$_game['title']}</a>
			</h5>
			{if $_game['played']}
				<div class="mb-2 text-xs text-slate-500">
					{__("Played")}: <span class="js_moment" data-time="{$_game['last_played_time']}">{$_game['last_played_time']}</span>
				</div>
			{/if}
			<a class="inline-flex items-center justify-center rounded-full bg-slate-900 px-4 py-2 text-xs font-semibold text-white shadow-sm transition hover:bg-slate-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-slate-900" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">
				{__("Play")}
			</a>
		</div>
	</li>
{elseif $_tpl == "list"}
	<li class="px-3 py-2">
		<!-- Riga compatta con layout flex e spacing Tailwind -->
		<div class="flex items-center justify-between gap-3">
			<div class="flex min-w-0 items-center gap-3">
				<a class="relative shrink-0" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">
					<img src="{$_game['thumbnail']}" alt="{$_game['title']}" class="h-10 w-10 rounded-full object-cover ring-1 ring-slate-200">
				</a>
				<div class="min-w-0">
					<div class="truncate text-sm font-semibold text-slate-900">
						<a href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}" class="text-slate-900 hover:text-slate-700">
							{$_game['title']}
						</a>
					</div>
				</div>
			</div>
			<div class="shrink-0">
				<!-- Pulsante azione -->
				<a class="inline-flex items-center justify-center rounded-full bg-slate-900 px-4 py-2 text-xs font-semibold text-white shadow-sm transition hover:bg-slate-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-slate-900" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">
					{__("Play")}
				</a>
				<!-- Fine pulsante azione -->
			</div>
		</div>
	</li>
{/if}
