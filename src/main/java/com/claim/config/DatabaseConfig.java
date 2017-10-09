package com.claim.config;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration //Tell spring to use hiberate enitiy
@EnableTransactionManagement //Allow hibernate to manage transactions through spring
@EnableSpringDataWebSupport 
@EnableJpaRepositories(
		basePackages="com.claim.repository")
public class DatabaseConfig {

	@Bean //This bean stores the data conection to SQL so a user doesnt have mutliple conections to the database just one connection
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(EntityManagerFactoryBuilder builder, DataSource dataSource){
		return builder.dataSource(dataSource)
				.packages("com.claim.entity")
				.build();
	}

	@Bean //creating a transaction manager so you can query the database
	public PlatformTransactionManager transactionManager(
			EntityManagerFactory factory){
		return new JpaTransactionManager(factory);
	}

}
