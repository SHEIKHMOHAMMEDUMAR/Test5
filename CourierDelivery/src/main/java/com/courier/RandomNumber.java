package com.courier;

import java.util.Random;

public class RandomNumber {
	public long randomNumber(int size) {
		Random rnd = new Random();
	    long number = 1000000000000L + Math.abs(rnd.nextLong());
	    String s = String.format("%d", number);
	    s = s.substring(0,size);
	    return Long.parseLong(s);
	}
}
