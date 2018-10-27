import profiles from '../../utils/securityPermissions';

const menu = [
  {title: 'Turmas', icon: 'school', route: '/pages/turmas'},
  {
    title: 'Disciplinas',
    icon: 'book',
    route: '/pages/disciplinas',
    permissionRequired: [profiles.ADMINISTRADOR, profiles.COORDENADOR]
  },
  {title: 'Competências', icon: 'assignment_turned_in', route: '/pages/competencias'},
  {title: 'Habilidades', icon: 'assignment', route: '/pages/habilidades'},
  {title: 'Recursos', icon: 'speaker', route: '/pages/recursos'},
  {title: 'Metodologias', icon: 'build', route: '/pages/metodologias'},
  {
    title: 'Configurações',
    icon: '',
    permissionRequired: [profiles.ADMINISTRADOR],
    children: [
      {title: 'Períodos', icon: 'date_range', route: '/pages/configuracoes/periodos'}
    ]
  }
];

export default menu;
