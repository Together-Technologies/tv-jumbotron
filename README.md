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
## Notes
  * create movie no audio (15 sec)ffmpeg -loop 1 -i test10.png -c:v libx264 -t 15 -pix_fmt yuv420p -vf scale=640:480 out.mp4
  * create movie w/ audio (not needed in this use case): ffmpeg -loop 1 -i test10.png -i untitled.wav -map 0:v -map 1:a -c:v libx264 -t 15 -pix_fmt yuv420p -vf scale=640:480 out.mp4

## Outline for creating live video:
  * audio is already on all players and control for live0 through live9
  * control is listening on a socket for filename representing to play video now
  * when control gets message plays video then goes back to commercials 
  * remote will print channel numbers even tho they are all the same channel
  * do not update channel number when playing live video
 
## Steps for creating live video:
  * create the video
  * ssh video to all the video players and the main computer
  * send msg to control computer to play video
  * loop filenames between 0 and 9 (save only 10)
  
## Todo
  * copy comm80.mp4 and comm80.wav to all the machines

## Pd logic
  * channels 0 through 9
  * 