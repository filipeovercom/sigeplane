export const resources = (function () {
  let appContextPath = process.env.SGPE_CONTEXTO;
  if (appContextPath && appContextPath !== '/') appContextPath = `${appContextPath}/`;
  else appContextPath = '/';
  const BASE_URL = `${(process.env.NODE_ENV !== 'production') ? 'http://localhost:8080' : ''}${appContextPath}`;
  const API_URL  = `${BASE_URL}api`;
  return {
    apiUrl: API_URL,
    seguranca: {
      credenciaisBasicas: `Basic ${btoa('frontendsgpe:frontendsgpepassword')}`,
      urlLogin: `${BASE_URL}oauth/token`,
      contexto: {
        root: `${API_URL}/seguranca/contexto`,
        atualizaPeriodo: (periodoUUID) => `/seguranca/contexto/periodo/${periodoUUID}`
      },
      perfis: `${API_URL}/seguranca/perfis`
    },
    disciplinas: {
      root: '/disciplinas'
    },
    cursos: {
      root: '/cursos'
    },
    turmas: {
      root: '/turmas',
      periodo: (periodoUUID) => `/turmas/periodo/${periodoUUID}`,
      plano: (uuid) => `/turmas/${uuid}/planoensino`,
      cronograma: (uuid) => `/turmas/${uuid}/planoensino/cronograma`
    },
    bibliografias: {
      root: '/bibliografias'
    },
    usuarios: {
      root: '/usuarios',
      professoresByNome: '/usuarios/professores'
    },
    periodos: {
      root: '/periodoletivo',
      selecionaPeriodo: (periodoUUID) => `/periodoletivo/${periodoUUID}`
    },
    planosEnsino: {
      byStatus: (status) => `/planoensino/status/${status}`,
      consulta: '/planosensino/consulta'
    }
  };
})();

export const tipoBibliografia = (function () {
  const BASICA       = 'BASICA';
  const COMPLEMENTAR = 'COMPLEMENTAR';
  return {
    BASICA: BASICA,
    COMPLEMENTAR: COMPLEMENTAR,
    itens: [
      {
        title: 'Básica',
        value: BASICA
      }, {
        title: 'Complementar',
        value: COMPLEMENTAR
      }
    ]
  };
})();

export const statusPlanoEnsino = (function () {
  const AGUARDANDO_PRODUCAO  = 'AGUARDANDO_PRODUCAO';
  const EM_PRODUCAO          = 'EM_PRODUCAO';
  const AGUARDANDO_ANALISE   = 'AGUARDANDO_ANALISE';
  const NECESSITA_ALTERACOES = 'NECESSITA_ALTERACOES';
  const APROVADO             = 'APROVADO';
  const itens                = [
    {text: 'Aguardando Produção', value: AGUARDANDO_PRODUCAO},
    {text: 'Em Produção', value: EM_PRODUCAO},
    {text: 'Aguardando Análise', value: AGUARDANDO_ANALISE},
    {text: 'Necessita Alterações', value: NECESSITA_ALTERACOES},
    {text: 'Aprovado', value: APROVADO}
  ];

  return {
    AGUARDANDO_PRODUCAO,
    EM_PRODUCAO,
    AGUARDANDO_ANALISE,
    NECESSITA_ALTERACOES,
    APROVADO,
    itens,
    getTextByValue: value => {
      const itemFound = itens.find(item => item.value === value);
      return itemFound ? itemFound.text : '';
    }
  };
})();
