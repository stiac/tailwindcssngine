<div class="w-1/3 p-1.5 sm:p-2">
  <!-- Profile photo tile aligned to Tailwind CSS layout utilities -->
  <div class="pg_photo relative cursor-pointer rounded-lg bg-cover bg-center shadow-sm transition hover:shadow-md focus:outline-none focus-visible:ring-2 focus-visible:ring-sky-500 {if $_filter == "avatar"}js_profile-picture-change{else}js_profile-cover-change{/if}"
    data-id="{$id}"
    data-type="{$type}"
    data-image="{$photo['source']}"
    style="background-image:url('{$system['system_uploads']}/{$photo['source']}');">
    <!-- Empty div keeps the square aspect ratio via existing .pg_photo CSS rules -->
  </div>
</div>
