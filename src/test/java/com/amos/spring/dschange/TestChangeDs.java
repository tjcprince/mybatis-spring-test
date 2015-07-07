package com.amos.spring.dschange;

import com.amos.spring.dschange.bean.Shop;
import com.amos.spring.util.DataSourceKeyHolder;
import com.amos.spring.annotation.ChooseDataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import sy.modle.User;
import sy.service.UserServiceI;

import java.util.List;

/**
 * User:Amos.zhou
 * Date: 14-3-14
 * Time: 下午5:59
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
@ChooseDataSource("ds_1")
public class TestChangeDs {
	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
		}
    @Autowired
    private ShopService shopService;

    @Test
    @Rollback(false)
    @ChooseDataSource("ds_1")
    public void testFindAllShop(){
    	DataSourceKeyHolder.setDataSourceKey("ds_2");
        List<Shop> shopList1 = shopService.findAllShop();
        System.out.println(shopList1.size());
        DataSourceKeyHolder.clearDataSourceKey();
        fromTestDB();
        fromTestDB1();
    }

    @ChooseDataSource("ds_2")
    public void fromTestDB(){
        List<Shop> shopList = shopService.findAllShop();
        System.out.println(shopList.size());
    }
    public void fromTestDB1(){
    	User u = userService.getUserById("1");
        System.out.println(u.getName());
    }
}
