package com.courier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.connection.ConnectionDao;

public class CourierHistoryDao {
	public ResultSet courierHistoryDao(String user) throws Exception {
		ConnectionDao cd = new ConnectionDao();
		Connection conn = cd.connectionDao();
		PreparedStatement ps = conn.prepareStatement("select * from Courier where userName = '"+user+"' order by deliveryDate");
		ResultSet rs = ps.executeQuery();
		rs.next();
		return rs;
	}
}
