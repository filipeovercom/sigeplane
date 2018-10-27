package br.com.overcom.sgpe.seguranca.configuration;

import br.com.overcom.sgpe.seguranca.perfil.Perfil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;

@Configuration
@EnableResourceServer
public class ResourceConfig extends ResourceServerConfigurerAdapter {

	private final DefaultTokenServices tokenServices;
	private final TokenStore           tokenStore;
	private final String               resourceId;

	@Autowired
	public ResourceConfig(DefaultTokenServices tokenServices, TokenStore tokenStore,
		@Value("${sgpe.security.oauth2.resource.id}") String resourceId) {
		this.tokenServices = tokenServices;
		this.tokenStore = tokenStore;
		this.resourceId = resourceId;
	}

	@Override
	public void configure(ResourceServerSecurityConfigurer resources) {
		resources
			.resourceId(resourceId)
			.tokenServices(tokenServices)
			.tokenStore(tokenStore);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http
			.requestMatcher(request -> {
				String path = request.getServletPath();
				return !path.contains("oauth");
			})
			.csrf()
			.disable()
			.anonymous()
			.disable()
			.authorizeRequests()
			// USUÁRIOS
			.antMatchers("**/usuarios/**")
			.hasAnyAuthority(Perfil.ADMINISTRADOR.name())
			// PERFIS
			.antMatchers("**/perfis/**")
			.hasAnyAuthority(Perfil.ADMINISTRADOR.name())
			.and()
			.cors();
	}
}
