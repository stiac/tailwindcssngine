<div class="rounded-xl border border-slate-200 bg-white shadow-sm">
	<!-- Order summary header -->
	<div type="button" class="side_item_list w-full px-4 py-3 text-left transition hover:bg-slate-50" data-bs-toggle="collapse" data-bs-target=".order_collapse-{$order['order_id']}" aria-expanded="false">
		<div class="grid gap-4 md:grid-cols-12 md:items-center">
			<div class="space-y-1 md:col-span-4">
				<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">{__("Order")} #</div>
				<div class="text-sm font-semibold text-slate-900">{$order['order_hash']}</div>
			</div>

			<div class="space-y-1 md:col-span-4">
				<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">{__("Order Placed")}</div>
				<div class="text-sm text-slate-700">{$order['insert_time']}</div>
			</div>

			<div class="space-y-1 md:col-span-2">
				<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">{__("Status")}:</div>
				{if $order['status'] == "canceled"}
					<span class="inline-flex items-center rounded-full bg-red-100 px-2.5 py-1 text-xs font-semibold text-red-700">{__($order['status'])|ucfirst}</span>
				{elseif $order['status'] == "delivered"}
					<span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-1 text-xs font-semibold text-emerald-700">{__($order['status'])|ucfirst}</span>
				{else}
					<span class="inline-flex items-center rounded-full bg-sky-100 px-2.5 py-1 text-xs font-semibold text-sky-700">{__($order['status'])|ucfirst}</span>
				{/if}
			</div>

			<div class="md:col-span-2 md:text-right">
				<button class="inline-flex items-center justify-center rounded-md bg-slate-900 px-3 py-1.5 text-sm font-semibold text-white shadow-sm hover:bg-slate-800">
					{__("View")}
				</button>
			</div>
		</div>
	</div>

	<div class="collapse order_collapse-{$order['order_id']}">
		<div class="px-4 pb-4">
			<hr class="border-slate-200">
			<div class="flex flex-wrap items-start justify-between gap-2">
				<div class="flex flex-wrap items-center gap-2">
					{if !$for_admin}
						<!-- Order actions -->
						{if $sales}
							{if $order['status'] != "delivered" && $order['status'] != "canceled"}
								<button class="inline-flex items-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold text-white shadow-sm transition hover:bg-indigo-500" data-toggle="modal" data-url="users/orders.php?do=edit&id={$order['order_id']}">
									{__("UPDATE")}
								</button>
							{/if}
						{else}
							{if $order['status'] != "delivered" && $order['status'] != "canceled"}
								<button class="inline-flex items-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold text-white shadow-sm transition hover:bg-indigo-500" data-toggle="modal" data-url="users/orders.php?do=edit&id={$order['order_id']}">
									{__("UPDATE")}
								</button>
							{/if}
						{/if}

						<button class="inline-flex items-center text-sm font-semibold text-indigo-600 hover:text-indigo-500 js_shopping-download-invoice" data-id="{$order['order_id']}">
							{__("INVOICE")}
						</button>
						<!-- Order actions -->
					{/if}
				</div>
				<button type="button" class="inline-flex items-center justify-center rounded-full bg-slate-100 p-2 text-slate-500 shadow-sm transition hover:bg-slate-200" data-bs-toggle="collapse" data-bs-target=".order_collapse-{$order['order_id']}">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" color="currentColor" fill="none"><path d="M19.0005 4.99988L5.00049 18.9999M5.00049 4.99988L19.0005 18.9999" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round" /></svg>
				</button>
			</div>

			{if $order['status'] == "shipped"}
				<div class="mt-4 rounded-lg border border-amber-200 bg-amber-50 px-4 py-3 text-sm text-amber-800">
					<div class="flex flex-wrap items-center gap-1">
						<span>{__("This order has been shipped and will be marked as delivered automatically after")}</span>
						<span class="inline-flex items-center rounded-full bg-white px-2 py-0.5 text-xs font-semibold text-amber-700">{$order['automatic_delivery_days']}</span>
						<span>{__("days")} ({__("Max")} {$system['market_delivery_days']} {__("days")})</span>
					</div>
				</div>
			{/if}

			<div class="mt-6 grid gap-6 lg:grid-cols-12">
				<div class="space-y-6 lg:col-span-4">
					<!-- Payments -->
					<div class="space-y-3">
						<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">
							{__("Payments")}
						</div>

						<div class="flex items-center justify-between text-sm text-slate-600">
							<span>{if $sales}{__("Subtotal")}{else}{__("Total")}{/if}:</span>
							<span class="{if $sales}{else}text-base font-semibold text-slate-900{/if}">
								{print_money(number_format($order['sub_total'], 2))}
							</span>
						</div>
						{if $sales}
							{if $order['total_commission'] > 0}
								<div class="flex items-center justify-between text-sm text-slate-600">
									<span>{__("Commission")}:</span>
									<span>- {print_money(number_format($order['total_commission'], 2))}</span>
								</div>
							{/if}

							<div class="flex items-center justify-between text-sm text-slate-600">
								<span>{__("Total")}:</span>
								<span class="text-base font-semibold text-slate-900">
									{print_money(number_format($order['final_price'], 2))}
								</span>
							</div>
						{/if}
					</div>
					<!-- Payments -->

					<!-- Tracking Details -->
					<div class="space-y-3">
						<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">
							{if $order['is_digital']}
								{__("Download Details")}
							{else}
								{__("Tracking Details")}
							{/if}
						</div>
						<div class="space-y-3 text-sm text-slate-600">
							{if $order['is_digital']}
								<div class="space-y-2">
									<div class="font-semibold text-slate-700">{__("Download Link")}:</div>
									{if $order['items'][0]['post']['product']['product_file_source']}
										<div>
											<a class="inline-flex items-center rounded-md border border-slate-200 bg-white px-3 py-1.5 text-xs font-semibold text-slate-700 shadow-sm transition hover:bg-slate-50" href="{$system['system_uploads']}/{$order['items'][0]['post']['product']['product_file_source']}" target="_blank">{__("Download")}</a>
										</div>
									{else}
										<div>
											<a class="inline-flex items-center rounded-md border border-slate-200 bg-white px-3 py-1.5 text-xs font-semibold text-slate-700 shadow-sm transition hover:bg-slate-50" href="{$order['items'][0]['post']['product']['product_download_url']}" target="_blank">{__("Download")}</a>
										</div>
									{/if}
								</div>
							{else}
								<div class="space-y-2">
									<div class="font-semibold text-slate-700">{__("Tracking Link")}:</div>
									<div>
										{if $order['tracking_link']}
											<a class="text-indigo-600 underline-offset-2 hover:underline" href="{$order['tracking_link']}" target="_blank">{$order['tracking_link']}</a>
										{else}
											{__("N/A")}
										{/if}
									</div>
								</div>

								<div class="space-y-2">
									<div class="font-semibold text-slate-700">{__("Tracking Number")}:</div>
									<div>
										{if $order['tracking_number']}{$order['tracking_number']}{else}{__("N/A")}{/if}
									</div>
								</div>
							{/if}
						</div>
					</div>
					<!-- Tracking Details -->

					<!-- Shipping Addresses -->
					<div class="space-y-2">
						<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">
							{__("Shipping Addresses")}
						</div>
						<div class="x_address rounded-lg border border-slate-200 bg-slate-50 p-3 text-sm text-slate-600">
							<div class="text-sm font-semibold text-slate-900">{$order['buyer_fullname']}</div>
							<div>{$order['address_details']}</div>
							<div>{$order['address_city']}</div>
							<div>{$order['address_country']}</div>
							<div>{$order['address_zip_code']}</div>
							<div>{$order['address_phone']}</div>
						</div>
					</div>
					<!-- Shipping Addresses -->
				</div>

				<div class="space-y-4 lg:col-span-8">
					<!-- Order Items -->
					<div class="text-xs font-semibold uppercase tracking-wide text-slate-500">
						{__("Items")}
					</div>

					<div class="space-y-4">
						{foreach $order['items'] as $order_item}
							<div class="side_item_list x_group_list x_cart_list flex flex-col gap-4 rounded-lg border border-slate-200 p-4 sm:flex-row">
								<a href="{$system['system_url']}/posts/{$order_item['post']['post_id']}" class="flex-none">
									{if $order_item['post']['photos_num'] > 0}
										<img src="{$system['system_uploads']}/{$order_item['post']['photos'][0]['source']}" class="h-20 w-20 rounded-md object-cover">
									{else}
										<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/blank_product.png" class="h-20 w-20 rounded-md object-cover">
									{/if}
								</a>

								<div class="flex-1 space-y-2">
									<div class="space-y-1">
										<a class="text-sm font-semibold text-slate-900 hover:text-indigo-600" href="{$system['system_url']}/posts/{$order_item['post']['post_id']}">
											{$order_item['post']['product']['name']}
										</a>
										<div class="text-sm text-slate-600">
											{if $order_item['post']['product']['price'] > 0}
												{$order_item['post']['product']['price_formatted']}
											{else}
												{__("Free")}
											{/if}
										</div>
									</div>
									<div class="text-sm text-slate-600">
										<span class="font-semibold text-slate-700">{__("Qty:")}</span>
										{$order_item['quantity']}
									</div>
								</div>
							</div>
						{/foreach}
					</div>
					<!-- Order Items -->
				</div>
			</div>
		</div>
	</div>
</div>
