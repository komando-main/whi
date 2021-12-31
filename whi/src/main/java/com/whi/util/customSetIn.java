package com.whi.util;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.whi.vo.customVO;

public class customSetIn {

	private customVO vo;
	private SqlSessionTemplate ss;
	private ModelAndView mv;
	private String redirect;
	private int chk = 0;
	
	public customSetIn() {}
	
	public customSetIn(customVO vo, String redirect, SqlSessionTemplate ss) {
		
		this.redirect = redirect;
		this.ss = ss;
		
		System.out.println("DAO에서 coustomSetIn 생성자 호출 vo.getBusi_num(), vo.getCustom() = "+vo.getBusi_num()+", "+vo.getCustom());
		System.out.println(vo.getAddr1()+", "+vo.getAddr2()+", "+vo.getCeo()+", "+vo.getCharge_person()+", "+vo.getCo_yn()+", "+vo.getContract_period_e()+", "+vo.getContract_perod_s()+", "+ vo.getCountry_eng()+", "+vo.getCountry_kor()+", "
							+vo.getCustom()+", "+vo.getForeign_yn()+", "+vo.getHomepage()+", "+vo.getModi_info_date()+", "+vo.getModi_info_man()+", "+vo.getPost_num()+", "+vo.getRegi_info_date()+", "+vo.getRegi_info_man()+", "+vo.getsHort()+", "
							+vo.getSpecial_relation()+", "+vo.getTax_yn()+", "+vo.getTel()+", "+vo.getTime()+", "+vo.getTrade_stop()
							);
		if(!vo.getBusi_num().isEmpty() && vo.getBusi_num().trim().length() > 0) {
			if(!vo.getCustom().isEmpty() && vo.getCustom().trim().length() > 0) {
				
				System.out.println("setin 생성자안의 if문 구동");
				
				vo.setModi_info_date(null);
				vo.setModi_info_man(null);
				
				if(!equals(vo.getModi_info_date()) && !equals(vo.getModi_info_man())) {
				
					System.out.println("setin 생성자안의 if문 구동 insert");
					
					try {
						chk = ss.insert("custom.setin", vo);
					} catch (Exception e) {
						System.out.println("뭔문재가 뜨는거냐 insert =====================>   "+e.getMessage());
					}finally {
						if(chk > 0)
							System.out.println("저장 됨");
						else
							System.out.println("저장 안됨");
					}
				}
				this.vo = vo;
			}else
				System.out.println("유틸 setIn = vo.getCustom() 요놈 값이 없다 확인해라");
			
		}else
			System.out.println("유틸 setIn = vo.getBusi_num() 요놈 값이 없다 확인해라");
		
	}

	public ModelAndView getMv() {
		mv = new ModelAndView();
		mv.setViewName(redirect);
		return mv;
	}

	public void setMv(ModelAndView mv) {
		this.mv = mv;
	}

	public customVO getVo() {
		return vo;
	}

	public void setVo(customVO vo) {
		this.vo = vo;
	}
	
	
	
}
