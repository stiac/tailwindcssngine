<li class="w-full lg:w-1/2 mb-6">
	<div class="x_address rounded-lg border border-slate-200 bg-white p-4 shadow-sm">
		<div class="flex items-start gap-3">
			<!-- Avatar utente -->
			<div class="post-avatar relative shrink-0">
				<a class="post-avatar-picture block h-12 w-12 rounded-full bg-cover bg-center" href="{$activity['activity_user_url']}" style="background-image:url({$activity['activity_user_picture']});"></a>
			</div>
			<!-- Contenuto attività -->
			<div class="min-w-0 flex-1">
				<div class="post-meta space-y-2">
					<!-- Stato attività -->
					<div>
						<span class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-medium text-white {if $activity['status'] == 'pending'}bg-amber-500{elseif $activity['status'] == 'completed'}bg-emerald-500{else}bg-blue-500{/if}">
							{if $activity['status'] == 'pending'}{__("Pending Follow Up")}{else}{__($activity['status'])|ucfirst}{/if}
						</span>
					</div>

					<!-- Autore e data -->
					<div class="flex flex-wrap items-center gap-2 text-sm">
						<a class="post-author font-semibold text-slate-900 hover:text-blue-600" href="{$activity['activity_user_url']}">{$activity['title']}</a>
						<span class="text-slate-500">
							<small class="js_moment" data-time="{$activity['created_at']}">{$activity['created_at']}</small>
						</span>
					</div>

					<!-- Categoria -->
					<div>
						<span class="inline-flex items-center gap-1 text-sm font-medium text-blue-600">
							<svg class="h-4 w-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M19.4595 1.57208C20.2081 1.74402 20.9664 2.0252 21.4706 2.5294C21.9748 3.0336 22.256 3.79184 22.4279 4.54046C22.6055 5.3138 22.6927 6.19907 22.7288 7.06907C22.8011 8.81159 22.6717 10.5921 22.5881 11.5022C22.5359 12.0702 22.3035 12.5946 21.9407 13.0168C19.2314 16.1691 16.4229 19.0388 13.3564 21.7845C11.9532 23.0408 9.8583 23.0541 8.39717 21.9228C5.98748 20.0571 3.94288 18.0125 2.07714 15.6028C0.945835 14.1417 0.959159 12.0467 2.21547 10.6436C4.96115 7.57712 7.83086 4.76863 10.9832 2.05931C11.4054 1.69644 11.9298 1.46409 12.4977 1.4119C13.4078 1.32827 15.1884 1.19887 16.9309 1.27116C17.8009 1.30726 18.6862 1.39446 19.4595 1.57208ZM19 6.5C19 5.67157 18.3285 5 17.5 5C16.6716 5 16 5.67157 16 6.5C16 7.32843 16.6716 8 17.5 8C18.3285 8 19 7.32843 19 6.5ZM7.70715 13.2929C7.31663 12.9024 6.68346 12.9024 6.29294 13.2929C5.90241 13.6834 5.90241 14.3166 6.29294 14.7071L9.29294 17.7071C9.68346 18.0976 10.3166 18.0976 10.7072 17.7071C11.0977 17.3166 11.0977 16.6834 10.7072 16.2929L7.70715 13.2929Z" fill="currentColor"></path></svg>
							{$activity['category']['category_name']}
						</span>
					</div>

					<!-- Descrizione -->
					<div class="review-review text-sm text-slate-700">
						<div class="js_readmore leading-relaxed">{$activity['description']|nl2br}</div>
					</div>

					{if $activity['can_edit']}
						<!-- Azioni -->
						<div class="flex flex-wrap items-center gap-2 pt-2">
							{if $activity['status'] != 'completed'}
								<button type="button" class="inline-flex items-center rounded-md bg-slate-100 px-3 py-1.5 text-xs font-semibold text-slate-700 transition hover:bg-slate-200" data-toggle="modal" data-url="modules/activities.php?do=edit&id={$activity['activity_id']}">
									{__("Edit")}
								</button>
							{/if}
							<button type="button" class="inline-flex h-8 w-8 items-center justify-center rounded-full bg-red-50 text-red-600 transition hover:bg-red-100 js_activity-deleter" data-id="{$activity['activity_id']}">
								<svg class="h-4 w-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M19.5825 15.6564C19.5058 16.9096 19.4449 17.9041 19.3202 18.6984C19.1922 19.5131 18.9874 20.1915 18.5777 20.7849C18.2029 21.3278 17.7204 21.786 17.1608 22.1303C16.5491 22.5067 15.8661 22.6713 15.0531 22.75L8.92739 22.7499C8.1135 22.671 7.42972 22.5061 6.8176 22.129C6.25763 21.7841 5.77494 21.3251 5.40028 20.7813C4.99073 20.1869 4.78656 19.5075 4.65957 18.6917C4.53574 17.8962 4.47623 16.9003 4.40122 15.6453L3.75 4.75H20.25L19.5825 15.6564ZM9.5 17.9609C9.08579 17.9609 8.75 17.6252 8.75 17.2109L8.75 11.2109C8.75 10.7967 9.08579 10.4609 9.5 10.4609C9.91421 10.4609 10.25 10.7967 10.25 11.2109L10.25 17.2109C10.25 17.6252 9.91421 17.9609 9.5 17.9609ZM15.25 11.2109C15.25 10.7967 14.9142 10.4609 14.5 10.4609C14.0858 10.4609 13.75 10.7967 13.75 11.2109V17.2109C13.75 17.6252 14.0858 17.9609 14.5 17.9609C14.9142 17.9609 15.25 17.6252 15.25 17.2109V11.2109Z" fill="currentColor"/><path fill-rule="evenodd" clip-rule="evenodd" d="M13.3473 1.28277C13.9124 1.33331 14.4435 1.50576 14.8996 1.84591C15.2369 2.09748 15.4712 2.40542 15.6714 2.73893C15.8569 3.04798 16.0437 3.4333 16.2555 3.8704L16.6823 4.7507H21C21.5523 4.7507 22 5.19842 22 5.7507C22 6.30299 21.5523 6.7507 21 6.7507C14.9998 6.7507 9.00019 6.7507 3 6.7507C2.44772 6.7507 2 6.30299 2 5.7507C2 5.19842 2.44772 4.7507 3 4.7507H7.40976L7.76556 3.97016C7.97212 3.51696 8.15403 3.11782 8.33676 2.79754C8.53387 2.45207 8.76721 2.13237 9.10861 1.87046C9.57032 1.51626 10.1121 1.33669 10.6899 1.28409C11.1249 1.24449 11.5634 1.24994 12 1.25064C12.5108 1.25146 12.97 1.24902 13.3473 1.28277ZM9.60776 4.7507H14.4597C14.233 4.28331 14.088 3.98707 13.9566 3.7682C13.7643 3.44787 13.5339 3.30745 13.1691 3.27482C12.9098 3.25163 12.5719 3.2507 12.0345 3.2507C11.4837 3.2507 11.137 3.25166 10.8712 3.27585C10.4971 3.30991 10.2639 3.45568 10.0739 3.78866C9.94941 4.00687 9.81387 4.29897 9.60776 4.7507Z" fill="currentColor"/></svg>
							</button>
						</div>
					{/if}
				</div>
			</div>
		</div>
	</div>
</li>
