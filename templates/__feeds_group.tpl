{if $_tpl == "box"}
	{* Layout card gruppo con utility Tailwind per spaziatura e tipografia *}
    <li class="px-3 side_item_hover side_item_list d-flex align-items-start gap-3 x_group_list {if $_darker}darker{/if} flex items-start gap-3 rounded-xl border border-slate-200/60 bg-white/70 p-3 shadow-sm transition hover:border-slate-300/80 hover:bg-white">
		<a href="{$system['system_url']}/groups/{$_group['group_name']}{if $_search}?ref=qs{/if}" class="flex-0 shrink-0">
			<img alt="{$_group['group_title']}" src="{$_group['group_picture']}" class="rounded-3 rounded-lg border border-slate-200/60 object-cover" />
		</a>

		<div class="flex-1 min-w-0">
			<div class="space-y-1">
				<a class="text-md fw-semibold body-color text-base font-semibold text-slate-900 hover:text-slate-700" href="{$system['system_url']}/groups/{$_group['group_name']}{if $_search}?ref=qs{/if}">{$_group['group_title']}</a>
				<div class="text-muted small text-sm text-slate-500">{$_group['group_members']} {__("Members")}</div>
			</div>
			{if $_group['monetization_plan']}
				{* Dettaglio piano monetizzazione con badge Tailwind *}
				<div class="mt-1 inline-flex items-center gap-2 text-sm font-medium text-emerald-700">
					<span class="rounded-full bg-emerald-50 px-2 py-0.5 text-xs font-semibold uppercase tracking-wide text-emerald-700">{__("Plan")}</span>
					<span>{print_money($_group['monetization_plan']['price'])} / {if $_group['monetization_plan']['period_num'] != '1'}{$_group['monetization_plan']['period_num']}{/if} {__($_group['monetization_plan']['period']|ucfirst)}</span>
				</div>
			{/if}
			<div class="mt-2 pt-1">
				{* CTA gruppo con stati Tailwind *}
				{if $_connection == 'unsubscribe'}
					{if $user->_data['user_id'] == $_group['plan_user_id']}
						<button type="button" class="btn btn-danger js_unsubscribe-plan inline-flex items-center gap-2 rounded-full border border-rose-200 bg-rose-50 px-3 py-1 text-sm font-semibold text-rose-700 transition hover:bg-rose-100" data-id="{$_group['plan_id']}">
							<i class="fa fa-trash"></i> {__("Unsubscribe")}
						</button>
					{/if}
				{else}
					{if $_group['i_joined'] == "approved"}
						<button type="button" class="btn btn-success {if !$_no_action}btn-delete{/if} js_leave-group inline-flex items-center gap-2 rounded-full border border-emerald-200 bg-emerald-50 px-3 py-1 text-sm font-semibold text-emerald-700 transition hover:bg-emerald-100" data-id="{$_group['group_id']}" data-privacy="{$_group['group_privacy']}">
							<i class="fa fa-check"></i>{__("Joined")}
						</button>
					{elseif $_group['i_joined'] == "pending"}
						<button type="button" class="btn btn-warning js_leave-group inline-flex items-center gap-2 rounded-full border border-amber-200 bg-amber-50 px-3 py-1 text-sm font-semibold text-amber-700 transition hover:bg-amber-100" data-id="{$_group['group_id']}" data-privacy="{$_group['group_privacy']}">
							<i class="fa fa-clock"></i>{__("Pending")}
						</button>
					{else}
						<button type="button" class="btn btn-dark js_join-group inline-flex items-center gap-2 rounded-full border border-slate-200 bg-slate-900 px-3 py-1 text-sm font-semibold text-white transition hover:bg-slate-800" data-id="{$_group['group_id']}" data-privacy="{if $user->_data['user_id'] == $_group['group_admin']}public{else}{$_group['group_privacy']}{/if}">
							<i class="fa fa-user-plus"></i>{__("Join")}
						</button>
					{/if}
				{/if}
			</div>
		</div>
    </li>
{elseif $_tpl == "list"}
	{* Riga compatta per liste gruppi con utility Tailwind *}
	<li class="feeds-item px-3 side_item_hover side_item_list rounded-xl border border-slate-200/60 bg-white/70 px-3 py-2 transition hover:border-slate-300/80 hover:bg-white">
		<div class="d-flex align-items-center justify-content-between x_user_info {if $_small}small{/if} flex items-center justify-between gap-3">
			<div class="d-flex align-items-center position-relative mw-0 flex items-center gap-3">
				<a class="position-relative flex-0 shrink-0" href="{$system['system_url']}/groups/{$_group['group_name']}{if $_search}?ref=qs{/if}">
					<img src="{$_group['group_picture']}" alt="{$_group['group_title']}" class="rounded-circle h-10 w-10 rounded-full border border-slate-200/60 object-cover">
				</a>
				<div class="mw-0 text-truncate mx-2 px-1 min-w-0">
					<div class="fw-semibold text-truncate text-sm font-semibold text-slate-900">
						<a href="{$system['system_url']}/groups/{$_group['group_name']}{if $_search}?ref=qs{/if}" class="body-color text-slate-900 hover:text-slate-700">
							{$_group['group_title']}
						</a>
					</div>
					<p class="m-0 text-muted text-truncate small text-xs text-slate-500">{$_group['group_members']} {__("Members")}</p>
				</div>
			</div>
			<div class="flex-0">
				{* Pulsanti stato iscrizione *}
				{if $_group['i_joined'] == "approved"}
					<button type="button" class="btn btn-sm btn-success {if !$_no_action}btn-delete{/if} js_leave-group inline-flex items-center rounded-full border border-emerald-200 bg-emerald-50 px-3 py-1 text-xs font-semibold text-emerald-700 transition hover:bg-emerald-100" data-id="{$_group['group_id']}" data-privacy="{$_group['group_privacy']}">
						{__("Joined")}
					</button>
				{elseif $_group['i_joined'] == "pending"}
					<button type="button" class="btn btn-sm btn-warning js_leave-group inline-flex items-center rounded-full border border-amber-200 bg-amber-50 px-3 py-1 text-xs font-semibold text-amber-700 transition hover:bg-amber-100" data-id="{$_group['group_id']}" data-privacy="{$_group['group_privacy']}">
						{__("Pending")}
					</button>
				{else}
					<button type="button" class="btn btn-sm btn-dark js_join-group inline-flex items-center rounded-full border border-slate-200 bg-slate-900 px-3 py-1 text-xs font-semibold text-white transition hover:bg-slate-800" data-id="{$_group['group_id']}" data-privacy="{if $user->_data['user_id'] == $_group['group_admin']}public{else}{$_group['group_privacy']}{/if}">
						{__("Join")}
					</button>
				{/if}
			</div>
		</div>
	</li>
{/if}
