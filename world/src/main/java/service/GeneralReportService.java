package service;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import tools.Tools;
import bean.generalReport.GeneralReportRequestBean;
import bean.generalReport.GeneralReportResponseBean;
import bean.generalReport.GeneralReportTableColumnsBean;
import dao.GeneralReportDao;

public class GeneralReportService{
	
	public static ArrayList<GeneralReportResponseBean> getGeneralReportListService(GeneralReportRequestBean reqBean) 
			throws ParseException, IOException{
		
		ArrayList<GeneralReportResponseBean> list = new ArrayList<GeneralReportResponseBean>();
		Date targetDay = reqBean.getmDate();
		GeneralReportTableColumnsBean grtcb = reqBean.getGeneralReportTableColumnsBean();
		String channelName = reqBean.getmChannelName();
		List<String> clientTypeList = reqBean.getmClientTypeList();
		
		Date firstDay = Tools.getFirstDayOfMonth(targetDay);
		Date tempDate = firstDay;
		while(tempDate.compareTo(targetDay)<=0){
			//每次生成新的对象，来放置对应日期查询到的行数据
			GeneralReportResponseBean respBean = new GeneralReportResponseBean();
			//设置要传入数据库查询的参数的对象的日期
			reqBean.setmDate(tempDate);
			//查询并放入数据
			respBean.setmChannelName(channelName);
			respBean.setmClientTypeList(clientTypeList);
			respBean.setmDate(tempDate);
			
			if(grtcb.isShowDayLogCounts()){
				respBean.setmDayLogCounts(GeneralReportDao.getDayLogCountsDao(reqBean));
			} else {
				respBean.setmDayLogCounts(null);
			}
			
			if(grtcb.isShowDayOrderCounts()){
				respBean.setmDayOrderCounts(GeneralReportDao.getDayOrderCountsDao(reqBean));
			} else {
				respBean.setmDayOrderCounts(null);
			}
			
			if(grtcb.isShowDayRecommendCounts()){
				respBean.setmDayRecommendCounts(GeneralReportDao.getDayRecommendCountsDao(reqBean));
			} else {
				respBean.setmDayRecommendCounts(null);
			}
			
			if(grtcb.isShowNewLogCounts()){
				respBean.setmNewLogCounts(GeneralReportDao.getNewLogCountsDao(reqBean));
			}else{
				respBean.setmNewLogCounts(null);
			}
			
			if(grtcb.isShowNewOrderCounts()){
				respBean.setmNewOrderCounts(GeneralReportDao.getNewOrderCountsDao(reqBean));
			}else{
				respBean.setmNewOrderCounts(null);
			}
			
			if(grtcb.isShowNewRecommendCounts()){
				respBean.setmNewRecommendCounts(GeneralReportDao.getNewRecommendCountsDao(reqBean));
			}else{
				respBean.setmNewRecommendCounts(null);
			}
			
			if(grtcb.isShowRegisterCounts()){
				respBean.setmRegisterCounts(GeneralReportDao.getRegisterCountsDao(reqBean));
			}else{
				respBean.setmRegisterCounts(null);
			}
			
			list.add(respBean);
			//日期加一
			tempDate = Tools.getNextDay(tempDate);
		}
		return list;
	}
	
	public static void main(String args[]) throws ParseException, IOException {
		
	}
}
