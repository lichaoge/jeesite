/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.notice.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 通告管理Entity
 * @author Li.XiaoChao
 * @version 2015-12-09
 */
public class Notice extends DataEntity<Notice> {
	
	private static final long serialVersionUID = 1L;
	private String title;		// 公告标题
	private String content;		// 公告内容
	private String imgPath;		// 公告图片
	
	public Notice() {
		super();
	}

	public Notice(String id){
		super(id);
	}

	@Length(min=1, max=1000, message="公告标题长度必须介于 1 和 1000 之间")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Length(min=1, max=2000, message="公告内容长度必须介于 1 和 5000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=255, message="公告图片长度必须介于 0 和 255 之间")
	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
}