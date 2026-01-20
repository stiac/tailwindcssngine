<div class="job-candidate-wrapper rounded-2xl border border-slate-200 bg-white p-6 shadow-sm">
  <!-- Candidate header -->
  <div class="job-candidate-header flex flex-col gap-6 sm:flex-row sm:items-start">
    <!-- Avatar -->
    <div class="job-candidate-avatar flex shrink-0 justify-center sm:justify-start">
      <a class="post-avatar-picture large h-20 w-20 rounded-full bg-cover bg-center ring-2 ring-slate-100" href="{$system['system_url']}/{$candidate['user_name']}" style="background-image:url({$candidate['user_picture']});"></a>
    </div>
    <!-- Candidate info -->
    <div class="job-candidate-info flex-1 space-y-4">
      <div class="name text-xl font-semibold text-slate-900">
        <a class="transition hover:text-sky-600 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-sky-500 focus-visible:ring-offset-2" href="{$system['system_url']}/{$candidate['user_name']}">{$candidate['name']}</a>
      </div>
      <!-- Meta details -->
      <div class="grid gap-3 text-sm text-slate-600 sm:grid-cols-2">
        <div class="flex items-center gap-2">
          <i class="fas fa-map-marker-alt fa-fw text-sky-500"></i>
          <span>{$candidate['location']}</span>
        </div>
        <div class="flex items-center gap-2">
          <i class="fas fa-clock fa-fw text-amber-500"></i>
          <span class="js_moment" data-time="{$candidate['applied_time']}">{$candidate['applied_time']}</span>
        </div>
      </div>
      <div class="grid gap-3 text-sm text-slate-600 sm:grid-cols-2">
        <div class="flex items-center gap-2">
          <i class="fas fa-phone-alt fa-fw text-emerald-600"></i>
          <span>{$candidate['phone']}</span>
        </div>
        <div class="flex items-center gap-2">
          <i class="fas fa-envelope fa-fw text-teal-600"></i>
          <span>{$candidate['email']}</span>
        </div>
      </div>
      <!-- Action buttons -->
      <div class="flex flex-wrap gap-3">
        <!-- message -->
        {if $system['chat_enabled']}
          <button type="button" class="js_chat-start inline-flex items-center gap-2 rounded-full bg-sky-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-sky-500 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-sky-500 focus-visible:ring-offset-2" data-uid="{$candidate['user_id']}" data-name="{if $system['show_usernames_enabled']}{$candidate['user_name']}{else}{$candidate['user_firstname']} {$candidate['user_lastname']}{/if}" data-link="{$candidate['user_name']}" data-picture="{$candidate['user_picture']}">
            <i class="fa fa-comments"></i>
            <span>{__("Message")}</span>
          </button>
        {/if}
        <!-- message -->
        <!-- resume -->
        {if $candidate['cv']}
          <a href="{$system['system_uploads']}/{$candidate['cv']}" class="inline-flex items-center gap-2 rounded-full bg-emerald-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-emerald-500 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-500 focus-visible:ring-offset-2" target="_blank" rel="noopener">
            <i class="fa fa-paperclip"></i>
            <span>{__("Download CV")}</span>
          </a>
        {/if}
        <!-- resume -->
      </div>
    </div>
  </div>
  {if !$_for_course}
    <!-- Work experience block -->
    <div class="mt-8 border-t border-slate-200 pt-6">
      <div class="job-question space-y-4">
        <div>
          <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{__("Where did you work?")}</div>
          <div class="answer text-base text-slate-800">{$candidate['work_place']}</div>
        </div>
        <div class="grid gap-4 sm:grid-cols-3">
          <div>
            <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{__("Position")}</div>
            <div class="answer text-base text-slate-800">{$candidate['work_position']}</div>
          </div>
          <div>
            <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{__("From")}</div>
            <div class="answer text-base text-slate-800">{$candidate['work_from']}</div>
          </div>
          <div>
            <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{__("To")}</div>
            <div class="answer text-base text-slate-800">{if $candidate['work_now']}{__("Till Now")}{else}{$candidate['work_to']}{/if}</div>
          </div>
        </div>
        <div>
          <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{__("Description")}</div>
          <div class="answer text-base text-slate-800">{$candidate['work_description']}</div>
        </div>
      </div>
    </div>
    <!-- questions -->
    {if $candidate['question_1_title'] || $candidate['question_2_title'] || $candidate['question_3_title']}
      <!-- Additional questions block -->
      <div class="mt-8 border-t border-slate-200 pt-6">
        <div class="space-y-6">
          <!-- question #1 -->
          {if $candidate['question_1_title']}
            <div class="job-question space-y-2">
              <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{$candidate['question_1_title']}</div>
              <div class="answer text-base text-slate-800">
                {$candidate['question_1_answer']}
              </div>
            </div>
          {/if}
          <!-- question #1 -->
          <!-- question #2 -->
          {if $candidate['question_2_title']}
            <div class="job-question space-y-2">
              <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{$candidate['question_2_title']}</div>
              <div class="answer text-base text-slate-800">
                {$candidate['question_2_answer']}
              </div>
            </div>
          {/if}
          <!-- question #2 -->
          <!-- question #3 -->
          {if $candidate['question_3_title']}
            <div class="job-question space-y-2">
              <div class="question text-sm font-semibold uppercase tracking-wide text-slate-500">{$candidate['question_3_title']}</div>
              <div class="answer text-base text-slate-800">
                {$candidate['question_3_answer']}
              </div>
            </div>
          {/if}
          <!-- question #3 -->
        </div>
      </div>
    {/if}
    <!-- questions -->
  {/if}
</div>
