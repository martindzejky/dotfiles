// see https://hyper.is#cfg for all supported options
module.exports = {
  config: {
    updateChannel: 'stable',

    fontSize: 14,
    fontFamily: '"Dank Mono", "Roboto Mono for Powerline", Menlo, DejaVu Sans Mono, Lucida Console, monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    lineHeight: 1.2,

    cursorShape: 'BLOCK',
    cursorBlink: false,

    padding: '12px 0',

    shell: '/usr/local/bin/fish',
    shellArgs: ['--login'],

    bell: 'SOUND',
    copyOnSelect: false,
    defaultSSHApp: true,

    // hyper-pane configuration
    paneNavigation: {
      hotkeys: {
        jump_prefix: 'command+option',
        maximize: 'command+enter',
        navigation: {
          up: 'command+option+up',
          left: 'command+option+left',
          right: 'command+option+right',
          down: 'command+option+down'
        }
      }
    }
  },

  plugins: ["hyper-solarized-light", "hypercwd", "hyper-pane"],

  keymaps: {
    'tab:next': [
      'command+shift+]',
      'command+shift+right',
      'ctrl+tab'
    ],
    'tab:prev': [
      'command+shift+[',
      'command+shift+left',
      'ctrl+shift+tab'
    ],
  },
};
