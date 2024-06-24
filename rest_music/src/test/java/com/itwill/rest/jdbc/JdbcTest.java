package com.itwill.rest.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.OracleDriver;

@Slf4j
@ExtendWith(SpringExtension.class)
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/application-context.xml" }
)
public class JdbcTest {
	
	@Test
	public void testOracleJdbc() throws SQLException {

		DriverManager.registerDriver(new OracleDriver());
		log.debug("오라클 JDBC 라이브러리 등록 성공");
		

		final String url = "jdbc:oracle:thin:@localhost:1521:xe";
		final String user = "rest";
		final String password = "rest";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		Assertions.assertNotNull(conn);
		log.debug("conn = {}", conn);
		
		conn.close();
		log.debug("오라클 연결 해제 성공");
	}
	
}
