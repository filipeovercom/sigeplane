package br.com.overcom.sgpe.seguranca.usuario;

import br.com.overcom.sgpe.periodoletivo.PeriodoLetivo;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Embeddable
@Data
public class PreferenciaUsuario {

	@Column(name = "time_zone", length = 10)
	private String timeZone;

	@Column(name = "locale", length = 10)
	private String locale;

	@OneToOne
	@JoinColumn(name = "ID_PERIODO_SELECIONADO", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_USUARIO_PERIODO_SELECIONADO"))
	private PeriodoLetivo periodoSelecionado;

	public PreferenciaUsuario() {
		this.timeZone = "UTC-3";
		this.locale = "pt-BR";
	}
}
