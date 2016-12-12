package tools;

import java.security.MessageDigest;


public class MD5Util {


	public String byte2hex(byte[] b)
	{
		StringBuffer hs = new StringBuffer(b.length * 3);
		String stmp;
		for (int n = 0; n < b.length; n++) {
			stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
			if (stmp.length() == 1)				
				hs.append('0');
			
			hs.append(stmp);
			// if (n<b.length-1) hs=hs+":";
		}
		return hs.toString().toUpperCase();
	}


	public String encrypt(String plainText) {
		if (plainText == null) {
			return null;
		}
		
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			return byte2hex( md.digest() );
		} catch(Exception e) {
			return "";
		}
	}
	
	public static void main(String[] args) {
		int a = 10;
		int b = 0;
		
		System.out.println(a/b);
	}
	
	
}
