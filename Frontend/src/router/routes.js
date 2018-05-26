import sec from '../services/core/securityPermissions';

export default [
  {
    path: '/login',
    component: () => import('../pages/login')
  },
  {
    path: '/accessError',
    component: () => import('../pages/401')
  },
  {
    path: '/',
    component: () => import('../layouts/default'),
    meta: {
      requiresLogin: true
    },
    children: [
      {
        path: '/',
        component: () => import('../pages/index'),
        meta: {
          requiresLogin: true,
          title: 'Planos de Ensino'
        }
      },
      {
        path: '/planoensino/:id',
        component: () => import('../pages/plano_de_ensino/detalhes_planoensino'),
        props: true,
        meta: {
          requiresLogin: true,
          title: 'Planos de Ensino'
        }
      },
      {
        path: '/cadastros/turmas',
        component: () => import('../pages/cadastros_basicos/turmas/gerenciamento_turmas'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Turmas'
        }
      },
      {
        path: '/cadastros/disciplinas',
        component: () => import('../pages/cadastros_basicos/disciplinas/gerenciamento_disciplinas'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Disciplinas'
        }
      },
      {
        path: '/cadastros/competencias',
        component: () => import('../pages/cadastros_basicos/competencias/gerenciamento_competencias'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Competências'
        }
      },
      {
        path: '/cadastros/habilidades',
        component: () => import('../pages/cadastros_basicos/habilidades/gerenciamento_habilidades'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Habilidades'
        }
      },
      {
        path: '/cadastros/conteudos',
        component: () => import('../pages/cadastros_basicos/conteudos/gerenciamento_conteudos'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Conteúdos'
        }
      },
      {
        path: '/cadastros/recursos',
        component: () => import('../pages/cadastros_basicos/recursos/gerenciamento_recursos'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR, sec.COORDENADOR],
          title: 'Gerenciamento de Recursos'
        }
      }
    ]
  },
  { // Always leave this as last one
    path: '*',
    component: () => import('../pages/404')
  }
];
