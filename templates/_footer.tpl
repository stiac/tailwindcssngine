{if !$user->_logged_in && !$system['newsfeed_public'] && $page == "index"}
{else}
	<!-- ads -->
	{include file='_ads.tpl' _ads=$ads_master['footer'] _master=true}
	<!-- ads -->
{/if}


</div>
<!-- right column -->
</div>
<!-- row -->
</div>
<!-- container -->
</div>
<!-- main wrapper -->

<!-- Tailwind-aware backdrop for user menu (keeps Bootstrap class for legacy JS) -->
<div class="d-none position-fixed w-100 h-100 top-0 start-0 end-0 bottom-0 bg-black bg-opacity-75 x_user_menu_backdrop hidden fixed inset-0 bg-black/75"></div>

<!-- Dependencies CSS [Twemoji-Awesome] -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/SebastianAigner/twemoji-amazing/twemoji-amazing.css">
<!-- Dependencies CSS [Twemoji-Awesome] -->

<!-- JS Files -->
{include file='_js_files.tpl'}
<!-- JS Files -->

<!-- JS Templates -->
{include file='_js_templates.tpl'}
<!-- JS Templates -->

<!-- Footer Custom JavaScript -->
{if $system['custome_js_footer']}
  <script>
    {html_entity_decode($system['custome_js_footer'], ENT_QUOTES)}
  </script>
{/if}
<!-- Footer Custom JavaScript -->

<!-- Analytics Code -->
{if $system['analytics_code']}{html_entity_decode($system['analytics_code'], ENT_QUOTES)}{/if}
<!-- Analytics Code -->

<!-- Sounds -->
{if $user->_logged_in}
  <!-- Notification -->
  <audio id="notification-sound" preload="auto">
    <source src="{$system['system_url']}/includes/assets/sounds/notification.mp3" type="audio/mpeg">
  </audio>
  <!-- Notification -->
  {if $system['chat_enabled']}
    <!-- Chat -->
    <audio id="chat-sound" preload="auto">
      <source src="{$system['system_url']}/includes/assets/sounds/chat.mp3" type="audio/mpeg">
    </audio>
    <!-- Chat -->
    <!-- Call -->
    <audio id="chat-calling-sound" preload="auto" loop="true">
      <source src="{$system['system_url']}/includes/assets/sounds/calling.mp3" type="audio/mpeg">
    </audio>
    <!-- Call -->
    <!-- Video -->
    <audio id="chat-ringing-sound" preload="auto" loop="true">
      <source src="{$system['system_url']}/includes/assets/sounds/ringing.mp3" type="audio/mpeg">
    </audio>
    <!-- Video -->
  {/if}
{/if}
<!-- Sounds -->

<!-- PWA Install Banner -->
{if $system['pwa_enabled'] && $system['pwa_banner_enabled']}
  <!-- Tailwind-ready PWA banner layout for CDN utility support -->
  <div class="pwa_install_banner fixed bottom-0 left-0 w-full bg-white shadow-lg p-4" id="PWAInstallBanner">
    <div class="inner flex flex-wrap items-center gap-3">
      <div class="close flex h-8 w-8 items-center justify-center text-gray-500 hover:text-gray-700" id="PWAInstallClose">
        <i class="fa-regular fa-circle-xmark fa-lg"></i>
      </div>
      <div class="logo flex h-12 w-12 items-center justify-center">
        <img class="h-10 w-10 rounded-sm" src="{$system['system_uploads']}/{if $system['pwa_192_icon']}{$system['pwa_192_icon']}{else}pwa/icon-192x192.png{/if}" alt="logo" />
      </div>
      <div class="name flex-1 min-w-[180px]">
        <span class="title block text-base font-semibold text-gray-900">{$system['system_title']}</span>
        <span class="description block text-sm text-gray-500">{$system['system_url']}</span>
      </div>
      <div class="cta flex items-center">
        <button id="PWAInstallButton" class="btn btn-primary rounded-pill inline-flex items-center rounded-full bg-blue-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-blue-700 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-blue-500 focus-visible:ring-offset-2">{__("Install")}</button>
      </div>
    </div>
  </div>

  <script>
    function isIos() {
      return /iphone|ipad|ipod/.test(navigator.userAgent.toLowerCase());
    }

    function isInStandaloneMode() {
      return ('standalone' in window.navigator) && window.navigator.standalone;
    }

    $(document).ready(function() {
      $("#PWAInstallClose").on("click", function(e) {
        $("#PWAInstallBanner").removeClass("is-active");
        setCookie("PWAInstallCookieHide", 1, 14);
      });
      if (isIos() && !isInStandaloneMode()) {
        let cookie = getCookie("PWAInstallCookieHide");
        if (!cookie) {
          $("#PWAInstallBanner").addClass("is-active");
        }
      }
    });
    window.addEventListener("beforeinstallprompt", function(event) {
      event.preventDefault();
      if (!getCookie("PWAInstallCookieHide")) {
        $("#PWAInstallBanner").addClass("is-active");
      }
      window.promptEvent = event;
    });
    window.addEventListener("appinstalled", function() {
      $("#PWAInstallBanner").removeClass("is-active");
      setCookie("PWAInstallCookieHide", 1, 14);
    });
    document.addEventListener("click", function(event) {
      if (event.target.matches("#PWAInstallButton")) {
        if (isIos()) {
          alert("To install this app, tap the Share icon and choose 'Add to Home Screen'");
        } else if (window.promptEvent) {
          window.promptEvent.prompt();
        }
      }
    });
  </script>
{/if}
<!-- PWA Install Banner -->

</body>

</html>
