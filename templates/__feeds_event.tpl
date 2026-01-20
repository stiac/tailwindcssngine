{if $_tpl == "box"}
	<li class="col-md-12 {if $_small}col-lg-6{/if} mb-3">
		<!-- Tailwind event card container -->
		<div class="x_event_list">
			<div class="position-relative rounded-3 overflow-hidden border bg-white shadow-sm transition-all duration-200 hover:shadow-md">
				<a href="{$system['system_url']}/events/{$_event['event_id']}{if $_search}?ref=qs{/if}" class="d-block w-100 avatar">
					<img alt="{$_event['event_title']}" src="{$_event['event_picture']}" class="w-100 h-100 rounded-3 object-cover" />
				</a>
				<!-- Tailwind overlay with date, title, and CTA -->
				<div class="d-flex align-items-center justify-content-between gap-2 gap-3 position-absolute p-3 pt-5 bottom-0 start-0 end-0 pe-none eventlist_foot bg-gradient-to-t from-black/70 via-black/40 to-transparent">
					<div class="d-flex align-items-center gap-2 mw-0">
						<!-- Tailwind date badge -->
						<div class="position-relative bg-white text-center rounded-3 overflow-hidden profle-date-wrapper shadow-sm ring-1 ring-white/60">
							<span class="d-block text-white fw-semibold text-uppercase lh-1 bg-slate-900/80 px-2 py-1">{__($_event['event_start_date']|date_format:"%b")}</span>
							<b class="d-block fw-bold lh-1 text-slate-900 px-2 py-1">{$_event['event_start_date']|date_format:"%e"}</b>
						</div>
						<!-- Tailwind title and interested count -->
						<div class="bg-white rounded-pill pe-auto x_user_info py-1 info mw-0 text-truncate shadow-sm ring-1 ring-slate-900/5 px-3">
							<a class="h6 mw-0 text-truncate text-slate-900 hover:text-indigo-600" href="{$system['system_url']}/events/{$_event['event_id']}{if $_search}?ref=qs{/if}">{$_event['event_title']}</a>
							<div class="small text-muted text-slate-600">{$_event['event_interested']} {__("Interested")}</div>
						</div>
					</div>
					<div class="flex-0 pe-auto">
						<!-- Tailwind action button -->
						{if $_event['i_joined']['is_interested']}
							<button type="button" class="btn btn-sm btn-light js_uninterest-event inline-flex items-center justify-center gap-1 rounded-full border border-white/60 bg-white/90 px-3 py-1 text-xs font-semibold text-slate-900 shadow-sm transition hover:bg-white" data-id="{$_event['event_id']}" title='{__("Interested")}'>
								<i class="fa fa-check mr5"></i>
							</button>
						{else}
							<button type="button" class="btn btn-sm btn-primary js_interest-event inline-flex items-center justify-center gap-1 rounded-full bg-indigo-600 px-3 py-1 text-xs font-semibold text-white shadow-sm transition hover:bg-indigo-500" data-id="{$_event['event_id']}" title='{__("Interested")}'>
								<i class="fa fa-star mr5"></i>
							</button>
						{/if}
					</div>
				</div>
			</div>
		</div>
	</li>
{elseif $_tpl == "list"}
	<li class="feeds-item px-3 side_item_hover side_item_list">
		<!-- Tailwind compact list item -->
		<div class="d-flex align-items-center justify-content-between x_user_info {if $_small}small{/if} gap-3 rounded-xl border border-slate-200 bg-white px-3 py-2 shadow-sm transition hover:shadow-md">
			<div class="d-flex align-items-center position-relative mw-0 gap-3">
				<a class="position-relative flex-0" href="{$system['system_url']}/events/{$_event['event_id']}{if $_search}?ref=qs{/if}">
					<img src="{$_event['event_picture']}" alt="{$_event['event_title']}" class="rounded-circle ring-2 ring-white shadow-sm">
				</a>
				<div class="mw-0 text-truncate">
					<div class="fw-semibold text-truncate">
						<a href="{$system['system_url']}/events/{$_event['event_id']}{if $_search}?ref=qs{/if}" class="body-color text-slate-900 hover:text-indigo-600">
							{$_event['event_title']}
						</a>
					</div>
					<p class="m-0 text-muted text-truncate small text-slate-500">{$_event['event_interested']} {__("Interested")}</p>
				</div>
			</div>
			<div class="flex-0">
				<!-- Tailwind buttons -->
				{if $_event['i_joined']['is_interested']}
					<button type="button" class="btn btn-sm btn-light js_uninterest-event inline-flex items-center justify-center rounded-full border border-slate-200 bg-white px-3 py-1 text-xs font-semibold text-slate-700 shadow-sm transition hover:bg-slate-50" data-id="{$_event['event_id']}">
						{__("Interested")}
					</button>
				{else}
					<button type="button" class="btn btn-sm btn-dark js_interest-event inline-flex items-center justify-center rounded-full bg-slate-900 px-3 py-1 text-xs font-semibold text-white shadow-sm transition hover:bg-slate-800" data-id="{$_event['event_id']}">
						{__("Interested")}
					</button>
				{/if}
				<!-- Tailwind buttons -->
			</div>
		</div>
	</li>
{/if}
