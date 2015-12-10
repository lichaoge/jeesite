/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.notice.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.notice.entity.Notice;

/**
 * 通告管理DAO接口
 * @author Li.XiaoChao
 * @version 2015-12-09
 */
@MyBatisDao
public interface NoticeDao extends CrudDao<Notice> {
	
}