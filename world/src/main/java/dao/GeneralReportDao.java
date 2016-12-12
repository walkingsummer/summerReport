package dao;

import java.io.IOException;

import mapper.GeneralReportMapper;
import tools.MapperTool;
import bean.generalReport.GeneralReportRequestBean;

public class GeneralReportDao {
	
	private static GeneralReportMapper mapper;
	
	static{
		mapper = MapperTool.getGeneralReportMapper();
	}
	
	public static int getRegisterCountsDao(GeneralReportRequestBean reqBean) throws IOException{
		return mapper.getRegisterCounts(reqBean);
	}
	
	public static int getDayLogCountsDao(GeneralReportRequestBean reqBean){
		return mapper.getDayLogCounts(reqBean);
	}
	public static int getNewLogCountsDao(GeneralReportRequestBean reqBean){
		return mapper.getNewLogCounts(reqBean);
	}
	
	public static int getDayRecommendCountsDao(GeneralReportRequestBean reqBean) throws IOException{
		return mapper.getDayRecommendCounts(reqBean);
	}
	public static int getNewRecommendCountsDao(GeneralReportRequestBean reqBean) throws IOException{
		return mapper.getNewRecommendCounts(reqBean);
	}
	
	public static int getDayOrderCountsDao(GeneralReportRequestBean reqBean) throws IOException{
		return mapper.getDayOrderCounts(reqBean);
	}
	public static int getNewOrderCountsDao(GeneralReportRequestBean reqBean) throws IOException{
		return mapper.getNewOrderCounts(reqBean);
	}
}
