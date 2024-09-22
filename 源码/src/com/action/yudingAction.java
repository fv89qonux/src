package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCheciDAO;
import com.dao.TUserDAO;
import com.dao.TYudingDAO;
import com.model.TCheci;
import com.model.TUser;
import com.model.TYuding;
import com.opensymphony.xwork2.ActionSupport;

public class yudingAction extends ActionSupport
{
	private Integer id;
	private Integer userId;
	private Integer checiId;
	private Integer shuliang;
	
	private Integer zongjine;
	private String nidexingming;
	private String lianxihua;
	private String songhuodizhi;
	
	private String zhifufangshi;
	private String yudingshi;
	private String zhuangtai;
    
    private TYudingDAO yudingDAO;
    private TCheciDAO checiDAO;
    private TUserDAO userDAO;
   
    private String message;
	private String path;
	
	public String yudingAdd()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		TCheci checi=checiDAO.findById(checiId);
		if(checi.getPiaoshu()<shuliang)
		{
			request.put("msg", "ʣ��Ʊ�����㣬����Ԥ��");
			return "msg";
		}
		
		
		TYuding yuding=new TYuding();
		
		yuding.setUserId(user.getId());
		yuding.setCheciId(checiId);
		yuding.setShuliang(shuliang);
		yuding.setZongjine(shuliang * checi.getPiaojia());
		
		yuding.setNidexingming(nidexingming);
		yuding.setLianxihua(lianxihua);
		yuding.setSonghuodizhi(songhuodizhi);
		yuding.setZhifufangshi(zhifufangshi);
		
		yuding.setYudingshi(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		yuding.setZhuangtai("δ����");//δ����-������
		
		yudingDAO.save(yuding);
		
		checiDAO.getHibernateTemplate().bulkUpdate("update TCheci set piaoshu=piaoshu-"+shuliang+" where id="+checiId);
		
		request.put("msg", "�ɹ�Ԥ��");
		return "msg";
	}
	
	public String yudingMana()
	{
		 String sql="from TYuding order by id desc";
		 List yudingList=yudingDAO.getHibernateTemplate().find(sql);
		
		 Map request=(Map)ServletActionContext.getContext().get("request");
		 request.put("yudingList", yudingList);
	     return ActionSupport.SUCCESS;
	}
	
	public String yudingDel()
	{
		TYuding yuding=yudingDAO.findById(id);
		yudingDAO.delete(yuding);
		
		this.setMessage("�����ɹ�");
		this.setPath("yudingMana.action");
		return "succeed";
	}
	
	public String yudingShouli()
	{
		TYuding yuding=yudingDAO.findById(id);
		yuding.setZhuangtai("������");
		yudingDAO.attachDirty(yuding);
		
		
		
		this.setMessage("�����ɹ�");
		this.setPath("yudingMana.action");
		return "succeed";
	}
	
	public String yudingMine()
	{
		 Map session= ServletActionContext.getContext().getSession();
		 TUser user=(TUser)session.get("user");
		
		 String sql="from TYuding where userId="+user.getId();
		 List yudingList=yudingDAO.getHibernateTemplate().find(sql);
		 
		 Map request=(Map)ServletActionContext.getContext().get("request");
		 request.put("yudingList", yudingList);
	     return ActionSupport.SUCCESS;
	}

	
	public String yudingTuipiao()
	{
		TYuding yuding=yudingDAO.findById(id);
		if(yuding.getZhuangtai().equals("������"))
		{
			this.setMessage("������Ϣ������������Ʊ");
			this.setPath("yudingMine.action");
		}
		else
		{
			yudingDAO.delete(yuding);
			this.setMessage("�ɹ���Ʊ");
			this.setPath("yudingMine.action");
		}
		return "succeed";
	}
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCheciId() {
		return checiId;
	}

	public void setCheciId(Integer checiId) {
		this.checiId = checiId;
	}

	public Integer getShuliang() {
		return shuliang;
	}

	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}

	public Integer getZongjine() {
		return zongjine;
	}

	public void setZongjine(Integer zongjine) {
		this.zongjine = zongjine;
	}

	public String getNidexingming() {
		return nidexingming;
	}

	public void setNidexingming(String nidexingming) {
		this.nidexingming = nidexingming;
	}

	public String getLianxihua() {
		return lianxihua;
	}

	public void setLianxihua(String lianxihua) {
		this.lianxihua = lianxihua;
	}

	public String getSonghuodizhi() {
		return songhuodizhi;
	}

	public void setSonghuodizhi(String songhuodizhi) {
		this.songhuodizhi = songhuodizhi;
	}

	public String getZhifufangshi() {
		return zhifufangshi;
	}

	public void setZhifufangshi(String zhifufangshi) {
		this.zhifufangshi = zhifufangshi;
	}

	public String getYudingshi() {
		return yudingshi;
	}

	public void setYudingshi(String yudingshi) {
		this.yudingshi = yudingshi;
	}

	public String getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public TYudingDAO getYudingDAO() {
		return yudingDAO;
	}

	public void setYudingDAO(TYudingDAO yudingDAO) {
		this.yudingDAO = yudingDAO;
	}

	public TCheciDAO getCheciDAO() {
		return checiDAO;
	}

	public void setCheciDAO(TCheciDAO checiDAO) {
		this.checiDAO = checiDAO;
	}

	public TUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
