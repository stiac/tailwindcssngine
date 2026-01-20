# Tailwind CSS Theme for Sngine

**Versione:** 1.3.1

Tema adattato a Tailwind CSS tramite CDN per essere utilizzabile su hosting condivisi (FTP/cPanel) senza build o compilazione.

## Caratteristiche principali
- Integrazione Tailwind CSS via CDN senza tool di build.
- Mappatura di classi legacy (es. `btn`, `alert`, `form-control`) in utility Tailwind per una transizione graduale.
- Template principali aggiornati con utility Tailwind per layout e tipografia.

## Requisiti
- Hosting web compatibile con PHP e file `.tpl` (motore template Sngine).
- Accesso FTP o file manager (nessun accesso shell richiesto).

## Installazione
1. Carica i file del tema nella directory del tema in Sngine.
2. Verifica che `templates/_head.tpl` includa Tailwind CSS via CDN.
3. Personalizza la configurazione Tailwind in `_head.tpl` se necessario.

## Note sulla migrazione
- Alcune classi legacy sono mantenute e mappate a Tailwind in `templates/_head.css.tpl`.
- Il CSS storico (`css/style.css`) rimane disponibile per compatibilità, ma la direzione è Tailwind-first.

## Aggiornamento versione
- Aggiorna `VERSION`, `CHANGELOG.md` e questo `README.md` ad ogni rilascio.

