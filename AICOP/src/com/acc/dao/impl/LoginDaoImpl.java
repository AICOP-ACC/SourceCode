package com.acc.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;
import com.acc.model.UserInfo;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {
	@Autowired
	HibernateTemplate template;  
	
	public void setTemplate(HibernateTemplate template) {  
	    this.template = template;  
	}  
	/* private static SessionFactory sessionFactory ;
	 	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}*/
/*	 private static SessionFactory buildSessionFactory()
	   {
	      try
	      {
	         if (sessionFactory == null)
	         {
	            Configuration configuration = new Configuration().configure(HibernateUtil.class.getResource("/hibernate.cfg.xml"));
	            StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder();
	            serviceRegistryBuilder.applySettings(configuration.getProperties());
	            ServiceRegistry serviceRegistry = serviceRegistryBuilder.build();
	            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	         }
	         return sessionFactory;
	      } catch (Throwable ex)
	      {
	         System.err.println("Initial SessionFactory creation failed." + ex);
	         throw new ExceptionInInitializerError(ex);
	      }
	   }*/


	
/*
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}*/





	
	@Override
	public List<UserBean> getUserForUserId(UserBean userBean) {
		/*StringBuilder queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT user_id as \"userId\",");
			queryBuffer.append(" password as \"password\"");
			queryBuffer.append(" FROM USER_INFO");
			queryBuffer.append(" WHERE user_id=:userId");
			System.out.println(queryBuffer.toString());
		*/	//sessionFactory = new Configuration().configure().buildSessionFactory();

			//Session session = sessionFactory.getCurrentSession();
		//	UserInfo userInfo = (UserInfo) session.get(UserInfo.class,userBean.getUserId());
					/*.addScalar("userId",StandardBasicTypes.STRING)
					.addScalar("password",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(UserBean.class)).
					setParameter("userId", userBean.getUserId());*/
		//	List<UserBean> resultList = qr.list();
		//	System.out.println("result : "+userInfo.getUserId());
			List<UserInfo> resultList1 = new ArrayList<UserInfo>();
			List<UserBean> resultList = new ArrayList<UserBean>();
			     
			resultList1=template.loadAll(UserInfo.class);  
			  //  return list;  
			//session.close();
			for(UserInfo userInfo:resultList1) {
				System.out.println("For each....");
				UserBean userBeans = new UserBean();
				userBeans.setUserId(userInfo.getUserId());
				userBeans.setPassword(userInfo.getPassword());
				resultList.add(userBeans);
			}
			return resultList;
	}
}
