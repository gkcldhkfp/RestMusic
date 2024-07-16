package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.repository.Album;
import com.itwill.rest.service.AlbumService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/album")
public class AlbumListController {
    private final AlbumService albumService;
    
    
    
    
    

//    @GetMapping("/list")
//    public String list(Model model, HttpSession session) {
//        log.debug("albumservice({})", albumService);
//
//        // 서비스 메서드 호출
//        List<Album> list = albumService.selectAllByAlbumId();
//        log.debug("list={}", list);
//        model.addAttribute("albumList", list);
//        session.setAttribute("listType", "list1");
//        return "/album/list";
//    }

//    @GetMapping("/list/newest")
//    public String listDate(Model model, HttpSession session) {
//        log.debug("albumservice({})", albumService);
//
//        List<Album> list = albumService.selectOrderByDate();
//        log.debug("list={}", list);
//        model.addAttribute("albumList", list);
//        session.setAttribute("listType", "list2");
//        return "/album/list";
//    }
    
    @GetMapping("/list/newest")
    public String listDate(Model model, HttpSession session) {
        log.debug("albumservice({})", albumService);

        Integer id = (Integer) session.getAttribute("loginUserId");
        log.debug("Session loginUserId: {}", id);
        id = (id == null) ? 0 : id;

        List<Album> list = albumService.selectOrderByDate(id);
        log.debug("list={}", list);
        
        model.addAttribute("albumList", list);
        model.addAttribute("loginUserId", id); // 필요하다면 모델에 추가

//        session.setAttribute("listType", "list2");
        return "/album/list";
    }
    
    

//    @GetMapping("/list/popular")
//    public String listLikes(Model model, HttpSession session) {
//        log.debug("albumservice({})", albumService);
//
//        List<Album> list = albumService.selectOrderByLikes();
//        log.debug("list={}", list);
//        model.addAttribute("albumList", list);
//        session.setAttribute("listType", "list3");
//
//        return "/album/list";
//    }
    
    @GetMapping("/list/popular")
    public String listLikes(Model model, HttpSession session) {
        log.debug("albumservice({})", albumService);

        Integer id = (Integer) session.getAttribute("loginUserId");
        log.debug("Session loginUserId: {}", id);
        id = (id == null) ? 0 : id;

        List<Album> list = albumService.selectOrderByLikes(id);
        log.debug("list={}", list);
        
        model.addAttribute("albumList", list);
        model.addAttribute("loginUserId", id); // 필요하다면 모델에 추가

//        session.setAttribute("listType", "list3");
        return "/album/list";
    }
    
    
    

   
}
