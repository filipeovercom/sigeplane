webpackJsonp([4],{"2NXm":function(t,i,o){"use strict";Object.defineProperty(i,"__esModule",{value:!0});var s=o("0ZwX"),a={name:"PageIndex",data:function(){return{}},computed:{usuarioLogado:function(){return Object(s.a)("usuario")}},mounted:function(){this.$store.getters.isFirstLogin&&(this.$q.notify({message:"Seja bem vindo "+this.usuarioLogado.nome,type:"info",textColor:"black",avatar:"http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png",position:"top"}),this.$store.dispatch("contexto/updateFirstLogin",!1))}},e=function(){var t=this,i=t.$createElement,o=t._self._c||i;return o("q-page",{staticClass:"q-pa-md"},[o("div",{staticClass:"row gutter-xs"},[o("div",{staticClass:"col-md-6"},[o("q-card",{attrs:{flat:""}},[o("q-card-title",{staticClass:"text-primary"},[t._v("\n          Meus Planos\n        ")]),t._v(" "),o("q-card-separator"),t._v(" "),o("q-card-main",[o("q-list",{attrs:{"no-border":""}},[o("q-item",{attrs:{link:"",to:"/planoensino/1"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Estágio Supervisionado II - 302N7A-A4")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/2"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Sistemas Operacionais - 302N4A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/3"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Pesquisa Operacional e Teoria dos Jogos - 302N7A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1)],1)],1)],1)],1),t._v(" "),o("div",{staticClass:"col-md-6"},[o("q-card",{attrs:{flat:""}},[o("q-card-title",{staticClass:"text-warning"},[t._v("\n          Pendentes de Análise\n        ")]),t._v(" "),o("q-card-separator"),t._v(" "),o("q-card-main",[o("q-list",{attrs:{"no-border":""}},[o("q-item",{attrs:{link:"",to:"/planoensino/1"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Estágio Supervisionado II - 302N7A-A4")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/2"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Sistemas Operacionais - 302N4A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/3"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Pesquisa Operacional e Teoria dos Jogos - 302N7A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1)],1)],1)],1)],1),t._v(" "),o("div",{staticClass:"col-md-6"},[o("q-card",{attrs:{flat:""}},[o("q-card-title",{staticClass:"text-positive"},[t._v("\n          Analisados\n        ")]),t._v(" "),o("q-card-separator"),t._v(" "),o("q-card-main",[o("q-list",{attrs:{"no-border":""}},[o("q-item",{attrs:{link:"",to:"/planoensino/1"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Estágio Supervisionado II - 302N7A-A4")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/2"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Sistemas Operacionais - 302N4A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1),t._v(" "),o("q-item",{attrs:{link:"",to:"/planoensino/3"}},[o("q-item-side",{attrs:{icon:"school"}}),t._v(" "),o("q-item-main",[o("span",{staticStyle:{"border-bottom":"1px solid blue"}},[t._v("Pesquisa Operacional e Teoria dos Jogos - 302N7A")])]),t._v(" "),o("q-item-side",{attrs:{right:"",icon:"forward"}})],1)],1)],1)],1)],1)])])},r=[];e._withStripped=!0;var n=o("XyMi"),l=Object(n.a)(a,e,r,!1,null,null,null);l.options.__file="src\\pages\\index.vue";i.default=l.exports}});