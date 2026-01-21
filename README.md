# TailwindCSSngine

Versione: **1.3.52**

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
- Il template `_ads.tpl` usa utility Tailwind CSS per card annunci, titolo e spaziature.
- Il template `_ads_campaigns.tpl` usa utility Tailwind CSS per card campagne, media e descrizioni.
- Il template `__feeds_blog.tpl` usa utility Tailwind per le card del blog e le versioni compatte.
- Il template `_blogs_carousel.tpl` usa utility Tailwind CSS per card carousel, copertine e controlli navigazione.
- Il template `_boosted_post.tpl` usa utility Tailwind CSS per evidenziare i post promossi con badge e contenitore dedicato.
- Il template `__feeds_candidate.tpl` usa classi Tailwind CSS per layout, pulsanti, dettagli candidato e stati focus.
- Il template `__feeds_comment.form.tpl` usa utility Tailwind CSS per il form commenti e gli strumenti di azione.
- Il template `__feeds_comment.text.tpl` usa utility Tailwind CSS per testo, immagini e player audio dei commenti.
- Il template `__feeds_comment.tpl` usa utility Tailwind CSS per layout, badge, reazioni e form risposte.
- Il template `__feeds_conversation.tpl` usa utility Tailwind CSS per avatar, anteprima messaggio e stati hover.
- Il template `_chatbox.tpl` usa utility Tailwind CSS per header, area conversazioni e composer messaggi.
- Il template `_chat-colors-menu.tpl` usa utility Tailwind CSS per il menu colori chat, badge circolari e stati hover.
- Il template `__feeds_course.tpl` usa utility Tailwind CSS per card corsi, badge promozione e call-to-action.
- Il template `__feeds_event.tpl` usa utility Tailwind CSS per card eventi, badge data e pulsanti.
- Il template `__feeds_funding.tpl` usa utility Tailwind CSS per layout, progress bar e pulsante dona.
- Il template `__feeds_game.tpl` usa utility Tailwind CSS per card dei giochi e riga compatta.
- Il template `__feeds_group.tpl` usa utility Tailwind CSS per card gruppo, badge piano e pulsanti di azione.
- Il template `__feeds_job.tpl` usa utility Tailwind CSS per card lavoro, badge promozione e call-to-action.
- Il template `__feeds_notification.tpl` usa utility Tailwind CSS per layout notifiche, stati unread e pulsanti azione.
- Il template `__feeds_offer.tpl` usa utility Tailwind CSS per card offerte, badge promozione e dettagli prezzo.
- Il template `__feeds_page.tpl` usa utility Tailwind CSS per card pagina, badge verifica, contatore like e pulsanti di azione.
- Il template `__feeds_post.body.photos.tpl` usa utility Tailwind CSS per layout galleria foto, gap e stati focus.
- Il template `__social_login.tpl` usa utility Tailwind CSS per pulsanti social, icone e stati focus.
- Il template `__feeds_post.body.tpl` usa utility Tailwind CSS per header post, badge, testo e snippet allegati.
- Il template `__feeds_post.comments.tpl` usa utility Tailwind CSS per filtri, lista commenti e call-to-action.
- Il template `__feeds_post_photo.tpl` usa utility Tailwind CSS per header post, media, statistiche e azioni.
- Il template `__feeds_post.tpl` usa utility Tailwind CSS per layout card, badge di stato e azioni post.
- Il template `__feeds_post.text.tpl` usa utility Tailwind CSS per testo del post e pattern colorati.
- Il template `__feeds_post_live.tpl` usa utility Tailwind CSS per header, statistiche, azioni e tip live.
- Il template `__feeds_post_reel.tpl` usa utility Tailwind CSS per header, statistiche, azioni e pulsanti tip.
- Il template `__feeds_product.tpl` usa utility Tailwind CSS per card prodotto, badge promozione e dettagli stock.
- Il template `__feeds_reel.tpl` usa utility Tailwind CSS per il layout del player reel, overlay e controlli.
- Il template `__feeds_profile_photo.tpl` usa utility Tailwind CSS per layout griglia e foto profilo.
- Il template `__feeds_review.tpl` usa utility Tailwind CSS per layout recensioni, avatar, foto e pulsanti.
- Il template `__reaction_emojis.tpl` usa utility Tailwind CSS per dimensioni, allineamento e forma delle reaction.
- Il template `__stars_rate.tpl` usa utility Tailwind CSS per layout e colori delle stelle di valutazione.
- Il template `__feeds_user.tpl` usa utility Tailwind CSS per card utente, avatar, badge e layout pulsanti.
- Il template `__feeds_video.tpl` usa utility Tailwind CSS per card video, anteprima quadrata e pulsante play.
- Il template `__social_share.tpl` usa utility Tailwind CSS per pulsanti social share con focus ring.
- Il template `__svg_icons.tpl` usa wrapper compatibili con Tailwind CSS per dimensioni e colore delle icone.
- Il template `_album.tpl` usa utility Tailwind CSS per intestazione album, pulsanti e griglia foto.
- Il template `_addresses.tpl` usa utility Tailwind CSS per layout griglia, card indirizzi e pulsanti azione.
- Il template `_affiliates_levels.tpl` usa utility Tailwind CSS per griglie responsive, input e testo di supporto.
