// see https://hyper.is#cfg for all supported options
module.exports = {
  config: {
    updateChannel: 'stable',

    fontSize: 14,
    fontFamily: '"JetBrainsMono Nerd Font", "JetBrains Mono", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    lineHeight: 1.2,

    cursorShape: 'BLOCK',
    cursorBlink: false,

    padding: '12px 0',

    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true,

    // colors based on OS // disabled because of Vim
    // hyperPrefersColorScheme: {
    //     light: 'hyper-solarized-light',
    //     dark: 'hyper-solarized-dark',
    // },

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

  plugins: [
    "hypercwd",
    "hyper-pane",
    "hyperminimal",
    "hyper-solarized-dark",
    // "hyper-solarized-light",
    // "hyper-prefers-color-scheme" // disabled because of Vim
  ],

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

