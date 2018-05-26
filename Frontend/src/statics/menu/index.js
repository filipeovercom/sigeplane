import profiles from '../../services/core/securityPermissions';

const menu = [
  {
    title: 'Planos de Ensino',
    icon: '',
    permissionRequired: [profiles.ADMINISTRADOR, profiles.COORDENADOR, profiles.PROFESSOR],
    children: [
      {title: 'Gerenciar', icon: 'settings', route: '/'}
    ]
  },
  {
    title: 'Cadastros',
    icon: '',
    permissionRequired: [profiles.ADMINISTRADOR, profiles.COORDENADOR],
    children: [
      {title: 'Turmas', icon: 'school', route: '/cadastros/turmas'},
      {title: 'Disciplinas', icon: 'book', route: '/cadastros/disciplinas'},
      {title: 'Competências', icon: 'assignment_turned_in', route: '/cadastros/competencias'},
      {title: 'Habilidades', icon: 'assignment', route: '/cadastros/habilidades'},
      {title: 'Conteúdos', icon: 'library_books', route: '/cadastros/conteudos'},
      {title: 'Recursos', icon: 'speaker', route: '/cadastros/recursos'}
    ]
  },
  {
    title: 'Configurações',
    icon: '',
    permissionRequired: [profiles.ADMINISTRADOR],
    children: [
      {title: 'Usuários', icon: 'people', route: '/configuracoes/usuarios'}
    ]
  }
];

export default menu;
