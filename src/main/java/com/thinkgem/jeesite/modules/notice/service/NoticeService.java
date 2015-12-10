/**
 * Copyright &copy; 2015-2024 <a href="https://github.com/lichaoge/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.notice.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.notice.entity.Notice;
import com.thinkgem.jeesite.modules.notice.dao.NoticeDao;

/**
 * 通告管理Service
 * @author Li.XiaoChao
 * @version 2015-12-09
 */
@Service
@Transactional(readOnly = true)
public class NoticeService extends CrudService<NoticeDao, Notice> {

	public Notice get(String id) {
		return super.get(id);
	}
	
	public List<Notice> findList(Notice notice) {
		return super.findList(notice);
	}
	
	public Page<Notice> findPage(Page<Notice> page, Notice notice) {
		return super.findPage(page, notice);
	}
	
	@Transactional(readOnly = false)
	public void save(Notice notice) {
		super.save(notice);
	}
	
	@Transactional(readOnly = false)
	public void delete(Notice notice) {
		super.delete(notice);
	}
	
}