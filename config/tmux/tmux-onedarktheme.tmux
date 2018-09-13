[38;5;242m#!/bin/bash[39m
[38;5;15monedark_black[39m[38;5;197m=[39m[38;5;186m"#282c34"[39m
[38;5;15monedark_blue[39m[38;5;197m=[39m[38;5;186m"#61afef"[39m
[38;5;15monedark_yellow[39m[38;5;197m=[39m[38;5;186m"#e5c07b"[39m
[38;5;15monedark_red[39m[38;5;197m=[39m[38;5;186m"#e06c75"[39m
[38;5;15monedark_white[39m[38;5;197m=[39m[38;5;186m"#aab2bf"[39m
[38;5;15monedark_green[39m[38;5;197m=[39m[38;5;186m"#98c379"[39m
[38;5;15monedark_visual_grey[39m[38;5;197m=[39m[38;5;186m"#3e4452"[39m
[38;5;15monedark_comment_grey[39m[38;5;197m=[39m[38;5;186m"#5c6370"[39m

[38;5;15mget[39m[38;5;197m([39m[38;5;197m)[39m[38;5;15m [39m[38;5;197m{[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15moption[39m[38;5;197m=[39m[38;5;15m$1[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15mdefault_value[39m[38;5;197m=[39m[38;5;15m$2[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15moption_value[39m[38;5;197m=[39m[38;5;186m"[39m[38;5;81m$([39m[38;5;15mtmux[39m[38;5;15m [39m[38;5;15mshow-option[39m[38;5;15m [39m[38;5;15m-gqv[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$option[39m[38;5;186m"[39m[38;5;81m)[39m[38;5;186m"[39m

[38;5;15m   [39m[38;5;81mif[39m[38;5;15m [39m[38;5;197m[[39m[38;5;15m [39m[38;5;15m-z[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$option_value[39m[38;5;186m"[39m[38;5;15m [39m[38;5;197m][39m[38;5;15m;[39m[38;5;15m [39m[38;5;81mthen[39m
[38;5;15m      [39m[38;5;15mecho[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$default_value[39m[38;5;186m"[39m
[38;5;15m   [39m[38;5;81melse[39m
[38;5;15m      [39m[38;5;15mecho[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$option_value[39m[38;5;186m"[39m
[38;5;15m   [39m[38;5;81mfi[39m
[38;5;197m}[39m

[38;5;15mset[39m[38;5;197m([39m[38;5;197m)[39m[38;5;15m [39m[38;5;197m{[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15moption[39m[38;5;197m=[39m[38;5;15m$1[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15mvalue[39m[38;5;197m=[39m[38;5;15m$2[39m
[38;5;15m   [39m[38;5;15mtmux[39m[38;5;15m [39m[38;5;15mset-option[39m[38;5;15m [39m[38;5;15m-gq[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$option[39m[38;5;186m"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$value[39m[38;5;186m"[39m
[38;5;197m}[39m

[38;5;15msetw[39m[38;5;197m([39m[38;5;197m)[39m[38;5;15m [39m[38;5;197m{[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15moption[39m[38;5;197m=[39m[38;5;15m$1[39m
[38;5;15m   [39m[38;5;15mlocal[39m[38;5;15m [39m[38;5;15mvalue[39m[38;5;197m=[39m[38;5;15m$2[39m
[38;5;15m   [39m[38;5;15mtmux[39m[38;5;15m [39m[38;5;15mset-window-option[39m[38;5;15m [39m[38;5;15m-gq[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$option[39m[38;5;186m"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$value[39m[38;5;186m"[39m
[38;5;197m}[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status"[39m[38;5;15m [39m[38;5;186m"on"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-justify"[39m[38;5;15m [39m[38;5;186m"left"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-left-length"[39m[38;5;15m [39m[38;5;186m"100"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-right-length"[39m[38;5;15m [39m[38;5;186m"100"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-right-attr"[39m[38;5;15m [39m[38;5;186m"none"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"message-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_white[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"message-bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"message-command-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_white[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"message-command-bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-attr"[39m[38;5;15m [39m[38;5;186m"none"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-left-attr"[39m[38;5;15m [39m[38;5;186m"none"[39m

[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-attr"[39m[38;5;15m [39m[38;5;186m"none"[39m

[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-activity-bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-activity-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-activity-attr"[39m[38;5;15m [39m[38;5;186m"none"[39m

[38;5;15msetw[39m[38;5;15m [39m[38;5;186m"window-status-separator"[39m[38;5;15m [39m[38;5;186m""[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"window-style"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186mfg=[39m[38;5;15m$onedark_comment_grey[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"window-active-style"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186mfg=[39m[38;5;15m$onedark_white[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"pane-border-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_white[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"pane-active-border-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_white[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"display-panes-active-colour"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_yellow[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"display-panes-colour"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_blue[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_white[39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"@prefix_highlight_fg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_black[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"@prefix_highlight_bg"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;15m$onedark_green[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"@prefix_highlight_copy_mode_attr"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186mfg=[39m[38;5;15m$onedark_black[39m[38;5;186m,bg=[39m[38;5;15m$onedark_green[39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"@prefix_highlight_output_prefix"[39m[38;5;15m [39m[38;5;186m"  "[39m

[38;5;15mstatus_widgets[39m[38;5;197m=[39m[38;5;81m$([39m[38;5;15mget[39m[38;5;15m [39m[38;5;186m"@onedark_widgets"[39m[38;5;81m)[39m
[38;5;15mtime_format[39m[38;5;197m=[39m[38;5;81m$([39m[38;5;15mget[39m[38;5;15m [39m[38;5;186m"@onedark_time_format"[39m[38;5;15m [39m[38;5;186m"%R"[39m[38;5;81m)[39m
[38;5;15mdate_format[39m[38;5;197m=[39m[38;5;81m$([39m[38;5;15mget[39m[38;5;15m [39m[38;5;186m"@onedark_date_format"[39m[38;5;15m [39m[38;5;186m"%d/%m/%Y"[39m[38;5;81m)[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-right"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186m#[fg=[39m[38;5;15m$onedark_white[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m,nounderscore,noitalics][39m[38;5;186m${[39m[38;5;15mtime_format[39m[38;5;186m}[39m[38;5;186m  [39m[38;5;186m${[39m[38;5;15mdate_format[39m[38;5;186m}[39m[38;5;186m #[fg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m]#[fg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,bg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m]#[fg=[39m[38;5;15m$onedark_white[39m[38;5;186m, bg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m][39m[38;5;186m${[39m[38;5;15mstatus_widgets[39m[38;5;186m}[39m[38;5;186m #[fg=[39m[38;5;15m$onedark_green[39m[38;5;186m,bg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,nobold,nounderscore,noitalics]#[fg=[39m[38;5;15m$onedark_black[39m[38;5;186m,bg=[39m[38;5;15m$onedark_green[39m[38;5;186m,bold] #h #[fg=[39m[38;5;15m$onedark_yellow[39m[38;5;186m, bg=[39m[38;5;15m$onedark_green[39m[38;5;186m]#[fg=[39m[38;5;15m$onedark_red[39m[38;5;186m,bg=[39m[38;5;15m$onedark_yellow[39m[38;5;186m][39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"status-left"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186m#[fg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,bg=[39m[38;5;15m$onedark_green[39m[38;5;186m,bold] #S #{prefix_highlight}#[fg=[39m[38;5;15m$onedark_green[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m,nobold,nounderscore,noitalics][39m[38;5;186m"[39m

[38;5;15mset[39m[38;5;15m [39m[38;5;186m"window-status-format"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186m#[fg=[39m[38;5;15m$onedark_black[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m,nobold,nounderscore,noitalics]#[fg=[39m[38;5;15m$onedark_white[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m] #I  #W #[fg=[39m[38;5;15m$onedark_black[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m,nobold,nounderscore,noitalics][39m[38;5;186m"[39m
[38;5;15mset[39m[38;5;15m [39m[38;5;186m"window-status-current-format"[39m[38;5;15m [39m[38;5;186m"[39m[38;5;186m#[fg=[39m[38;5;15m$onedark_black[39m[38;5;186m,bg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,nobold,nounderscore,noitalics]#[fg=[39m[38;5;15m$onedark_white[39m[38;5;186m,bg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,nobold] #I  #W #[fg=[39m[38;5;15m$onedark_visual_grey[39m[38;5;186m,bg=[39m[38;5;15m$onedark_black[39m[38;5;186m,nobold,nounderscore,noitalics][39m[38;5;186m"[39m
