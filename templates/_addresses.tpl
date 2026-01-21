<!-- Azione principale: aggiungi un nuovo indirizzo -->
<button data-toggle="modal" data-url="users/addresses.php?do=add" class="inline-flex w-full items-center justify-center gap-2 rounded-md bg-emerald-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-emerald-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600">
	<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24" aria-hidden="true"><path fill="currentColor" d="M440-440H240q-17 0-28.5-11.5T200-480q0-17 11.5-28.5T240-520h200v-200q0-17 11.5-28.5T480-760q17 0 28.5 11.5T520-720v200h200q17 0 28.5 11.5T760-480q0 17-11.5 28.5T720-440H520v200q0 17-11.5 28.5T480-200q-17 0-28.5-11.5T440-240v-200Z"/></svg> {__("Add New")}
</button>

<!-- Griglia indirizzi con layout responsive Tailwind -->
<div class="mt-4 grid grid-cols-1 gap-4 lg:grid-cols-2">
	{foreach $addresses as $address}
		<div class="{if $_small}lg:col-span-2{else}{/if}">
			<!-- Card indirizzo -->
			<div class="flex h-full flex-col rounded-lg border border-slate-200 bg-white p-4 shadow-sm">
				<div class="text-base font-semibold text-slate-900">
					{$address['address_title']}
				</div>
				<div class="mt-2 space-y-1 text-sm text-slate-600">
					<div class="{if $_small}hidden{else}{/if}">{$address['address_details']}</div>
					<div class="{if $_small}hidden{else}{/if}">{$address['address_city']}</div>
					<div class="{if $_small}hidden{else}{/if}">{$address['address_country']}</div>
					<div>{$address['address_zip_code']}</div>
					<div>{$address['address_phone']}</div>
				</div>
				<!-- Azioni indirizzo -->
				<div class="mt-4 flex items-center gap-2">
					<button type="button" class="inline-flex flex-1 items-center justify-center gap-2 rounded-md border border-slate-200 bg-white px-3 py-2 text-sm font-medium text-slate-700 shadow-sm transition hover:bg-slate-50 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600" data-toggle="modal" data-url="users/addresses.php?do=edit&id={$address['address_id']}">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" color="currentColor" fill="none" aria-hidden="true"><path d="M16.9459 3.17305C17.5332 2.58578 17.8268 2.29215 18.1521 2.15173C18.6208 1.94942 19.1521 1.94942 19.6208 2.15173C19.946 2.29215 20.2397 2.58578 20.8269 3.17305C21.4142 3.76032 21.7079 4.05395 21.8483 4.37925C22.0506 4.8479 22.0506 5.37924 21.8483 5.84789C21.7079 6.17319 21.4142 6.46682 20.8269 7.05409L15.8054 12.0757C14.5682 13.3129 13.9496 13.9315 13.1748 14.298C12.4 14.6645 11.5294 14.7504 9.78823 14.9222L9 15L9.07778 14.2118C9.24958 12.4706 9.33549 11.6 9.70201 10.8252C10.0685 10.0504 10.6871 9.43183 11.9243 8.19464L16.9459 3.17305Z" stroke="currentColor" stroke-width="1.75" stroke-linejoin="round"></path><path d="M6 15H3.75C2.7835 15 2 15.7835 2 16.75C2 17.7165 2.7835 18.5 3.75 18.5H13.25C14.2165 18.5 15 19.2835 15 20.25C15 21.2165 14.2165 22 13.25 22H11" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Edit")}
					</button>
					<button type="button" class="inline-flex items-center justify-center rounded-full border border-slate-200 bg-white p-2 text-slate-600 shadow-sm transition hover:bg-slate-50 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-rose-600 js_address-deleter" data-id="{$address['address_id']}" title="{__("Delete")}">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" color="currentColor" fill="none" aria-hidden="true"><path d="M19.5 5.5L18.8803 15.5251C18.7219 18.0864 18.6428 19.3671 18.0008 20.2879C17.6833 20.7431 17.2747 21.1273 16.8007 21.416C15.8421 22 14.559 22 11.9927 22C9.42312 22 8.1383 22 7.17905 21.4149C6.7048 21.1257 6.296 20.7408 5.97868 20.2848C5.33688 19.3626 5.25945 18.0801 5.10461 15.5152L4.5 5.5" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"></path><path d="M3 5.5H21M16.0557 5.5L15.3731 4.09173C14.9196 3.15626 14.6928 2.68852 14.3017 2.39681C14.215 2.3321 14.1231 2.27454 14.027 2.2247C13.5939 2 13.0741 2 12.0345 2C10.9688 2 10.436 2 9.99568 2.23412C9.8981 2.28601 9.80498 2.3459 9.71729 2.41317C9.32164 2.7167 9.10063 3.20155 8.65861 4.17126L8.05292 5.5" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"></path><path d="M9.5 16.5L9.5 10.5" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"></path><path d="M14.5 16.5L14.5 10.5" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"></path></svg>
					</button>
				</div>
			</div>
		</div>
	{/foreach}
</div>
