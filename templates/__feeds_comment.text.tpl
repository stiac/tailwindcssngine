<div class="comment-replace rounded-lg border border-slate-200 bg-white p-3 text-slate-900 shadow-sm">
	<!-- Testo del commento con tipografia Tailwind per una lettura chiara -->
	<div class="comment-text js_readmore text-sm leading-6 text-slate-900" dir="auto">{$_comment['text']}</div>
	<!-- Versione testuale pura per eventuali fallback -->
	<div class="comment-text-plain x-hidden text-sm text-slate-700">{$_comment['text_plain']}</div>
	{if $_comment['image'] != ""}
		<!-- Anteprima immagine con utility Tailwind e supporto lightbox -->
		<span class="text-link js_lightbox-nodata mt-2 inline-flex" data-image="{$system['system_uploads']}/{$_comment['image']}">
			<img alt="" class="attch_img h-auto max-w-full rounded-lg border border-slate-200 shadow-sm" src="{$system['system_uploads']}/{$_comment['image']}">
		</span>
	{/if}
	{if $_comment['voice_note'] != ""}
		<!-- Player audio con stile coerente Tailwind -->
		<div class="mt-3">
			<audio class="js_audio w-full rounded-md border border-slate-200 bg-slate-50 p-2" id="audio-{$_comment['comment_id']}" controls preload="auto" style="width: 100%; min-width: 200px;">
				<source src="{$system['system_uploads']}/{$_comment['voice_note']}" type="audio/mpeg">
				<source src="{$system['system_uploads']}/{$_comment['voice_note']}" type="audio/mp3">
				{__("Your browser does not support HTML5 audio")}
			</audio>
		</div>
	{/if}
</div>
