package com.acc.dao.impl;

import java.util.List;

import org.hibernate.Query;

import org.hibernate.SessionFactory;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {
	private SessionFactory sessionFactory;
	
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}





	@SuppressWarnings("unchecked")
	@Override
	public List<UserBean> getUserForUserId(UserBean userBean) {
		StringBuilder queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT user_id as \"userId\",");
			queryBuffer.append(" password as \"password\"");
			queryBuffer.append(" FROM USER_INFO");
			queryBuffer.append(" WHERE user_id=:userId");
			System.out.println(queryBuffer.toString());
			Query qr = getSessionFactory().getCurrentSession().createSQLQuery(queryBuffer.toString())
					.addScalar("userId",StandardBasicTypes.STRING)
					.addScalar("password",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(UserBean.class)).
					setParameter("userId", userBean.getUserId());
			List<UserBean> resultList = qr.list();
			System.out.println("result Size "+resultList.size());
			return resultList;
	}
}
