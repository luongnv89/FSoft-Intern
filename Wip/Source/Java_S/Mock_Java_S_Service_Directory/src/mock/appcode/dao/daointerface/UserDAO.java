package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.utility.User;

import org.hibernate.Query;
import org.hibernate.Session;

public class UserDAO extends HibernateUtil {

	private Session session = null;
	User user = null;

	public UserDAO() {

	}

	public boolean authenticate(String account, String password) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();

			Query query = (Query) session
					.createQuery("from User u where u.account='" + account
							+ "' and u.password='" + password + "'");
			Object result = null;
			result = query.uniqueResult();
			session.flush();
			session.getTransaction().commit();

			if (result != null) {
				return true;
			}
			// Iterator<Object> us = query.iterate();
			// while (us.hasNext()) {
			// session.close();
			// return true;
			// }
			// session.close();
			// return false;
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
			System.out.println("++++++++++co loi+++++++++++++++");
		}
		return false;
	}

	public User[] findByAccount(String account) {
		try {
			session.getTransaction().begin();
			String sql = "from User2 where account like ?";
			Query query = session.createQuery(sql);
			query.setString(0, "%" + account + "%");
			List resultList = query.list();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public void amend(User newUser, String account) {
		try {
			session.getTransaction().begin();
			User user = (User) session.get(User.class, account);

			user.setAccount(newUser.getAccount());
			user.setEmail(newUser.getEmail());
			user.setPassword(newUser.getPassword());
			user.setRole(newUser.getPassword());

			session.update(user);
			session.flush();
			session.getTransaction().commit();

		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

}
