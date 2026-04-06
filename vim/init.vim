" source all configuration files, then source the env specific ones

exe 'source' stdpath('config') . '/general.vim'
exe 'source' stdpath('config') . '/plugins.vim'
exe 'source' stdpath('config') . '/keys.vim'
exe 'source' stdpath('config') . '/overwrites.vim'

if exists('g:vscode')
  exe 'source' stdpath('config') . '/cursor.vim'
else
  exe 'source' stdpath('config') . '/terminal.vim'
endif
