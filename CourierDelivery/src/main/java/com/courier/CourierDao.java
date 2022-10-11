package com.courier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import com.connection.ConnectionDao;

public class CourierDao {
	public void courierDao(Details d) throws Exception {
		RandomNumber rn = new RandomNumber();
		ConnectionDao cd = new ConnectionDao();
		CourierService cs = new CourierService();
		Connection conn = cd.connectionDao();
		long track_ID = rn.randomNumber(13);
		LocalDate pDate = LocalDate.now();
		LocalDate dDate = cs.expected(d.getDistance(), d.getWeight());
		System.out.println(dDate);
		double amount = cs.getAmount(d.getDistance(), d.getWeight());
		PreparedStatement ps = conn.prepareStatement("insert into Courier values("+track_ID+",'"+d.getUserName()+"','"
		+d.getPhoneNo()+"','"+d.getSrc()+"','"+d.getDest()+"',"+d.getDistance()+","+d.getWeight()+",'"
		+pDate+"','"+dDate+"',"+amount+");");
		ps.execute();
	}
}
