package pms;

import com.peace.pms.dao.sys.ManagerMapper;
import com.peace.pms.entity.sys.Manager;
import com.peace.pms.service.sys.ManagerService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestCase {
    private ApplicationContext ac =null;

    @org.junit.Test
    public void UserMapper(){
        AbstractApplicationContext ctx =new  ClassPathXmlApplicationContext("spring-mvc.xml");

        ac =new ClassPathXmlApplicationContext("spring-mvc.xml");

//        UserMapper um=ac.getBean("userService",UserMapper.class);
////
////        User u=new User("test2","root");
////        um.insert(u);
////        System.out.println("id:"+u.getId());
////
////        User u2= um.findUserByUsername("111");
////        System.out.println(u2);

        ManagerService MS=ctx.getBean("managerService", ManagerService.class);


        Manager manager= MS.findManagerById(1);
        System.out.println(manager);

    }

}
