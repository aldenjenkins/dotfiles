#!/bin/bash
#if xset q &>/dev/null; then
#export DISPLAY=:0
#export XAUTHORITY=/home/alden/.Xauthority


#show_visual_notification()
#{
   # TODO: wait for 'iptable' user from ##linux to say how to do it better
   #       or, at least it's better to use 'who' command instead of 'w', 
   #       because 'who' echoes display number like (:0), and echoes nothing if no display,
   #       which is more convenient to parse.

   
   text=`echo "$text" | sed 's/###/\n/g'`

   declare -a logged_users=(` who | grep "(.*)" | sed 's/^\s*\(\S\+\).*(\(.*\))/\1 \2/g' | uniq | sort`)

   if [[ ${#logged_users[@]} == 0 ]]; then
      # it seems 'who' doesn't echo displays, so let's assume :0 (better than nothing)
      declare -a logged_users=(`who | awk '{print $1" :0"}' | uniq | sort`)
   fi

   for (( i=0; i<${#logged_users[@]}; i=($i + 2) )); do
      cur_user=${logged_users[$i + 0]}
      cur_display=${logged_users[$i + 1]}

      export DISPLAY=$cur_display
      su $cur_user -c "notify-send 'Keyboard connected, layout set to colemak'"
      su $cur_user -c "/usr/bin/setxkbmap us -variant colemak -option caps:escape"
   done
#}
#fi
