package com.example.demo.controller;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.SHA256;
import com.example.demo.dto.MemberDto;
import com.example.demo.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	private static final SHA256 sha256 = new SHA256();
	@Autowired
	MemberService service;

	@RequestMapping("/joinform")
	public String joinform() {

		return "member/joinform";
	}

	@PostMapping("/join")
	public String join(@RequestParam Map<String, Object> map, Model model) throws Exception {

		
		String pass = (String)map.get("memberPw");
		SHA256 sha256 = new SHA256();
		String cryptpass = sha256.encrypt(pass);
		map.put("memberPw", cryptpass);
		

	try {
		

		
		
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

		
		int result = service.idCheck(memberId);
		

		
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


    	HttpSession session = request.getSession();
    	
    	
    	String memberPw = request.getParameter("memberPw");
    	String pass = sha256.encrypt(memberPw);
    	
    	member.setMemberPw(pass);
    	MemberDto member1 = service.memberLogin(member); //객체끼리 비교하기 위해서
 
        if(member1 == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/member/loginform";
            
        }
        
        session.setAttribute("member", member1);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
       
        
        return "/member/logincomplete";
    }
	

    //로그아웃
    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(HttpServletRequest request) throws Exception{
 
    	HttpSession session = request.getSession(); //세션을 가져오게 함
    	
    	session.invalidate(); //세션 무효화 =로그아웃 
    	return "/member/logout";
    }
    

    @RequestMapping("/findpassform")
    public String findPassForm() {
    	return "/member/findpassform";
    }


    @RequestMapping("/findPass")
    public String findPass(MemberDto member, Model model) throws Exception {
    	
    	
    	
    	MemberDto member1 = service.memberFindPass(member);
    	if(member1 == null) {
    		return "redirect:/member/findpassform";
    	}
    	model.addAttribute("member",member1);
    	
    	
    	return "/member/newpassform";
    	
    }
    

    @PostMapping("/newPass")
    public String newPass(HttpServletRequest request, MemberDto member, HttpSession session) throws Exception{
    	
    	String input_id = request.getParameter("input_memberId");
    	String new_pw  = request.getParameter("memberPw");
    	
    	String enc_pw = sha256.encrypt(new_pw);
    	member.setMemberId(input_id);
    	member.setMemberPw(enc_pw);
    	
    	try {
			service.newPass(member);
			return "home";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
			
		}
    	
    }
    
    @RequestMapping("/withdrawform")
    public String withdrawform() throws Exception{
    	try {
			return "/member/withdrawform";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
    }
    
    @PostMapping("/withdraw.do")
    @ResponseBody
    public String withdraw(@RequestParam Map<String, Object> map,HttpServletRequest request) throws Exception{
    	try {
    		
    		String pass = (String)map.get("memberPw");
    		HttpSession session = request.getSession(); //세션을 가져오게 함
        
			String enc_pw = sha256.encrypt(pass);
			map.put("memberPw", enc_pw);
			service.withdraw(map);
			String result = "success";
			
        	session.invalidate(); //세션 무효화 =로그아웃 
    		return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			String result = "";
			return result;
		}
    }
    @PostMapping("/chkpassword.do")
    @ResponseBody
    public int chkpassword(@RequestParam Map<String, Object> map) throws Exception{
    	try {
    		String pass = (String)map.get("memberPw");
			
			String enc_pw = sha256.encrypt(pass);
			map.put("memberPw", enc_pw);
			return service.checkPass(map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
    }
    @RequestMapping("/thankyouforuse")
    public String thankYouForUse() {
    	return "/member/thankyouforuse";
    }
}




