<!-- Livello 1: layout con utility Tailwind CSS per tipografia e spaziatura -->
<div class="heading-small mb20 text-sm font-semibold text-slate-700">
  {__("level 1")}
</div>
<div class="pl-md-4 mt-4 space-y-6">
  <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
    <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
      {__("Price/Referred")} ({$system['system_currency']})
    </label>
    <div class="col-md-9 md:col-span-9">
      <input
        type="text"
        class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
        name="affiliates_per_user"
        value="{$_affiliate['affiliates_per_user']}"
      >
      <div class="form-text mt-2 text-xs text-slate-500">
        {__("The fixed price for each new referred user")} ({__("level 1")})
      </div>
    </div>
  </div>

  <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
    <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
      {__("Percentage")} (%)
    </label>
    <div class="col-md-9 md:col-span-9">
      <input
        type="text"
        class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
        name="affiliates_percentage"
        value="{$_affiliate['affiliates_percentage']}"
      >
      <div class="form-text mt-2 text-xs text-slate-500">
        {__("The percentage from price for each new referred user")} ({__("level 1")})
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 2}x-hidden{/if}" id="affiliates-levels-2">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 2: griglia responsive con classi Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 2")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_2"
          value="{$_affiliate['affiliates_per_user_2']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 2")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_2"
          value="{$_affiliate['affiliates_percentage_2']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 2")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 3}x-hidden{/if}" id="affiliates-levels-3">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 3: campi prezzo e percentuale con input Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 3")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_3"
          value="{$_affiliate['affiliates_per_user_3']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 3")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_3"
          value="{$_affiliate['affiliates_percentage_3']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 3")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 4}x-hidden{/if}" id="affiliates-levels-4">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 4: tipografia e colonne responsive in Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 4")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_4"
          value="{$_affiliate['affiliates_per_user_4']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 4")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_4"
          value="{$_affiliate['affiliates_percentage_4']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 4")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 5}x-hidden{/if}" id="affiliates-levels-5">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 5: griglia campi con utility Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 5")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_5"
          value="{$_affiliate['affiliates_per_user_5']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 5")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_5"
          value="{$_affiliate['affiliates_percentage_5']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 5")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 6}x-hidden{/if}" id="affiliates-levels-6">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 6: input con focus ring Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 6")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_6"
          value="{$_affiliate['affiliates_per_user_6']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 6")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_6"
          value="{$_affiliate['affiliates_percentage_6']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 6")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 7}x-hidden{/if}" id="affiliates-levels-7">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 7: layout in colonna e testo di supporto -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 7")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_7"
          value="{$_affiliate['affiliates_per_user_7']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 7")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_7"
          value="{$_affiliate['affiliates_percentage_7']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 7")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 8}x-hidden{/if}" id="affiliates-levels-8">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 8: campi con bordo e focus Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 8")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_8"
          value="{$_affiliate['affiliates_per_user_8']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 8")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_8"
          value="{$_affiliate['affiliates_percentage_8']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 8")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 9}x-hidden{/if}" id="affiliates-levels-9">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 9: layout con spaziatura e testo Tailwind CSS -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 9")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_9"
          value="{$_affiliate['affiliates_per_user_9']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 9")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_9"
          value="{$_affiliate['affiliates_percentage_9']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 9")})
        </div>
      </div>
    </div>
  </div>
</div>

<div class="{if $system['affiliates_levels'] < 10}x-hidden{/if}" id="affiliates-levels-10">
  <div class="divider dashed my-6 border-t border-dashed border-slate-200"></div>

  <!-- Livello 10: ultimo livello con stile Tailwind CSS coerente -->
  <div class="heading-small mb20 text-sm font-semibold text-slate-700">
    {__("level 10")}
  </div>
  <div class="pl-md-4 mt-4 space-y-6">
    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Price/Referred")} ({$system['system_currency']})
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_per_user_10"
          value="{$_affiliate['affiliates_per_user_10']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The fixed price for each new referred user")} ({__("level 10")})
        </div>
      </div>
    </div>

    <div class="row form-group grid grid-cols-1 gap-4 md:grid-cols-12 md:items-start">
      <label class="col-md-3 form-label text-sm font-medium text-slate-700 md:col-span-3">
        {__("Percentage")} (%)
      </label>
      <div class="col-md-9 md:col-span-9">
        <input
          type="text"
          class="form-control mt-1 block w-full rounded-md border border-slate-300 bg-white px-3 py-2 text-sm text-slate-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          name="affiliates_percentage_10"
          value="{$_affiliate['affiliates_percentage_10']}"
        >
        <div class="form-text mt-2 text-xs text-slate-500">
          {__("The percentage from price for each new referred user")} ({__("level 10")})
        </div>
      </div>
    </div>
  </div>
</div>
