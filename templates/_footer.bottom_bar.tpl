<div class="footer-bottom-bar{if $page == 'reels'}x-hidden{/if} fixed bottom-0 left-0 right-0 z-[999] h-[70px] md:hidden">
  <div class="container">
    <!-- Tailwind: layout principale della bottom bar -->
    <div class="footer-bottom-bar-links flex gap-2.5">
      <!-- home -->
      <div class="link {if $page == 'index' && $view == ''}active{/if} flex-1 text-center h-[70px]">
        <!-- Tailwind: link principale -->
        <a class="relative block text-center px-2.5 py-2 my-0.5 rounded-lg" href="{$system['system_url']}">
          {include file='__svg_icons.tpl' icon="header-home" class="header-icon {if $page == "index" && $view == ""}active{/if}" width="24px" height="24px"}
          <div class="title text-xs leading-6">{__("Home")}</div>
        </a>
      </div>
      <!-- home -->

      <!-- watch -->
      {if $system['reels_enabled']}
        <div class="link {if $page == 'reels'}active{/if} flex-1 text-center h-[70px]">
          <!-- Tailwind: link reels -->
          <a class="relative block text-center px-2.5 py-2 my-0.5 rounded-lg" href="{$system['system_url']}/reels">
          {include file='__svg_icons.tpl' icon="reels" class="header-icon {if $page == "reels"}active{/if}" width="24px" height="24px"}
          <div class="title text-xs leading-6">{__("Reels")}</div>
        </a>
      </div>
      {elseif $system['watch_enabled']}
      <div class="link {if $page == 'index' && $view == 'watch'}active{/if} flex-1 text-center h-[70px]">
        <!-- Tailwind: link watch -->
        <a class="relative block text-center px-2.5 py-2 my-0.5 rounded-lg" href="{$system['system_url']}/watch">
          {include file='__svg_icons.tpl' icon="watch" class="header-icon {if $page == "index" && $view == "watch"}active{/if}" width="24px" height="24px"}
          <div class="title text-xs leading-6">{__("Watch")}</div>
        </a>
      </div>
      {/if}
      <!-- watch -->

      <!-- add -->
      {if $user->_data['can_publish_posts'] || $user->_data['can_go_live'] || $user->_data['can_add_stories'] || $user->_data['can_write_blogs'] || $system['market_enabled'] || $user->_data['can_raise_funding'] || $user->_data['can_create_ads'] || $system['pages_enabled'] || $system['groups_enabled'] || $system['events_enabled']}
        <div class="link flex-1 text-center h-[70px]">
          <!-- Tailwind: dropdown aggiunta contenuti -->
          <a class="dropdown relative block text-center px-2.5 py-2 my-0.5 rounded-lg" href="#" data-bs-toggle="dropdown" data-display="static">
            {include file='__svg_icons.tpl' icon="header-plus" class="header-icon" width="24px" height="24px"}
            <div class="title text-xs leading-6">{__("Add")}</div>
          </a>
          <div class="dropdown-menu dropdown-widget">
            <div class="js_scroller" data-slimScroll-height="360">
              <!-- Tailwind: griglia quick add -->
              <div class="footer-quick-adds flex flex-wrap gap-2.5 p-5">
                {if $user->_data['can_publish_posts']}
                  <div class="add-quick-item full flex-1 basis-full min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="posts/publisher.php">
                    {include file='__svg_icons.tpl' icon="newsfeed" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Post")}</div>
                  </div>
                {/if}
                {if $user->_data['can_go_live']}
                  <a class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" href="{$system['system_url']}/live">
                    {include file='__svg_icons.tpl' icon="live" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Live")}</div>
                  </a>
                {/if}
                {if $user->_data['can_add_stories']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="posts/story.php?do=create">
                    {include file='__svg_icons.tpl' icon="24_hours" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Story")}</div>
                  </div>
                {/if}
                {if $user->_data['can_write_blogs']}
                  <a class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" href="{$system['system_url']}/blogs/new">
                    {include file='__svg_icons.tpl' icon="blogs" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Blog")} {if $system['paid_blogs_enabled']}<span class="badge rounded-pill text-bg-danger">{__("Paid")}</span>{/if}</div>
                  </a>
                {/if}
                {if $system['market_enabled']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="posts/product.php?do=create">
                    {include file='__svg_icons.tpl' icon="products" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Product")} {if $system['paid_products_enabled']}<span class="badge rounded-pill text-bg-danger">{__("Paid")}</span>{/if}</div>
                  </div>
                {/if}
                {if $user->_data['can_raise_funding']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="posts/funding.php?do=create">
                    {include file='__svg_icons.tpl' icon="funding" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Funding")} {if $system['paid_funding_enabled']}<span class="badge rounded-pill text-bg-danger">{__("Paid")}</span>{/if}</div>
                  </div>
                {/if}
                {if $user->_data['can_create_ads']}
                  <a class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" href="{$system['system_url']}/ads/new">
                    {include file='__svg_icons.tpl' icon="ads" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Ads")}</div>
                  </a>
                {/if}
                {if $system['pages_enabled']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="modules/add.php?type=page">
                    {include file='__svg_icons.tpl' icon="pages" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Page")}</div>
                  </div>
                {/if}
                {if $system['groups_enabled']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="modules/add.php?type=group">
                    {include file='__svg_icons.tpl' icon="groups" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Group")}</div>
                  </div>
                {/if}
                {if $system['events_enabled']}
                  <div class="add-quick-item flex-1 min-w-[150px] text-center rounded-xl p-2.5 text-[13px]" data-toggle="modal" data-url="modules/add.php?type=event">
                    {include file='__svg_icons.tpl' icon="events" class="main-icon" width="24px" height="24px"}
                    <div class="mt-1.5">{__("Event")}</div>
                  </div>
                {/if}
              </div>
            </div>
          </div>
        </div>
      {/if}
      <!-- add -->

      <!-- search -->
      <div class="link {if $page == 'search'}active{/if} flex-1 text-center h-[70px]">
        <!-- Tailwind: link search -->
        <a class="relative block text-center px-2.5 py-2 my-0.5 rounded-lg" href="{$system['system_url']}/search">
          {include file='__svg_icons.tpl' icon="header-search" class="header-icon {if $page == "search"}active{/if}" width="24px" height="24px"}
          <div class="title text-xs leading-6">{__("Search")}</div>
        </a>
      </div>
      <!-- search -->

      <!-- menu -->
      <div class="link flex-1 text-center h-[70px]">
        {include file='_user_menu.tpl' _as_widget=true}
      </div>
      <!-- menu -->

    </div>
  </div>
</div>
