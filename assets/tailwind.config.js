// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
module.exports = {
  content: [
    './js/**/*.js',
    '../lib/*_web.ex',
    '../lib/*_web/**/*.*ex'
  ],
  theme: {
    extend: {
      colors: {
        azure: {
          100: '#6eaefa',
          300: '#4297fc',
          500: '#157ffd',
          700: '#0675fb',
          900: '#0255b8'
        },
        byzantine: {
          100: '#e699d5',
          300: '#d168b9',
          500: '#bb439f',
          700: '#aa278d',
          900: '#8d0f72'
        },
        cerulean: {
          100: '#91d4f0',
          300: '#62bee6',
          500: '#3dabdc',
          700: '#1a99d0',
          900: '#0581b6'
        },
        'indigo-dye': {
          100: '#017bd2',
          300: '#005a9a',
          500: '#00487c',
          700: '#003860',
          900: '#002540'
        },
        raspberry: {
          100: '#fc89a0',
          300: '#fb5979',
          500: '#fa3059',
          700: '#f80434',
          900: '#f2002f',
          950: '#d0002a'
        },
        'slate-blue': {
          100: '#a9abf0',
          300: '#7c7ee2',
          500: '#595cd3',
          700: '#3b3fc4',
          900: '#191db3'
        },
        'caution-orange': {
          100: '#ffb58b',
          300: '#ff965b',
          500: '#ff7b31',
          700: '#ff5f04',
          900: '#ff5c00'
        },
        'warning-yellow': {
          100: '#fff997',
          300: '#fff76c',
          500: '#faf048',
          700: '#ebdf1c',
          900: '#b6ac0b',
          950: '#b6910b'
        },
        'success-green': {
          100: '#45cb5d',
          300: '#20c33c',
          500: '#00ad1d',
          700: '#008c18',
          900: '#006c13'
        }
      },
      fontFamily: {
        barlow: ['Barlow', 'sans-serif'],
        'fira-code': ['Fira Code', 'monospace', 'serif']
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}
