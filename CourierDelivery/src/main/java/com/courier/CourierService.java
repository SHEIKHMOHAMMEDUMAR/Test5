package com.courier;

import java.time.LocalDate;

public class CourierService {
	public LocalDate expected(double distance, double weight) {
		Double d = new Double((distance+weight)/500);
		long diff = d.longValue();
		LocalDate pdate = LocalDate.now();
		LocalDate dd = pdate.plusDays(diff);
		return dd;
	}
	public double getAmount(double distance, double weight) {
		return (distance*weight)/10;
	}
}
