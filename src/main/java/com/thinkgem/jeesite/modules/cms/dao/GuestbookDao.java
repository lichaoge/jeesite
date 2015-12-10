/**
 *     .
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Guestbook;

/**
 * 留言DAO接口
 * Li.XiaoChao
 * @version 2013-8-23
 */
@MyBatisDao
public interface GuestbookDao extends CrudDao<Guestbook> {

}
