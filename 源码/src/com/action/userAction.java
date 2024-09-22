package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport
{
	private Integer id;
	private String loginname;
	private String loginpw;
	private String name;

	private String sex;
	private String age;
	private String address;
	private String tel;

	private String email;
	private String fujian;
	private Integer jifen;
	private String del;
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	
	public String userReg()
	{
		String sql="from TUser where loginname=? and del='no'";
		Object[] c={loginname.trim()};
		List list=userDAO.getHibernateTemplate().find(sql,c);
		if(list.size()>0)
		{
			this.setMessage("账号已被占用，请重新注册");
			this.setPath("/qiantai/user/userReg.jsp");
		    return "succeed";
		}
		
		TUser user=new TUser();
		
		user.setLoginname(loginname);
		user.setLoginpw(loginpw);
		user.setName(name);
		user.setSex(sex);
		
		user.setAge(age);
		user.setAddress(address);
		user.setTel(tel);
		user.setEmail(email);
		
		user.setFujian(fujian);
		
		user.setJifen(0);
		user.setDel("no");
		
		userDAO.save(user);
		
		this.setMessage("注册成功,请登陆");
		this.setPath("/qiantai/user/userLogin.jsp");
	    return "succeed";
	}
	
	
	public String userEdit()
	{
		TUser user=userDAO.findById(id);
		
		user.setLoginname(loginname);
		user.setLoginpw(loginpw);
		user.setName(name);
		user.setSex(sex);
		
		user.setAge(age);
		user.setAddress(address);
		user.setTel(tel);
		user.setEmail(email);
		
		user.setFujian(fujian);
		user.setDel("no");
		
		userDAO.attachDirty(user);
		
		this.setMessage("修改成功，重新登陆后生效");
		this.setPath("/qiantai/default.jsp");
	    return "succeed";
	}
	
	public String userLogout()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("userType", null);
		request.getSession().setAttribute("user", null);
		
		this.setMessage("安全退出");
		this.setPath("/qiantai/default.jsp");
	    return "succeed";
	}
	
	public String userMana()
	{
		String sql="from TUser where del='no'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String userDel()
	{
		TUser user=userDAO.findById(id);
		user.setDel("yes");
		userDAO.attachDirty(user);
		
		this.setMessage("操作成功");
		this.setPath("userMana.action");
	    return "succeed";
	}
	
	
	

	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getAge()
	{
		return age;
	}
	public void setAge(String age)
	{
		this.age = age;
	}
	public TUserDAO getUserDAO()
	{
		return userDAO;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getLoginname()
	{
		return loginname;
	}
	public void setLoginname(String loginname)
	{
		this.loginname = loginname;
	}
	public String getLoginpw()
	{
		return loginpw;
	}
	public void setLoginpw(String loginpw)
	{
		this.loginpw = loginpw;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	
	public Integer getJifen()
	{
		return jifen;
	}


	public void setJifen(Integer jifen)
	{
		this.jifen = jifen;
	}


	public String getDel()
	{
		return del;
	}


	public void setDel(String del)
	{
		this.del = del;
	}


	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public String getTel()
	{
		return tel;
	}
	public void setTel(String tel)
	{
		this.tel = tel;
	}
}
