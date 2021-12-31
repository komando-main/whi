package com.whi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.whi.util.customSetIn;
import com.whi.vo.customVO;

@Component
public class customDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	private customSetIn cusin;
	private String redir = "redirect:/";
	
	public ModelAndView setIn(customVO vo) {
		cusin = new customSetIn(vo, "test", ss);
		return cusin.getMv();
	}
	
}
