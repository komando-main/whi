package com.whi.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.whi.dao.customDAO;
import com.whi.vo.customVO;

@Controller
public class testController {
	
	@Autowired
	private customDAO cdao;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String jsView() {
		System.out.println("test.jsp 호출");
		return "test";
	}
	
	@RequestMapping(value = "/setin", method = RequestMethod.POST)
	public ModelAndView setin(customVO vo) {
		System.out.println("test.jsp from 엑션 에서 컨트롤러 setin(customVO vo) 호출 vo.getBusi_num(), vo.getCustom()"+vo.getBusi_num()+", "+vo.getCustom());
		return cdao.setIn(vo);
	}
	
}
