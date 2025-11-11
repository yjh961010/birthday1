package com.example.birthday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    // 홈 화면
    @GetMapping("/")
    public String home(@RequestParam(value = "error", required = false) String error, Model model) {
        if (error != null) {
            model.addAttribute("errorMessage", "지영이 아니면 나가! 🚫");
        }
        return "home";
    }

    // 로그인 페이지
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    // 로그인 처리
    @PostMapping("/login")
    public String loginProcess(@RequestParam String userid,
                               @RequestParam String password) {

        // 하드코딩된 아이디/비밀번호
        if ("0496".equals(userid) && "1122".equals(password)) {
            return "redirect:/letter"; // 로그인 성공 → 편지페이지
        } else {
            // 로그인 실패 → 홈으로 redirect + error 파라미터
            return "redirect:/?error=true";
        }
    }

    // 편지페이지
    @GetMapping("/letter")
    public String letter() {
        return "letter";
    }
    
    @GetMapping("/test")
    public String testPage() {
        return "test"; // src/main/webapp/WEB-INF/views/test.jsp
        
    }
    @Controller
    public class LetterController {

        @GetMapping("/letter2")
        public String letter2() {
            return "letter2"; // /WEB-INF/views/letter2.jsp를 반환
        }
    }

}
