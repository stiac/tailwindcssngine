<div class="post-replace flex flex-col gap-2">
	{if is_array($post['colored_pattern'])}
		<!-- Post con pattern colorato: layout e tipografia Tailwind -->
		<div class="post-colored rounded-xl overflow-hidden" {if $post['colored_pattern']['type'] == "color"} style="background-image: linear-gradient(45deg, {$post['colored_pattern']['background_color_1']}, {$post['colored_pattern']['background_color_2']});" {else} style="background-image: url({$system['system_uploads']}/{$post['colored_pattern']['background_image']})" {/if}>
			<div class="post-colored-text-wrapper js_scroller max-h-60 overflow-y-auto" data-slimScroll-height="240">
				<div class="post-text text-base leading-relaxed" dir="auto" style="color: {$post['colored_pattern']['text_color']};">
					{$post['text']}
				</div>
			</div>
		</div>
	{else}
		<!-- Post standard: utility Tailwind per testo leggibile -->
		<div class="post-text js_readmore text-base leading-relaxed text-gray-900" dir="auto">{$post['text']}</div>
	{/if}
	<!-- Contenuti di supporto per traduzioni e testo plain -->
	<div class="post-text-translation x-hidden text-base leading-relaxed text-gray-900" dir="auto"></div>
	<div class="post-text-plain x-hidden">{$post['text_plain']}</div>
</div>
