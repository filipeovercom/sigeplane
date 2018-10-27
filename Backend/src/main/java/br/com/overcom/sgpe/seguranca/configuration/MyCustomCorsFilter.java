package br.com.overcom.sgpe.seguranca.configuration;


import com.google.common.collect.ImmutableList;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

//@Configuration
//@Order(Ordered.HIGHEST_PRECEDENCE)
public class MyCustomCorsFilter {

	//	@Bean
	public CorsFilter corsFilter() {
		final CorsConfiguration configuration = new CorsConfiguration();
		configuration.setAllowedOrigins(ImmutableList.of("*"));
		configuration.setAllowedMethods(ImmutableList.of("*"));
		configuration.setAllowCredentials(true);
		configuration.setMaxAge(3600L);
		configuration.setAllowedHeaders(ImmutableList.of("*"));
		configuration.setExposedHeaders(ImmutableList.of("Access-Control-Allow-Origin", "Access-Control-Allow-Methods",
			"Access-Control-Allow-Headers", "Access-Control-Max-Age",
			"Access-Control-Request-Headers", "Access-Control-Request-Method"));
		final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		return new CorsFilter(source);
	}
}
