package br.com.overcom.sgpe.seguranca.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;

@Configuration
@EnableAuthorizationServer
public class AuthorizationConfig extends AuthorizationServerConfigurerAdapter {

	private final String                clientSecret;
	private final String                clientId;
	private final String                jwtSigningKey;
	private final AuthenticationManager authenticationManager;
	private final int                   accessTokenValiditySeconds;
	private final int                   refreshTokenValiditySeconds;
	private final String                resourceId;
	private final PasswordEncoder       passwordEncoder;

	@Autowired
	public AuthorizationConfig(AuthenticationManager authenticationManager, PasswordEncoder passwordEncoder,
		@Value("${sgpe.security.oauth2.resource-id}") String resourceId,
		@Value("${sgpe.security.oauth2.refresh-token-validity-seconds}")
			int refreshTokenValiditySeconds,
		@Value("${sgpe.security.oauth2.access-token-validity-seconds}")
			int accessTokenValiditySeconds,
		@Value("${sgpe.security.oauth2.client-id}") String clientId,
		@Value("${sgpe.security.oauth2.client-secret}") String clientSecret,
		@Value("${sgpe.security.oauth2.jwt-signing-key}") String jwtSigningKey) {
		this.authenticationManager = authenticationManager;
		this.passwordEncoder = passwordEncoder;
		this.resourceId = resourceId;
		this.refreshTokenValiditySeconds = refreshTokenValiditySeconds;
		this.accessTokenValiditySeconds = accessTokenValiditySeconds;
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		this.jwtSigningKey = jwtSigningKey;
	}

	@Bean
	public TokenStore tokenStore() {
		return new JwtTokenStore(accessTokenConverter());
	}

	@Bean
	public JwtAccessTokenConverter accessTokenConverter() {
		JwtAccessTokenConverter converter = new JwtAccessTokenConverter();
		converter.setSigningKey(jwtSigningKey);
		return converter;
	}

	@Bean
	@Primary
	public DefaultTokenServices tokenServices() {
		DefaultTokenServices defaultTokenServices = new DefaultTokenServices();
		defaultTokenServices.setTokenStore(tokenStore());
		defaultTokenServices.setSupportRefreshToken(true);
		defaultTokenServices.setTokenEnhancer(accessTokenConverter());
		defaultTokenServices.setAccessTokenValiditySeconds(accessTokenValiditySeconds);
		defaultTokenServices.setRefreshTokenValiditySeconds(refreshTokenValiditySeconds);
		return defaultTokenServices;
	}

	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) {
		endpoints
			.authenticationManager(this.authenticationManager)
			.tokenServices(tokenServices())
			.tokenStore(tokenStore())
			.accessTokenConverter(accessTokenConverter());
	}

	@Override
	public void configure(AuthorizationServerSecurityConfigurer oauthServer) {
		oauthServer
			.tokenKeyAccess("hasAuthority('ROLE_TRUSTED_CLIENT')")
			.checkTokenAccess("hasAuthority('ROLE_TRUSTED_CLIENT')");
	}

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients
			.inMemory()
			.withClient(clientId)
			.secret(passwordEncoder.encode(clientSecret))
			.authorizedGrantTypes("client_credentials", "password", "refresh_token")
			.authorities("ROLE_TRUSTED_CLIENT")
			.scopes("read", "write")
			.resourceIds(resourceId)
			.accessTokenValiditySeconds(accessTokenValiditySeconds)
			.refreshTokenValiditySeconds(refreshTokenValiditySeconds);
	}
}