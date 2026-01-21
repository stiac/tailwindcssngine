<div class="search-wrapper relative w-full">
	<form class="position-relative relative w-full">
		<!-- Tailwind: campo di ricerca con spaziatura interna e focus ring -->
		<input id="search-input" type="text" class="form-control shadow-none rounded-pill w-full rounded-full border border-slate-200 bg-white py-2 pl-10 pr-4 text-sm text-slate-700 placeholder-slate-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500/30 dark:border-slate-700 dark:bg-slate-900 dark:text-slate-100 dark:placeholder-slate-500" placeholder='{__("Search")}' autocomplete="off">
		<!-- Tailwind: icona di ricerca posizionata a sinistra -->
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" color="currentColor" fill="none" class="position-absolute pe-none pointer-events-none search-input-icon absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400"><path d="M17.5 17.5L22 22" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path d="M20 11C20 6.02944 15.9706 2 11 2C6.02944 2 2 6.02944 2 11C2 15.9706 6.02944 20 11 20C15.9706 20 20 15.9706 20 11Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round" /></svg>
    <!-- Tailwind: dropdown risultati ricerca con layout, border e shadow -->
    <div id="search-results" class="dropdown-menu dropdown-widget dropdown-search js_dropdown-keepopen mt-2 w-80 max-w-sm rounded-xl border border-slate-200 bg-white shadow-lg ring-1 ring-black/5 dark:border-slate-700 dark:bg-slate-900">
      <div class="dropdown-widget-header border-b border-slate-200 px-4 py-3 dark:border-slate-700">
        <span class="title text-sm font-semibold text-slate-900 dark:text-white">{__("Search Results")}</span>
      </div>
      <div class="dropdown-widget-body">
        <div class="loader loader_small ptb10"></div>
      </div>
      <a class="dropdown-widget-footer block border-t border-slate-200 px-4 py-3 text-center text-sm font-semibold text-indigo-600 hover:bg-slate-50 hover:text-indigo-700 dark:border-slate-700 dark:text-indigo-400 dark:hover:bg-slate-800" id="search-results-all" href="{$system['system_url']}/search/">{__("See All Results")}</a>
    </div>
    {if $user->_logged_in && $user->_data['search_log']}
      <!-- Tailwind: dropdown con cronologia ricerche e azione clear -->
      <div id="search-history" class="dropdown-menu dropdown-widget dropdown-search js_dropdown-keepopen mt-2 w-80 max-w-sm rounded-xl border border-slate-200 bg-white shadow-lg ring-1 ring-black/5 dark:border-slate-700 dark:bg-slate-900">
        <div class="dropdown-widget-header border-b border-slate-200 px-4 py-3 dark:border-slate-700">
          <span class="text-link float-end js_clear-searches text-sm font-medium text-indigo-600 hover:text-indigo-700 dark:text-indigo-400 dark:hover:text-indigo-300">
            {__("Clear")}
          </span>
          <span class="title text-sm font-semibold text-slate-900 dark:text-white">{__("Recent Searches")}</span>
        </div>
        <div class="dropdown-widget-body">
          {include file='ajax.search.tpl' results=$user->_data['search_log']}
        </div>
        <a class="dropdown-widget-footer block border-t border-slate-200 px-4 py-3 text-center text-sm font-semibold text-indigo-600 hover:bg-slate-50 hover:text-indigo-700 dark:border-slate-700 dark:text-indigo-400 dark:hover:bg-slate-800" id="search-results-all" href="{$system['system_url']}/search/">{__("Advanced Search")}</a>
      </div>
    {/if}
  </form>
</div>
