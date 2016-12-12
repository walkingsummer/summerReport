package mytest;

import java.text.ParseException;

public class MyTests {
	public static void main(String[] args) throws ParseException {
		int a = 1;
		int b = 0;
		Integer c=null;
		try {
			c=a/b;
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(c);
		System.out.println("end");
	}
}
