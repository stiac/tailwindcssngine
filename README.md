# TailwindCSSngine

Versione: **1.3.20**

## Descrizione
Template e asset per l'integrazione di Tailwind CSS all'interno dei file `.tpl` del progetto, con supporto tramite CDN per un'adozione rapida senza build.

## Requisiti
- Un server web compatibile con template `.tpl`
- Accesso a Internet per caricare Tailwind CSS via CDN

## Installazione
1. Caricare i file via FTP o file manager.
2. Assicurarsi che i template includano `templates/_head.tpl` per caricare Tailwind CSS.

## Utilizzo
- Aggiungere classi Tailwind direttamente nei template `.tpl`.
- I componenti possono essere ispirati ai blocchi Tailwind UI: https://catalyst.tailwindui.com/docs.
- Le opzioni dei select categorie includono classi Tailwind per evidenziare l'elemento selezionato.

## Note
- Nessuna build richiesta: Tailwind CSS è caricato via CDN.
- Aggiornare `CHANGELOG.md` e `VERSION` ad ogni rilascio.
- Il template `__feeds_album.tpl` usa layout e tipografia Tailwind per le card degli album.
- Il template `__feeds_blog.tpl` usa utility Tailwind per le card del blog e le versioni compatte.
- Il template `__feeds_candidate.tpl` usa classi Tailwind CSS per layout, pulsanti, dettagli candidato e stati focus.
- Il template `__feeds_comment.form.tpl` usa utility Tailwind CSS per il form commenti e gli strumenti di azione.
- Il template `__feeds_comment.text.tpl` usa utility Tailwind CSS per testo, immagini e player audio dei commenti.
- Il template `__feeds_comment.tpl` usa utility Tailwind CSS per layout, badge, reazioni e form risposte.
- Il template `__feeds_conversation.tpl` usa utility Tailwind CSS per avatar, anteprima messaggio e stati hover.
- Il template `__feeds_course.tpl` usa utility Tailwind CSS per card corsi, badge promozione e call-to-action.
- Il template `__feeds_event.tpl` usa utility Tailwind CSS per card eventi, badge data e pulsanti.
- Il template `__feeds_funding.tpl` usa utility Tailwind CSS per layout, progress bar e pulsante dona.
- Il template `__feeds_game.tpl` usa utility Tailwind CSS per card dei giochi e riga compatta.
- Il template `__feeds_group.tpl` usa utility Tailwind CSS per card gruppo, badge piano e pulsanti di azione.
- Il template `__feeds_job.tpl` usa utility Tailwind CSS per card lavoro, badge promozione e call-to-action.
- Il template `__feeds_notification.tpl` usa utility Tailwind CSS per layout notifiche, stati unread e pulsanti azione.
