<!-- need age verification -->
<div class="px-4 py-10 sm:px-6 lg:px-8">
	<!-- Card Tailwind per la verifica dell'età -->
	<div class="mx-auto flex max-w-xl flex-col items-center gap-4 rounded-2xl border border-slate-200/70 bg-white px-6 py-8 text-center shadow-sm ring-1 ring-slate-900/5 dark:border-slate-700/60 dark:bg-slate-900/70 dark:ring-white/10">
		<!-- Icona principale con stile Tailwind -->
		<div class="flex h-14 w-14 items-center justify-center rounded-full bg-rose-50 text-rose-500 dark:bg-rose-500/10 dark:text-rose-300">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="h-7 w-7" aria-hidden="true">
				<path fill="currentColor" d="m24,11v2h-2v2h-2v-2h-2v-2h2v-2h2v2h2Zm-12.826.691c-.491-.552-.799-1.271-.799-2.066,0-1.723,1.402-3.125,3.125-3.125s3.125,1.402,3.125,3.125c0,.795-.308,1.514-.799,2.066.643.615,1.049,1.476,1.049,2.434,0,1.861-1.514,3.375-3.375,3.375s-3.375-1.514-3.375-3.375c0-.958.405-1.819,1.049-2.434Zm3.701,2.434c0-.758-.617-1.375-1.375-1.375s-1.375.617-1.375,1.375.617,1.375,1.375,1.375,1.375-.617,1.375-1.375Zm-1.375-3.375c.62,0,1.125-.505,1.125-1.125s-.505-1.125-1.125-1.125-1.125.505-1.125,1.125.505,1.125,1.125,1.125Zm-5.5,6.25V7h-1.488l-2.516,2.777,1.482,1.342.521-.575v6.456h2Zm4,5c-5.514,0-10-4.486-10-10S6.486,2,12,2c3.691,0,6.914,2.016,8.647,5h2.248C20.994,2.876,16.831,0,12,0,5.383,0,0,5.383,0,12s5.383,12,12,12c4.831,0,8.994-2.876,10.895-7h-2.248c-1.732,2.984-4.955,5-8.647,5Z"/>
			</svg>
		</div>
		<!-- Titolo del messaggio con font headline e colori Tailwind -->
		<div class="space-y-2 text-lg">
			<h5 class="headline-font text-lg font-semibold text-slate-900 dark:text-slate-100">
				{if !$user->_data['user_adult']}
					{__("You must be 18+ to view this content")}
				{else}
					{__("Your age must be verified to view this content")}
				{/if}
			</h5>
			<!-- Testo di supporto per guidare l'utente -->
			<p class="text-sm text-slate-600 dark:text-slate-300">
				{__("Please complete the age verification to continue.")}
			</p>
		</div>
	</div>
</div>
<!-- need age verification -->
