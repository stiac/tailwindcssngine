<!-- Tailwind CSS: wrapper for star rating spacing and sizing -->
<span class="inline-flex items-center gap-1 text-sm" role="img" aria-label="Valutazione {$rate} su 5">
  <!-- Tailwind CSS: color the stars based on rating -->
  <i class="fa fa-star {if $rate >= 1}text-amber-400{else}text-slate-300{/if}" aria-hidden="true"></i>
  <i class="fa fa-star {if $rate >= 2}text-amber-400{else}text-slate-300{/if}" aria-hidden="true"></i>
  <i class="fa fa-star {if $rate >= 3}text-amber-400{else}text-slate-300{/if}" aria-hidden="true"></i>
  <i class="fa fa-star {if $rate >= 4}text-amber-400{else}text-slate-300{/if}" aria-hidden="true"></i>
  <i class="fa fa-star {if $rate >= 5}text-amber-400{else}text-slate-300{/if}" aria-hidden="true"></i>
</span>
