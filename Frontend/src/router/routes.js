import sec from '../utils/securityPermissions';

export default [
  {
    path: '/login',
    component: () => import('../pages/login')
  },
  {
    path: '/configinicial',
    component: () => import('../pages/configuracao_inicial')
  },
  {
    path: '/accessError',
    component: () => import('../pages/401')
  },
  {
    path: '/pages',
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
          title: 'Início - Planos de Ensino'
        }
      },
      {
        path: 'turmas',
        component: () => import('../pages/turmas/index'),
        meta: {
          requiresLogin: true
        },
        children: [
          {
            path: '/',
            component: () => import('../pages/turmas/listagem'),
            meta: {
              title: 'Gerenciamento de Turmas',
              breadcrumb: [{title: 'Turmas'}]
            }
          },
          {
            path: 'nova',
            component: () => import('../pages/turmas/cadastro'),
            meta: {
              title: 'Gerenciamento de Turmas',
              breadcrumb: [
                {path: '/pages/turmas', title: 'Turmas'},
                {title: 'Nova Turma'}
              ]
            }
          },
          {
            path: ':uuid/planoensino',
            component: () => import('../pages/turmas/plano_ensino/detalhes'),
            props: true,
            meta: {
              title: 'Plano de Ensino',
              breadcrumb: [
                {path: '/pages/turmas', title: 'Turmas'},
                {title: 'Plano de Ensino'}
              ]
            }
          }
        ]
      },
      {
        path: 'disciplinas',
        component: () => import('../pages/disciplinas/index'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR]
        },
        children: [
          {
            path: '/',
            component: () => import('../pages/disciplinas/listagem'),
            meta: {
              title: 'Gerenciamento de Disciplinas',
              breadcrumb: [{title: 'Disciplinas'}]
            }
          },
          {
            path: 'nova',
            component: () => import('../pages/disciplinas/cadastro'),
            meta: {
              title: 'Gerenciamento de Disciplinas',
              breadcrumb: [
                {path: '/pages/disciplinas', title: 'Disciplinas'},
                {title: 'Nova Disciplina'}
              ]
            }
          },
          {
            path: 'edicao/:uuid',
            component: () => import('../pages/disciplinas/cadastro'),
            props: true,
            meta: {
              title: 'Gerenciamento de Disciplinas',
              breadcrumb: [
                {path: '/pages/disciplinas', title: 'Disciplinas'},
                {title: 'Editar Disciplina'}
              ]
            }
          }
        ]
      },
      {
        path: 'cadastros/competencias',
        component: () => import('../pages/competencias/gerenciamento_competencias'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Competências'
        }
      },
      {
        path: 'cadastros/habilidades',
        component: () => import('../pages/habilidades/gerenciamento_habilidades'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Habilidades'
        }
      },
      {
        path: 'cadastros/conteudos',
        component: () => import('../pages/conteudos/gerenciamento_conteudos'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Gerenciamento de Conteúdos'
        }
      },
      {
        path: 'cadastros/recursos',
        component: () => import('../pages/recursos/gerenciamento_recursos'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR, sec.COORDENADOR],
          title: 'Gerenciamento de Recursos'
        }
      },
      {
        path: 'cadastros/metodologias',
        component: () => import('../pages/metodologias/gerenciamento_metodologias'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR, sec.COORDENADOR],
          title: 'Gerenciamento de Metodologias'
        }
      },
      {
        path: '/configuracoes/periodos',
        component: () => import('../pages/configuracoes/periodos'),
        meta: {
          requiresLogin: true,
          permissionRequired: [sec.ADMINISTRADOR],
          title: 'Configuração de Períodos'
        }
      }
    ]
  },
  { // Always leave this as last one
    path: '*',
    redirect: '/pages'
  }
];
