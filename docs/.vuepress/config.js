const { description } = require('../../package')

module.exports = {
  /**
   * Ref：https://v1.vuepress.vuejs.org/config/#title
   */
  title: 'DS Quizzes',
  /**
   * Ref：https://v1.vuepress.vuejs.org/config/#description
   */
  description: description,

  base: process.env.BASE_URL || "/",

  /**
   * Extra tags to be injected to the page HTML `<head>`
   *
   * ref：https://v1.vuepress.vuejs.org/config/#head
   */
  head: [
    ['meta', { name: 'theme-color', content: '#3eaf7c' }],
    ['meta', { name: 'apple-mobile-web-app-capable', content: 'yes' }],
    ['meta', { name: 'apple-mobile-web-app-status-bar-style', content: 'black' }]
  ],

  /**
   * Theme configuration, here is the default theme configuration for VuePress.
   *
   * ref：https://v1.vuepress.vuejs.org/theme/default-theme-config.html
   */
  themeConfig: {
    repo: '',
    editLinks: false,
    docsDir: '',
    editLinkText: '',
    lastUpdated: false,
    logo: '/logo.svg',
    nav: [

      {
        text: 'Books',
        link: '/books/'
      },
      {
        text: 'About',
        link: '/about/',
      },
      {
        text: 'FAQ',
        link: '/faq/'
      }
    ],
    /**
    sidebar: {
      '/books/': [
        {
          title: 'Example Book',
          collapsable: false,

        },
        {
          title: 'Advanced R'
        }
      ],
    }
**/
  },

  /**
   * Apply plugins，ref：https://v1.vuepress.vuejs.org/zh/plugin/
   */
  plugins: [
    '@vuepress/plugin-back-to-top',
    '@vuepress/plugin-medium-zoom',
    [
  'vuepress-plugin-mathjax',
  {
    target: 'svg',
    macros: {
      '*': '\\times',
    },
  },
],
  ]
}
