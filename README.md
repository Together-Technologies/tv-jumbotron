# tv-jumbotron
## Requirements
  * Gem
  * devilspie
  * git
## Setup
  * assuming user `user` clone repo onto Desktop
  * move [].ds to `.devilspie`
  * shut off all power management and lock screen
  * disable laptop lid from doing anything:
    * edit `/etc/systemd/logind.conf`, and change `#HandleLidSwitch=suspend` to `HandleLidSwitch=ignore`
  * set fixed IP for wired connection
    * `Use this connection only for resources on its network` (so internet still works with wireless)
