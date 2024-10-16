package com.hrmanagementsystem.util;

import com.hrmanagementsystem.dao.EmployeeDAO;
import com.hrmanagementsystem.dao.UserDAO;
import com.hrmanagementsystem.entity.User;
import com.hrmanagementsystem.enums.Role;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class AdminInitializer {
    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("hr_management_pu");

    public static void initializeAdminUser() {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.firstName = :username", User.class);
            query.setParameter("username", "admin");

            User adminUser;
            try {
                adminUser = query.getSingleResult();
                System.out.println("Admin user already exists.");
            } catch (NoResultException e) {
                adminUser = new User();
                adminUser.setFirstName("admin");
                String hashedPassword = BCrypt.hashpw("admin123", BCrypt.gensalt());
                adminUser.setPassword(hashedPassword);
                adminUser.setEmail("admin@example.com");
                adminUser.setRole(Role.Admin);

                EmployeeDAO.save(adminUser);
                System.out.println("Default admin user created.");
            }
        } finally {
            em.close();
        }
    }
}
