{strip}
<!-- Tailwind utility mappings for legacy classes (transition layer) -->
<style type="text/tailwindcss">
  @layer base {
    body {
      @apply bg-slate-50 text-slate-900 antialiased;
    }

    a {
      @apply text-brand-600 hover:text-brand-700;
    }
  }

  @layer components {
    /* Buttons */
    .btn {
      @apply inline-flex items-center justify-center gap-2 rounded-md px-4 py-2 text-sm font-medium transition-colors;
    }

    .btn-primary,
    .btn-main {
      @apply bg-brand-600 text-white hover:bg-brand-700;
    }

    .btn-warning {
      @apply bg-amber-500 text-white hover:bg-amber-600;
    }

    .btn-sm {
      @apply px-3 py-1.5 text-xs;
    }

    /* Alerts */
    .alert {
      @apply rounded-lg border border-slate-200 bg-white p-3 text-sm text-slate-700;
    }

    .alert-warning {
      @apply border-amber-200 bg-amber-50 text-amber-800;
    }

    .alert-danger {
      @apply border-rose-200 bg-rose-50 text-rose-700;
    }

    /* Badges */
    .badge {
      @apply inline-flex items-center rounded-full bg-slate-100 px-2 py-0.5 text-xs font-semibold text-slate-700;
    }

    /* Forms */
    .form-control,
    .form-select {
      @apply w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 placeholder:text-slate-400 focus:border-brand-500 focus:ring-2 focus:ring-brand-500/40;
    }

    .form-check-input {
      @apply h-4 w-4 rounded border-slate-300 text-brand-600 focus:ring-brand-500/40;
    }

    /* Dropdowns */
    .dropdown-menu {
      @apply mt-2 min-w-[12rem] rounded-lg border border-slate-200 bg-white p-2 text-sm shadow-lg;
    }

    .dropdown-item {
      @apply flex w-full items-center gap-2 rounded-md px-3 py-2 text-slate-700 hover:bg-slate-100;
    }

    /* Grid helpers */
    .row {
      @apply flex flex-wrap -mx-3;
    }

    .col,
    [class*="col-"] {
      @apply px-3;
    }

    .col-md-6 {
      @apply w-full md:w-1/2;
    }

    .col-lg-5 {
      @apply w-full lg:w-5/12;
    }

    .col-lg-7 {
      @apply w-full lg:w-7/12;
    }

    .col-sm-5 {
      @apply w-full sm:w-5/12;
    }

    .col-sm-7 {
      @apply w-full sm:w-7/12;
    }
  }
</style>
<!-- Tailwind utility mappings for legacy classes (transition layer) -->

{if $system['css_customized']}
	<style type="text/css">
		:root {
			{if $system['css_background']}
				--body-bg: {$system['css_background']};
			{/if}
			{if $system['css_link_color']}
				--main-link: {$system['css_link_color']};
			{/if}
			{if $system['css_header']}
				--header-background: {$system['css_header']};
			{/if}
			{if $system['css_header_search']}
				--header-search-bg: {$system['css_header_search']};
			{/if}
			{if $system['css_header_search_color']}
				--header-search-color: {$system['css_header_search_color']};
			{/if}
			{if $system['css_btn_primary']}
				--main-btn: {$system['css_btn_primary']};
				--plyr-color-main: {$system['css_btn_primary']};
			{/if}
			{if $system['css_header_icons']}
				--header-color: {$system['css_header_icons']};
			{/if}
			{if $system['css_header_icons_night']}
				--header-bg-color-dark: {$system['css_header_icons_night']};
			{/if}
		}

		{html_entity_decode($system['css_custome_css'], ENT_QUOTES)}
	</style>
{/if}
{if $page == "admin"}
	<style type="text/css">
		.search-wrapper-prnt {
			display: none !important
		}
		
		.x-content-width .btn {
			display: inline-block;
			line-height: var(--bs-btn-line-height);
			min-width: max-content;
			padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
		}
		.x-content-width .btn-sm {
			font-size: 11px;
			padding: 8px 26px;
		}
		.x-content-width .btn-sm.btn-icon {
			padding: 5px 8px;
		}
	</style>
{/if}
{/strip}
