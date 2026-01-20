<div class="w-full px-2 mb-4 sm:w-1/2 lg:w-1/3 xl:w-1/4">
	<!-- Card wrapper con layout responsive basato su utility Tailwind -->
	<div class="album-card x_adslist overflow-hidden rounded-lg border border-slate-200 bg-white shadow-sm transition hover:shadow-md">
		<!-- Cover immagine con supporto blur esistente -->
		{if $album['cover']['blur']}<div class="x-blured">{/if}
		<a class="album-cover block aspect-square w-full bg-cover bg-center" href="{$system['system_url']}/{$album['path']}/album/{$album['album_id']}" style="background-image:url({$album['cover']['source']});"></a>
		{if $album['cover']['blur']}</div>{/if}
		<div class="album-details p-3">
			<div class="truncate">
				<!-- Titolo album con tipografia e hover Tailwind -->
				<a href="{$system['system_url']}/{$album['path']}/album/{$album['album_id']}" class="text-sm font-semibold text-slate-900 hover:text-slate-700">{__($album['title'])}</a>
			</div>
			<div class="mt-2 flex items-center justify-between text-xs text-slate-500">
				<span>{$album['photos_count']} {__("photos")}</span>
				<!-- Indicatori privacy con tooltip -->
				<div class="text-slate-400">
					{if $album['privacy'] == "me"}
						<i class="fa fa-user-lock" data-bs-toggle="tooltip" title='{__("Shared with")}: {__("Only Me")}'></i>
					{elseif $album['privacy'] == "friends"}
						<i class="fa fa-user-friends" data-bs-toggle="tooltip" title='{__("Shared with")}: {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}'></i>
					{elseif $album['privacy'] == "public"}
						<i class="fa fa-globe-americas" data-bs-toggle="tooltip" title='{__("Shared with")}: {__("Public")}'></i>
					{elseif $album['privacy'] == "custom"}
						<i class="fa fa-cog" data-bs-toggle="tooltip" title='{__("Shared with")} {__("Custom People")}'></i>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
