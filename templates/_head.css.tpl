{strip}
{* Tailwind CSS: base layer e variabili di tema con fallback *}
<style type="text/css">
	@layer base {
		:root {
			/* Palette base compatibile con le utility Tailwind */
			--body-bg: #f8fafc;
			--main-link: #2563eb;
			--header-background: #ffffff;
			--header-search-bg: #ffffff;
			--header-search-color: #0f172a;
			--main-btn: #2563eb;
			--plyr-color-main: #2563eb;
			--header-color: #0f172a;
			--header-bg-color-dark: #0f172a;
		}

		/* Stili base per rendere immediatamente coerente il tema con Tailwind */
		body {
			background-color: var(--body-bg);
		}

		a {
			color: var(--main-link);
		}
	}
</style>
{if $system['css_customized']}
	<style type="text/css">
		:root {
			{* Sovrascritture dinamiche del tema per Tailwind *}
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

		{* CSS personalizzato del pannello admin *}
		{html_entity_decode($system['css_custome_css'], ENT_QUOTES)}
	</style>
{/if}
{if $page == "admin"}
	<style type="text/css">
		.search-wrapper-prnt {
			display: none !important;
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
