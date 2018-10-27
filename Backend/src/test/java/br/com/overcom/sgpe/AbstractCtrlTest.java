package br.com.overcom.sgpe;

import org.springframework.test.web.servlet.MockMvc;
import org.springframework.util.Assert;
import org.springframework.web.context.WebApplicationContext;

//@RunWith(SpringRunner.class)
//@SpringBootTest
//@AutoConfigureMockMvc
//@ActiveProfiles({"test"})
public class AbstractCtrlTest {

	//	@Autowired
	protected MockMvc               mvc;
	//	@Autowired
	private   WebApplicationContext context;

	//	@Test
	public void context_isCorrect() {
		Assert.isTrue(
			context.getEnvironment().getProperty("spring.profiles.active")
				.contains("test"), "O profile para testes de integração não esta correto");

	}
}
