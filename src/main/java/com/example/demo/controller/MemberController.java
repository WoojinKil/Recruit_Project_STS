package com.example.demo.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.util.ParameterMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dto.MemberDto;
import com.example.demo.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService service;

	@RequestMapping("/joinform")
	public String joinform() {

		return "member/joinform";
	}

	@PostMapping("/join")
	public String join(@RequestParam Map<String, Object> map, Model model) throws Exception {

		logger.info("파라미터값"+map.toString());

	try {
		
		logger.info("파라미터값"+map.toString());
		
		
		service.join(map);
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		

		return "redirect:/";
	}

	@PostMapping("/memberIdChk.do")
	@ResponseBody
	public String memberIdChkPost(String memberId) throws Exception{
		logger.info("go to memberIdChkPost method");
		
		int result = service.idCheck(memberId);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
	}
	@RequestMapping(value = "/loginform")
	public String loginForm () {
		return "/member/loginform";
	}


	 
    /* 로그인 */
    @RequestMapping(value="/login", method=RequestMethod.POST)

    public String loginPOST(HttpServletRequest request, MemberDto member, RedirectAttributes rttr) throws Exception{
    	logger.info("try to login");

    	HttpSession session = request.getSession();
    	
    	MemberDto member1 = service.memberLogin(member); //객체끼리 비교하기 위해서
 
        if(member1 == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/member/loginform";
            
        }
        
        session.setAttribute("member", member1);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        logger.info("login complete");
        
        return "redirect:/";
    }
	

    //로그아웃
    @RequestMapping(value="/logout.do", method=RequestMethod.GET)
    public String logout(HttpServletRequest request) throws Exception{
    	logger.info("goto logoutMainGET");
    	HttpSession session = request.getSession(); //세션을 가져오게 함
    	
    	session.invalidate(); //세션 무효화 =로그아웃 
    	return "home";
    }
    

    @RequestMapping("/findpassform")
    public String findPassForm() {
    	return "/member/findpassform";
    }


    @RequestMapping("/findPass")
    public String findPass(MemberDto member, Model model) throws Exception {
    	
    	
    	logger.info(member.toString());
    	MemberDto member1 = service.memberFindPass(member);
    	if(member1 == null) {
    		return "redirect:/member/findpassform";
    	}
    	model.addAttribute("member",member1);
    	
    	
    	return "/member/viewpassform";
    	
    }
    

}




