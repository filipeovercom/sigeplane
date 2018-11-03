// Configuration for your app

module.exports = function (ctx) {
  return {
    plugins: ['localStorage', 'sgpeACL', 'vuetify', 'sgpeFilters'],
    css: ['app.styl'],
    extras: [
      ctx.theme.mat ? 'roboto-font' : null,
      'material-icons',
      // 'ionicons',
      // 'mdi'
      'fontawesome'
    ],
    supportIE: false,
    vendor: {
      add: [],
      remove: []
    },
    build: {
      scopeHoisting: true,
      vueRouterMode: 'history',
      publicPath: '/',
      // gzip: true,
      // analyze: true,
      // extractCSS: false,
      // useNotifier: false,
      extendWebpack (cfg) {
        cfg.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules|quasar)/
        });
      }
    },
    devServer: {
      // https: true,
      port: 8081,
      open: true // opens browser window automatically
    },
    // framework: 'all' --- includes everything; for dev only!
    framework: {
      iconSet: 'material-icons',
      components: [
        'QLayout',
        'QInnerLoading',
        'QLayoutHeader',
        'QLayoutDrawer',
        'QLayoutFooter',
        'QPageContainer',
        'QAjaxBar',
        'QSpinnerGrid',
        'QPage',
        'QTooltip',
        'QToolbar',
        'QToolbarTitle',
        'QBtn',
        'QPagination',
        'QBreadcrumbs',
        'QBreadcrumbsEl',
        'QBtnDropdown',
        'QFab',
        'QFabAction',
        'QIcon',
        'QList',
        'QListHeader',
        'QTimeline',
        'QTimelineEntry',
        'QChatMessage',
        'QChip',
        'QPageSticky',
        'QItem',
        'QItemSeparator',
        'QItemMain',
        'QItemSide',
        'QItemTile',
        'QField',
        'QInput',
        'QScrollArea',
        'QPopover',
        'QPopupEdit',
        'QSearch',
        'QAutocomplete',
        'QTree',
        'QTable',
        'QTd',
        'QCard',
        'QCardTitle',
        'QCardMain',
        'QCardMedia',
        'QCardSeparator',
        'QCardActions',
        'QCollapsible',
        'QEditor',
        'QSelect',
        'QModal',
        'QModalLayout'
      ],
      directives: ['Ripple', 'CloseOverlay'],
      plugins: ['Notify', 'Dialog', 'Loading', 'LocalStorage'],
      config: {
        loading: {
          message: 'Carregando Informações...',
          spinnerSize: 130
        }
      }
    },
    // animations: 'all' --- includes all animations
    animations: [],
    pwa: {
      cacheExt:
        'js,html,css,ttf,eot,otf,woff,woff2,json,svg,gif,jpg,jpeg,png,wav,ogg,webm,flac,aac,mp4,mp3',
      manifest: {
        name: 'SGPE - Sistema de Gerenciamento de Planos de Ensino',
        short_name: 'SGPE',
        description:
          'SGPE é um software que auxilia na produção e gerenciamento de planos de ensino',
        display: 'standalone',
        orientation: 'portrait',
        background_color: '#ffffff',
        theme_color: '#027be3',
        icons: [
          {
            src: 'statics/icons/icon-128x128.png',
            sizes: '128x128',
            type: 'image/png'
          },
          {
            src: 'statics/icons/icon-192x192.png',
            sizes: '192x192',
            type: 'image/png'
          },
          {
            src: 'statics/icons/icon-256x256.png',
            sizes: '256x256',
            type: 'image/png'
          },
          {
            src: 'statics/icons/icon-384x384.png',
            sizes: '384x384',
            type: 'image/png'
          },
          {
            src: 'statics/icons/icon-512x512.png',
            sizes: '512x512',
            type: 'image/png'
          }
        ]
      }
    },
    cordova: {
      // id: 'org.cordova.quasar.app'
    },
    electron: {
      extendWebpack (cfg) {
        // do something with cfg
      },
      packager: {
        // OS X / Mac App Store
        // appBundleId: '',
        // appCategoryType: '',
        // osxSign: '',
        // protocol: 'myapp://path',
        // Window only
        // win32metadata: { ... }
      }
    },

    // leave this here for Quasar CLI
    starterKit: '1.0.0-beta.4'
  };
};
