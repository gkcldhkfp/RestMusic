package com.itwill.rest.filter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.net.URLEncoder;

@Slf4j
public class AuthenticationFilter extends HttpFilter {
    private static final long serialVersionUID = 1L;
    public static final String SESSION_ATTR_USER = "SESSION_ATTR_USER";

    @Override
    public void init() throws ServletException {
        log.debug("authFilter 초기화");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        Object singedInUser = session.getAttribute(SESSION_ATTR_USER);
        System.out.println("singedInUser > " + singedInUser);

        // 세션에 로그인 정보가 존재하면
        if(singedInUser != null) {
            log.debug("로그인 됨 : {}", singedInUser);

            chain.doFilter(request, response);
            return;
        }

        // 세션에 로그인 정보가 없다면
        String url = req.getRequestURL().toString();
        log.debug("로그인 안됨, 로그인 페이지로 이동: [url] --> {}", url);

        String qs = req.getQueryString();
        log.debug("[query string] {}", qs);

        // 로그인 후 이동할 페이지
        String target = "";
        if(qs == null) {
            target = URLEncoder.encode(url, "UTF-8");
        } else {
            target = URLEncoder.encode(url + "?" + qs, "UTF-8");
        }

        log.debug("[target] {}", target);

        String signInPage = req.getContextPath() + "/user/signin?target=" + target;

        // 로그인 페이지로 이동
        ((HttpServletResponse) response).sendRedirect(signInPage);
    }
}
