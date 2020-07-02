package test.util;
/*
 *  [ Data Base Connection Pool Bean ]
 */

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbcpBean {
	//필드
	private Connection conn;
	//생성자
	public DbcpBean() {
		//Connection 객체의 참조값을 얻어와서 필드에 저장하는 작업을 한다.
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//Connection 객체를 리턴해주는 메소드
	public Connection getConn() {
		return conn;
	}
}






