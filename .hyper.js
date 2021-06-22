// See https://hyper.is#cfg for all currently supported options.

module.exports = {
    config: {
        updateChannel: 'stable', // either `'stable'` or `'canary'`

        fontSize: 12,
        fontFamily: '"Fira Mono for Powerline"',
        fontWeight: 'normal',
        fontWeightBold: 'bold',
        cursorColor: 'rgba(248,28,229,0.8)',
        cursorShape: 'BEAM',
        cursorBlink: false,
        foregroundColor: '#fff',
        backgroundColor: '#000',
        selectionColor: 'rgba(248,28,229,0.3)',
        borderColor: '#333',
        padding: '12px 14px',
        css: '', // custom CSS to embed in the main window
        termCSS: '', // custom CSS to embed in the terminal window

        bell: false,
        showHamburgerMenu: '',
        showWindowControls: '',
        copyOnSelect: true, // selected text will automatically be copied to the clipboard
        quickEdit: true, // right click selected text will be copied or pasted if no selection is present
        defaultSSHApp: true, // hyper will be set as the default protocol client for SSH

        hypercwd: {
            initialWorkingDirectory: '~'
        },

        shell: '',
        shellArgs: ['--login'],
        env: {}
    },

    plugins: [
        "hyper-material-theme",
        "hyper-single-instance",
        "hyperterm-dibdabs",
        "hyper-search",
        "hypercwd",
        "hyper-quit",
    ],

    keymaps: {},
};
