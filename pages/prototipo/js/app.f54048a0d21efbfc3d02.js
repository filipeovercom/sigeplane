webpackJsonp([13],{"+nwc":function(a,e){},0:function(a,e,o){a.exports=o("nplA")},"0ZwX":function(a,e,o){"use strict";o.d(e,"c",function(){return n}),o.d(e,"b",function(){return s}),o.d(e,"a",function(){return r});var t=o("mvHQ"),i=o.n(t),n=function(a,e){var o=i()(e);window.localStorage.setItem(a,o)},s=function(a){window.localStorage.removeItem(a)},r=function(a){var e=window.localStorage.getItem(a);return null!==e&&"undefined"!==e&&""!==e&&(e=JSON.parse(e)),e}},"3Puz":function(a,e){},ASBM:function(a,e,o){"use strict";e.a={ADMINISTRADOR:"Administrador",COORDENADOR:"Coordenador",PROFESSOR:"Professor"}},KSNH:function(a,e){},N12Q:function(a,e){},R58i:function(a,e){},nplA:function(a,e,o){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var t=o("Dd8w"),i=o.n(t),n=o("/6f7"),s=o("/5sW"),r=o("7109");s.a.use(r.V,{components:{QLayout:r.z,QLayoutHeader:r.C,QLayoutDrawer:r.A,QLayoutFooter:r.B,QPageContainer:r.I,QPage:r.H,QTooltip:r.S,QToolbar:r.Q,QToolbarTitle:r.R,QBtn:r.g,QBreadcrumbs:r.e,QBreadcrumbsEl:r.f,QBtnDropdown:r.h,QIcon:r.s,QList:r.D,QListHeader:r.E,QChip:r.o,QPageSticky:r.J,QItem:r.u,QItemSeparator:r.w,QItemMain:r.v,QItemSide:r.x,QItemTile:r.y,QField:r.r,QInput:r.t,QScrollArea:r.L,QPopover:r.K,QSearch:r.M,QAutocomplete:r.d,QTree:r.T,QTable:r.O,QTd:r.P,QCard:r.i,QCardTitle:r.n,QCardMain:r.k,QCardMedia:r.l,QCardSeparator:r.m,QCardActions:r.j,QCollapsible:r.p,QEditor:r.q,QSelect:r.N,QModal:r.F,QModalLayout:r.G},directives:{Ripple:r.U,CloseOverlay:r.a},plugins:{Notify:r.c,Dialog:r.b},iconSet:n.a});o("L4dm"),o("hAPP"),o("trlb"),o("3Puz"),o("N12Q");var d=function(){var a=this.$createElement,e=this._self._c||a;return e("div",{attrs:{id:"q-app"}},[e("router-view")],1)},c=[];d._withStripped=!0;var u=o("XyMi"),m=!1;var l=function(a){m||o("tHqv")},p=Object(u.a)({name:"App"},d,c,!1,l,null,null);p.options.__file="src\\App.vue";var A=p.exports,f=o("/ocq"),I=o("ASBM"),S=[{path:"/login",component:function(){return o.e(3).then(o.bind(null,"Luci"))}},{path:"/accessError",component:function(){return o.e(1).then(o.bind(null,"wEzC"))}},{path:"/",component:function(){return o.e(11).then(o.bind(null,"lfHO"))},meta:{requiresLogin:!0},children:[{path:"/",component:function(){return o.e(4).then(o.bind(null,"2NXm"))},meta:{requiresLogin:!0,title:"Planos de Ensino"}},{path:"/planoensino/:id",component:function(){return o.e(2).then(o.bind(null,"9q40"))},props:!0,meta:{requiresLogin:!0,title:"Planos de Ensino"}},{path:"/cadastros/turmas",component:function(){return o.e(5).then(o.bind(null,"avws"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR],title:"Gerenciamento de Turmas"}},{path:"/cadastros/disciplinas",component:function(){return o.e(8).then(o.bind(null,"4sWP"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR],title:"Gerenciamento de Disciplinas"}},{path:"/cadastros/competencias",component:function(){return o.e(10).then(o.bind(null,"Z8ok"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR],title:"Gerenciamento de Competências"}},{path:"/cadastros/habilidades",component:function(){return o.e(7).then(o.bind(null,"5Hjl"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR],title:"Gerenciamento de Habilidades"}},{path:"/cadastros/conteudos",component:function(){return o.e(9).then(o.bind(null,"/bCN"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR],title:"Gerenciamento de Conteúdos"}},{path:"/cadastros/recursos",component:function(){return o.e(6).then(o.bind(null,"gSYw"))},meta:{requiresLogin:!0,permissionRequired:[I.a.ADMINISTRADOR,I.a.COORDENADOR],title:"Gerenciamento de Recursos"}}]},{path:"*",component:function(){return o.e(0).then(o.bind(null,"c5Mg"))}}];s.a.use(f.a);var O=new f.a({mode:"history",base:"/",scrollBehavior:function(){return{y:0}},routes:S}),M=o("NYxO"),g=o("Xxa5"),E=o.n(g),b=o("exGp"),D=o.n(b),N=o("//Fk"),P=o.n(N),C=o("0ZwX"),R={namespaced:!0,state:{firstLogin:!1},getters:{isFirstLogin:function(a){return a.firstLogin}},mutations:{SET_FIRST_LOGIN:function(a,e){a.firstLogin=e}},actions:{login:function(a,e){a.dispatch;return new P.a(function(a){var o=void 0;o=e.matricula.toLowerCase().includes("FC2012".toLowerCase())?{matricula:e.matricula,nome:"Prof Exemplo 1",titulacao:"Me.",email:"professorexemplo1@catolica-to.edu.br",perfis:[I.a.ADMINISTRADOR]}:e.matricula.toLowerCase().includes("FC2013".toLowerCase())?{matricula:e.matricula,nome:"Prof Exemplo 2",titulacao:"Esp.",email:"professorexemplo2@catolica-to.edu.br",perfis:[I.a.COORDENADOR,I.a.PROFESSOR]}:{matricula:e.matricula,nome:"Prof Exemplo 3",titulacao:"Esp.",email:"professorexemplo3@catolica-to.edu.br",perfis:[I.a.PROFESSOR]},Object(C.c)("usuario",o),a()})},logout:function(){var a,e=this;return new P.a((a=D()(E.a.mark(function a(o){return E.a.wrap(function(a){for(;;)switch(a.prev=a.next){case 0:return a.next=2,Object(C.b)("usuario");case 2:o();case 3:case"end":return a.stop()}},a,e)})),function(e){return a.apply(this,arguments)}))},updateFirstLogin:function(a,e){(0,a.commit)("SET_FIRST_LOGIN",e)}}},v={namespaced:!0,state:{data:[{id:"1",semestre:"2018/1",codInterno:"302N4A",disciplina:"Sistemas Operacionais",curso:"Sistemas de Informação",professor:"Me. Stephany Moraes Martins",status:!0},{id:"2",semestre:"2018/1",codInterno:"302N7A",disciplina:"Estágio Supervisionado II",curso:"Sistemas de Informação",professor:"Me. Stephany Moraes Martins",status:!0},{id:"3",semestre:"2018/1",codInterno:"302N7A",disciplina:"Criatividade Negociação e Empreendedorismo",curso:"Sistemas de Informação",professor:"André Pereira Raposo",status:!0},{id:"4",semestre:"2017/2",codInterno:"302N7A",disciplina:"Fundamentos de Matemática",curso:"Sistemas de Informação",professor:"Me. Thiago Ruiz Garcia",status:!0},{id:"5",semestre:"2018/1",codInterno:"302N7A",disciplina:"Fundamentos de Matemática",curso:"Sistemas de Informação",professor:"Me. Thiago Ruiz Garcia",status:!0}]},getters:{getData:function(a){return a.data}},mutations:{addTurmaToData:function(a,e){e.id=Object(r.W)(),e.status=!0,a.data.unshift(e)}},actions:{addTurma:function(a,e){(0,a.commit)("addTurmaToData",e)}}},h={namespaced:!0,state:{data:[{id:"1",nome:"Sistemas de Informação",coordenador:"Stephany Moraes Martins"},{id:"2",nome:"Direito",coordenador:"Emanuelle Araujo Correa"},{id:"3",nome:"Administração",coordenador:"Luzinete Almeida"}]},getters:{getData:function(a){return a.data}},mutations:{addCursoToData:function(a,e){e.id=Object(r.W)(),a.data.push(e)}},actions:{addCurso:function(a,e){(0,a.commit)("addCursoToData",e)}}},L={namespaced:!0,state:{data:[{id:"1",codInterno:"SIS001",nome:"Sistemas Operacionais",curso:"Sistemas de Informação",ementa:"História  e  funções  dos  Sistemas  Operacionais.  Estrutura  dos  Sistemas  Operacionais. Conceito  e  estados  de  um  processo.  Concorrência.  Métodos  para  comunicação  e sincronização.   Escalonamento.   Gerência   de   memória: paginação,   segmentação   e memória  virtual.  Monoprocessamento  e  multiprocessamento.  Alocação  de  recursos  e deadlocks.  Gerenciamento  de  arquivos.  Gerenciamento  de  entrada/saída.  Métodos  de acesso",contribuicaoFormacao:"O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as empresas modernas e a sociedade atual.",bibliografiaBasica:"SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. São Paulo: Atual, 2004.",bibliografiaComplementar:"DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;",status:!0},{id:"2",codInterno:"SIS002",nome:"Engenharia de Software II",curso:"Sistemas de Informação",ementa:"Conceitos básicos e princípios da Engenharia de Requisitos de Software. Técnicas de engenharia  de  requisitos:  entrevistas,  JAD,  FAST.  Métodos  para  modelagem  de sistemas de software. Abordagens para análise de requisitos. Arquitetura de Software. Métodos  de Projeto  de  Software.  Padrões  e  Frameworks  de  Software.  Projeto  de Software    Orientado    a    Objetos    Utilizando    a    Linguagem    UML    (Diagramas    e Documentação dos Diagramas). Ferramentas CASE para geração de diagramas UML.",contribuicaoFormacao:"O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as empresas modernas e a sociedade atual.",bibliografiaBasica:"SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. São Paulo: Atual, 2004.",bibliografiaComplementar:"DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;",status:!0},{id:"3",codInterno:"OPT001",nome:"Educação Ambiental(EA) e Sustentabilidade",curso:"Optativa",ementa:"A  evolução  histórica  e  teórica  da  Educação  Ambiental;  Complexidade  ambiental;  Princípios  e estratégias  de  Educação  Ambiental;  A  Educação  Ambiental  como  eixo  do  Desenvolvimento Sustentável;  Relação  da  natureza  com  a  dimensão  ambiental,  à  justiça  social,  aos  direitos humanos, à saúde, ao trabalho, ao consumo, à pluralidade étnica, racial, de gênero, de diversidade sexual, e à superação do racismo e de todas as formas de discriminação e injustiça social; Projetos Pedagógicos em Educação Ambiental (Agenda 21 Local).",contribuicaoFormacao:"O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as empresas modernas e a sociedade atual.",bibliografiaBasica:"SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. São Paulo: Atual, 2004.",bibliografiaComplementar:"DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;",status:!0}]},getters:{getData:function(a){return a.data}},mutations:{addDisciplinaToData:function(a,e){e.id=Object(r.W)(),e.status=!0,a.data.push(e)}},actions:{addDisciplina:function(a,e){(0,a.commit)("addDisciplinaToData",e)}}},T={namespaced:!0,state:{data:[{id:"1",nome:"Stephany Moraes Martins",email:"larissa.martins@catolica-to.edu.br",matricula:"FC20080001"},{id:"2",nome:"André Pereira Raposo",email:"andre.raposo@catolica-to.edu.br",matricula:"FC20080002"},{id:"3",nome:"Emanuelle Araujo Correa",email:"emanuelle.correa@catolica-to.edu.br",matricula:"FC20080003"}]},getters:{getData:function(a){return a.data}},mutations:{addProfessorToData:function(a,e){e.id=Object(r.W)(),a.data.push(e)}},actions:{addProfessor:function(a,e){(0,a.commit)("addProfessorToData",e)}}},Q={namespaced:!0,state:{data:[{id:Object(r.W)(),descricao:"Auxiliar os profissionais das outras áreas a compreenderem a forma com que sistemas de informação podem contribuir para as áreas de negócio.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]},{id:Object(r.W)(),descricao:"Participar e conduzir processos de negociação para o alcance de objetivos.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]},{id:Object(r.W)(),descricao:"Expressar ideias de forma clara, empregando técnicas de comunicação apropriadas para cada situação.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]}]},getters:{getData:function(a){return a.data}},mutations:{addCompetenciaToData:function(a,e){e.id=Object(r.W)(),a.data.push(e)}},actions:{addCompetencia:function(a,e){(0,a.commit)("addCompetenciaToData",e)}}},q={namespaced:!0,state:{data:[{id:Object(r.W)(),descricao:"Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano e a conceitos da economia.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]},{id:Object(r.W)(),descricao:" Aplicar o conceito e as propriedades das funções para resolver problemas simples de interessada Economia e Administração.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]},{id:Object(r.W)(),descricao:"Desenvolver o conceito de função do segundo grau associado a assuntos simples do cotidiano e a conceitos da economia.",utilizacao:[{curso:"Sistemas de Informação",qtd:"15"},{curso:"Administração",qtd:"10"}]}]},getters:{getData:function(a){return a.data}},mutations:{addHabilidadeToData:function(a,e){e.id=Object(r.W)(),a.data.push(e)}},actions:{addHabilidade:function(a,e){(0,a.commit)("addHabilidadeToData",e)}}};s.a.use(M.a);var w=new M.a.Store({modules:{contexto:R,turmas:v,cursos:h,disciplinas:L,professores:T,competencias:Q,habilidades:q}}),F=o("mvHQ"),H=o.n(F),Z=window.localStorage,j={setItem:function(a,e){e=H()(e),Z.setItem(a,e)},getItem:function(a,e){var o=Z.getItem(a);return o=null===o||"undefined"===o||""===o?e:JSON.parse(o)},removeItem:function(a){Z.removeItem(a)}};s.a.config.productionTip=!1;var G=i()({el:"#q-app",router:O,store:w},A),J=[];J.push(function(a){a.app,a.router;a.Vue.prototype.$localStorage=j}),J.push(function(a){a.app;var e=a.router,o=(a.store,a.Vue);function t(a){if(!a)return!0;var e=Object(C.a)("usuario").perfis;return a.filter(function(a){return-1!==e.indexOf(a)}).length>0}e.beforeEach(function(a,e,o){var i=Object(C.a)("usuario");if("/login"===a.path)i?o("/"):o();else{var n=a.meta&&a.meta.requiresLogin;n&&!i?o("/login"):n&&a.meta.permissionRequired||a.meta.permissionRequired?t(a.meta.permissionRequired)?o():o("/accessError"):o()}}),o.prototype.$can=t}),J.forEach(function(a){return a({app:G,router:O,store:w,Vue:s.a})}),new s.a(G)},tHqv:function(a,e){}},[0]);