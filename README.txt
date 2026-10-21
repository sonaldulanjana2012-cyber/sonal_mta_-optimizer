SONAL MTA LOW-END OPTIMIZER
===========================

This ZIP includes:
- sonal.cmd: optional Windows power-plan helper.
- index.html: offline setup dashboard and tips.
- client.lua + meta.xml: MTA client-side visual preset resource.

1) Windows helper (optional)
----------------------------
Right-click sonal.cmd and choose Run as administrator only if Windows requires
it. It asks before applying the High Performance power plan. This can increase
power use and heat on some PCs. To restore Balanced, run:
  powercfg /setactive SCHEME_BALANCED

2) MTA resource
---------------
Copy this folder into your MTA server's resources folder only if you own/manage
that server, then start the resource from the server console/admin panel.
For a server you do not control, ask its admin whether client-side resources are
allowed. Some servers may block custom resources.
In game, type /sonal to toggle the visual preset.

The preset reduces view distance and disables some visual effects. This may
make distant objects appear later. It does not guarantee an FPS increase.

3) Offline dashboard
--------------------
Double-click index.html to open the tips page in your browser. It does not
modify settings automatically.

Safety:
- No registry changes, anti-cheat bypass, injectors, or file deletion.
- Keep backups and use only on systems/servers you are authorized to manage.
