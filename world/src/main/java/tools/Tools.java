package tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Tools {
	public static Date getFirstDayOfMonth(Date date) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String temp = sdf.format(date);
		String strs[] = temp.split("-");
		return sdf.parse(strs[0] + "-" + strs[1] + "-" + 1); 
	}
	
	public static Date getNextDay(Date date){
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, 1);
		return cal.getTime();
	}
	
	public static Date getFirstDayOfNextMonth(int year, int month) throws ParseException{
		int targetMonth = month;
		int targetYear = year;
		if(targetMonth+1>=13){
			targetMonth = 1;
			targetYear+=1;
		}else{
			targetMonth+=1;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(targetYear+"-"+targetMonth+"-"+"1");
		return date;
	}
	
	public static Date getFirstDayOfNextMonth(String year, String month) throws ParseException{
		return getFirstDayOfNextMonth(Integer.parseInt(year), Integer.parseInt(month));
	}
	
	public static Date getFirstDayOfLastMonth(int year, int month) throws ParseException{
		int targetMonth = month;
		int targetYear = year;
		if(targetMonth-1<=0){
			targetMonth = 12;
			targetYear-=1;
		}else{
			targetMonth-=1;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(targetYear+"-"+targetMonth+"-"+"1");
		return date;
	}
	
	public static Date getFirstDayOfLastMonth(String year, String month) throws ParseException{
		return getFirstDayOfLastMonth(Integer.parseInt(year), Integer.parseInt(month));
	}
	
	public static Date getFirstDayOfMonth(String year, String month) throws ParseException{
		return getFirstDayOfMonth(Integer.parseInt(year), Integer.parseInt(month));
	}
	
	public static Date getFirstDayOfMonth(int year, int month) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(year+"-"+month+"-"+"1");
		return date;
	}
	
	public static void main(String[] args) throws ParseException {
		
		Date date = Tools.getFirstDayOfLastMonth(2016,12);
		Date date2 = Tools.getFirstDayOfMonth(2016,12);
		Date date3 = Tools.getFirstDayOfNextMonth(2016,12);
		Date date4 = Tools.getNextDay(new Date());
		System.out.println(date);
		System.out.println(date2);
		System.out.println(date3);
		System.out.println(date4);
	}
}
