{* Opzione categoria con classi Tailwind per evidenziare la selezione. *}
<option class="text-slate-900 {if $data_category == $category['category_id']}bg-slate-100 font-semibold{/if}" {if $data_category == $category['category_id']}selected{/if} value="{$category['category_id']}">
  {str_repeat("- - ", $category['iteration'])}{__($category['category_name']|truncate:30)}
</option>
{if $category['sub_categories']}
  {foreach $category['sub_categories'] as $_category}
    {include file='__categories.recursive_options.tpl' category = $_category}
  {/foreach}
{/if}
