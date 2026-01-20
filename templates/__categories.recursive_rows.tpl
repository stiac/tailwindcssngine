{* Tailwind CSS utility classes affiancate alle classi esistenti per mantenere la compatibilità *}
<tr class="treegrid-{$row['category_id']} {if $row['category_parent_id'] != '0'}treegrid-parent-{$row['category_parent_id']}{/if} border-b border-slate-200">
  <td class="px-4 py-3 text-sm text-slate-700">
    {$row['category_name']}
  </td>
  {if $_has_image}
    <td class="px-4 py-3 text-sm text-slate-600">
      {if {$row['category_image']}}
        <img class="img-thumbnail table-img-thumbnail h-12 w-12 rounded-md border border-slate-200 object-cover" src="{$system['system_uploads']}/{$row['category_image']}" width="64px" height="64px" alt="{$row['category_name']}">
      {else}
        <span class="text-xs uppercase tracking-wide text-slate-400">N/A</span>
      {/if}
    </td>
  {/if}
  <td class="px-4 py-3 text-sm text-slate-600">
    {$row['category_description']|truncate:50}
  </td>
  <td class="px-4 py-3 text-sm">
    <span class="badge rounded-pill badge-lg bg-info inline-flex items-center rounded-full bg-sky-100 px-3 py-1 text-xs font-semibold uppercase tracking-wide text-sky-700">
      {$row['category_order']}
    </span>
  </td>
  <td class="px-4 py-3 text-sm">
    <div class="flex items-center gap-2">
      <a data-bs-toggle="tooltip" title='{__("Edit")}' href="{$system['system_url']}/{$control_panel['url']}/{$_url}/edit_{if $_edit_slug}{$_edit_slug}_{/if}category/{$row['category_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary inline-flex items-center justify-center rounded-full bg-indigo-600 px-3 py-2 text-xs font-semibold text-white shadow-sm transition hover:bg-indigo-500">
        <i class="fa fa-pencil-alt"></i>
      </a>
      <button data-bs-toggle="tooltip" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter inline-flex items-center justify-center rounded-full bg-rose-600 px-3 py-2 text-xs font-semibold text-white shadow-sm transition hover:bg-rose-500" data-handle="{$_handle}" data-id="{$row['category_id']}">
        <i class="fa fa-trash-alt"></i>
      </button>
    </div>
  </td>
</tr>
{if $row['sub_categories']}
  {foreach $row['sub_categories'] as $_row}
	{include file='__categories.recursive_rows.tpl' row=$_row _url=$_url _handle=$_handle _has_image=$_has_image _edit_slug=$_edit_slug}
  {/foreach}
{/if}
