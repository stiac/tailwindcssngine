<li class="list-none">
	<!-- Contenitore principale messaggio: utility Tailwind per layout flessibile e spaziature -->
	<div class="conversation clearfix d-flex align-items-start py-1 gap-1 flex-wrap position-relative w-100 flex flex-wrap items-start gap-2 py-1 relative w-full {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}right justify-content-end justify-end{/if}" id="{$message['message_id']}">
		{if (!isset($is_me) || !$is_me) && $message['user_id'] != $user->_data['user_id']}
			<!-- Avatar utente: dimensioni e bordi con Tailwind -->
			<a href="{$system['system_url']}/{$message['user_name']}" class="conversation-user overflow-hidden rounded-circle flex-0 h-10 w-10 overflow-hidden rounded-full flex-none">
				<img src="{$message['user_picture']}" alt="" class="rounded-circle w-100 h-100 h-full w-full object-cover">
			</a>
		{/if}
		<!-- Corpo del messaggio: allineamenti e spaziature Tailwind -->
		<div class="conversation-body position-relative d-flex flex-column relative flex flex-col {if $system['chat_translation_enabled']}js_chat-translator{/if} {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}align-items-end items-end{else}align-items-start items-start{/if}">
			<!-- message text -->
			{if !is_empty($message['message'])}
				<!-- Testo messaggio: tipografia e padding Tailwind -->
				<div class="text max-w-[70ch] rounded-lg bg-slate-100 px-3 py-2 text-sm text-slate-800 shadow-sm {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}js_chat-color-me{/if}">{$message['message']}</div>
			{/if}
	  
			{if $message['image']}
				<!-- Immagine allegata: supporto lightbox e cornice Tailwind -->
				<span class="main pointer js_lightbox-nodata {if $message['message'] != ''}mt5 mt-2{/if}" data-image="{$system['system_uploads']}/{$message['image']}">
					<img alt="" class="img-fluid max-w-xs rounded-lg shadow-sm" src="{$system['system_uploads']}/{$message['image']}">
				</span>
			{/if}
			
			{if $message['video']}
				<!-- Video allegato: spaziatura e bordi Tailwind -->
				<div class="{if $message['message'] != ''}mt5 mt-2{/if}">
					<video class="video-wrapper rounded-lg shadow-sm" src="{$system['system_uploads']}/{$message['video']}" controls></video>
				</div>
			{/if}
	  
			{if $message['voice_note']}
				<!-- Nota vocale: larghezza minima e stile Tailwind -->
				<audio class="js_audio w-100 mt-2 w-full" id="audio-{$message['message_id']}" controls preload="auto" style="min-width: 220px;">
					<source src="{$system['system_uploads']}/{$message['voice_note']}" type="audio/mpeg">
					<source src="{$system['system_uploads']}/{$message['voice_note']}" type="audio/mp3">
					{__("Your browser does not support HTML5 audio")}
				</audio>
			{/if}

			{if $message['post']}
				<!-- Card prodotto: layout ispirato a Tailwind UI -->
				<div class="text chat-product w-full max-w-sm rounded-lg border border-slate-200 bg-white p-3 shadow-sm">
					<div class="position-relative product relative">
						<a href="{$system['system_url']}/posts/{$message['post']['post_id']}" class="product-image d-block position-relative w-100 overflow-hidden relative block w-full overflow-hidden rounded-lg">
							<img src="{$system['system_uploads']}/{$message['post']['photos'][0]['source']}" class="w-100 h-100 h-full w-full object-cover">
							<div class="d-flex align-items-end gap-2 small text-white position-absolute p-2 stock_stat absolute inset-x-0 bottom-0 flex items-end gap-2 bg-gradient-to-t from-slate-900/70 to-transparent p-2 text-xs text-white">
								<div class="d-flex align-items-center gap-2 flex items-center gap-2">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15" height="15" color="currentColor" fill="none"><path d="M12 22C11.1818 22 10.4002 21.6698 8.83693 21.0095C4.94564 19.3657 3 18.5438 3 17.1613C3 16.7742 3 10.0645 3 7M12 22C12.8182 22 13.5998 21.6698 15.1631 21.0095C19.0544 19.3657 21 18.5438 21 17.1613V7M12 22L12 11.3548" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M8.32592 9.69138L5.40472 8.27785C3.80157 7.5021 3 7.11423 3 6.5C3 5.88577 3.80157 5.4979 5.40472 4.72215L8.32592 3.30862C10.1288 2.43621 11.0303 2 12 2C12.9697 2 13.8712 2.4362 15.6741 3.30862L18.5953 4.72215C20.1984 5.4979 21 5.88577 21 6.5C21 7.11423 20.1984 7.5021 18.5953 8.27785L15.6741 9.69138C13.8712 10.5638 12.9697 11 12 11C11.0303 11 10.1288 10.5638 8.32592 9.69138Z" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6 12L8 13" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M17 4L7 9" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path></svg>
									<div class="d-flex flex flex-wrap items-center gap-1">
										{if $message['post']['product']['available']}
											{if $message['post']['product']['quantity'] > 0}
												<span class="font-medium">{__("In stock")}</span>
											{else}
												<span class="text-danger text-rose-200">{__("Out of stock")}</span>
											{/if}
										{else}
											<span class="text-danger text-rose-200">{__("SOLD")}</span>
										{/if}
						  
										{if $message['post']['product']['is_digital']}
											<span class="fw-bold mx-2">·</span><span>{__("Digital")}</span>
										{/if}
										
										{if $message['post']['product']['status'] == "new"}
											<span class="fw-bold mx-2 d-none d-md-block">·</span><span class="d-none d-md-block">{__("New")}</span>
										{else}
											<span class="fw-bold mx-2 d-none d-md-block">·</span><span class="d-none d-md-block">{__("Used")}</span>
										{/if}
									</div>
								</div>
							</div>
						</a>
						<div class="mt-2 space-y-1">
							<h6 class="title text-truncate mb-2 text-sm font-semibold text-slate-800"><a href="{$system['system_url']}/posts/{$message['post']['post_id']}" class="body-color hover:text-slate-900">{$message['post']['product']['name']}</a></h6>	
							<h6 class="main text-truncate text-sm font-semibold text-slate-900">
								{$message['post']['product']['price_formatted']}
							</h6>
						</div>
					</div>
				</div>
			{/if}
			<!-- message text -->

			<!-- message time -->
			<div class="time js_moment mt-1 text-xs text-slate-500" data-time="{$message['time']}">
				{$message['time']}
			</div>
			<!-- message time -->
			
			{if $system['chat_translation_enabled']}
				<!-- message translation -->
				<div class="translate">
				  {__("Tap to translate")}
				</div>
				<!-- message translation -->
			{/if}

			<!-- seen status -->
			{if $conversation['last_seen_message_id'] == $message['message_id']}
				<div class="seen">
					{__("Seen by")} <span class="js_seen-name-list">{$conversation['seen_name_list']}</span>
				</div>
			{/if}
			<!-- seen status -->
		</div>
	</div>
</li>
