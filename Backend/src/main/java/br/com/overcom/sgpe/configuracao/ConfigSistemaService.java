package br.com.overcom.sgpe.configuracao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ConfigSistemaService {

	private final ConfigSistemaRepository repository;

	@Autowired
	public ConfigSistemaService(ConfigSistemaRepository repository) {this.repository = repository;}

	public Optional<ConfigSistema> getConfiguracaoAtual() {
		List<ConfigSistema> all = repository.findAll();
		if (all.size() > 0) {
			return Optional.of(all.get(0));
		}
		return Optional.empty();
	}
}
