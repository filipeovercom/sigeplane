package br.com.overcom.sgpe.periodoletivo;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;

public class PeriodoRepositoryImpl extends QueryDslSupport implements PeriodoLetivoRepositoryCustom {

	public PeriodoRepositoryImpl() {
		super(PeriodoLetivo.class);
	}
}
