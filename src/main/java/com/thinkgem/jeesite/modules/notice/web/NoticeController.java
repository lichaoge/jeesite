/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.notice.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.notice.entity.Notice;
import com.thinkgem.jeesite.modules.notice.service.NoticeService;

/**
 * 通告管理Controller
 * @author Li.XiaoChao
 * @version 2015-12-09
 */
@Controller
@RequestMapping(value = "${adminPath}/notice/notice")
public class NoticeController extends BaseController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute
	public Notice get(@RequestParam(required=false) String id) {
		Notice entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = noticeService.get(id);
		}
		if (entity == null){
			entity = new Notice();
		}
		return entity;
	}
	
	@RequiresPermissions("notice:notice:view")
	@RequestMapping(value = {"list", ""})
	public String list(Notice notice, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Notice> page = noticeService.findPage(new Page<Notice>(request, response), notice); 
		model.addAttribute("page", page);
		return "modules/notice/noticeList";
	}

	@RequiresPermissions("notice:notice:view")
	@RequestMapping(value = "form")
	public String form(Notice notice, Model model) {
		model.addAttribute("notice", notice);
		return "modules/notice/noticeForm";
	}

	@RequiresPermissions("notice:notice:edit")
	@RequestMapping(value = "save")
	public String save(Notice notice, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, notice)){
			return form(notice, model);
		}
		noticeService.save(notice);
		addMessage(redirectAttributes, "保存通告成功");
		return "redirect:"+Global.getAdminPath()+"/notice/notice/?repage";
	}
	
	@RequiresPermissions("notice:notice:edit")
	@RequestMapping(value = "delete")
	public String delete(Notice notice, RedirectAttributes redirectAttributes) {
		noticeService.delete(notice);
		addMessage(redirectAttributes, "删除通告成功");
		return "redirect:"+Global.getAdminPath()+"/notice/notice/?repage";
	}

}