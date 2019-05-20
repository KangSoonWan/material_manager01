package org.funny;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;



@RunWith(SpringRunner.class)
@SpringBootTest

public class ProductRepositoryTests {
	
	@Value("${property.test.name}")
	private String propertyTestName;
	
	
	@Test
	public void testValu() {
		assertThat(propertyTestName, is("property depth test"));
		
	}

}
