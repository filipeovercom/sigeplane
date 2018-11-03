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
    {text: 'Aguardando Produção', value: AGUARDANDO_PRODUCAO, color: 'blue-grey'},
    {text: 'Em Produção', value: EM_PRODUCAO, color: 'indigo'},
    {text: 'Aguardando Análise', value: AGUARDANDO_ANALISE, color: 'cyan'},
    {text: 'Necessita Alterações', value: NECESSITA_ALTERACOES, color: 'deep-orange'},
    {text: 'Aprovado', value: APROVADO, color: 'green-7'}
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
    },
    getColorByValue: value => {
      const itemFound = itens.find(item => item.value === value);
      return itemFound ? itemFound.color : '';
    }
  };
})();

export const tipoComentario = (function () {
  const CONTRIBUICAO_FORMACAO = 'CONTRIBUICAO_FORMACAO';
  const CONTEUDO              = 'CONTEUDO';
  const CRITERIOS_AVALIACAO   = 'CRITERIOS_AVALIACAO';
  const CRONOGRAMA            = 'CRONOGRAMA';
  return {
    CONTRIBUICAO_FORMACAO,
    CONTEUDO,
    CRITERIOS_AVALIACAO,
    CRONOGRAMA
  };
})();
