" Configure terminal-only colors and visual behavior.

" use solarized colors <3
" keep bootstrap and first-time PlugInstall working before the plugin exists
silent! colorscheme NeoSolarized

" try to inherit colors from the terminal
hi Normal guibg=NONE ctermbg=NONE

" set the background color based on OS theme when available
if executable('defaults')
  let s:sys = system('defaults read -g AppleInterfaceStyle 2>/dev/null')
  if v:shell_error
    set background=light
  else
    set background=dark
  endif
endif
