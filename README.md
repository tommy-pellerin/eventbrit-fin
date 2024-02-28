# README
1st Link to my fly.io server application:
https://eventbrite-tp.fly.dev/

2nd link
https://eventbritet.fly.dev/


To know:
- gem Devise create automatically email senders, no need to create a usermailer.
- change parameters in config>initializers>devise :
   => change the email here : onfig.mailer_sender = 'tommytp@hotmail.fr'
- If you want to use "Confirmation_instructions.html.erb", "email_changed.html.erb" and "password_change.html.erb" you need to activate in model "Confirmable"


Git to know : git revert can revert all the repository except the database ! so if you want to change column etc you need to change via migration !!

- Asset-pipeline :
   - Il faut copier coller les fichier css ainsi que les fichiers javascripts
   - Copier coller les les code html venant des pages qu'on veut, ex: index.html ou about.html etc
   => comme on a insérer les fichiers de style on peut enlever le CDN de bootstrap, cependant en enlevant les codes CDN de bootstrap de la page views/layouts/application il faut precompiler l'app pour que celui ci prend en compte les différent fichiers insérés, SINON c'est le CDN qui fait tout le travail.

- ActiveStorage :
