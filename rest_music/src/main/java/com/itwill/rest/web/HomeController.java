package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.dto.song.SongChartDto;
import com.itwill.rest.repository.Album;
import com.itwill.rest.service.AlbumService;
import com.itwill.rest.service.AlbumSongsService;
import com.itwill.rest.service.SongService;

import jakarta.mail.Session;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

	// 의존성 주입.
	private final SongService songService;
	private final AlbumService albumService;
	@GetMapping("/")
	public String frameset() {
		return "frameset";
	}
	
  @GetMapping("/home")
  public String home(Model model, HttpSession session) {
    log.debug("home()");
    
    // TODO: 좋아요순으로 정렬된 리스트를 가져오는 메서드를 호출.
    // => 없을 수도 있음. 
    List<SongChartDto> topTenList = songService.readTopTenSongs();
    // jsp에 쓰기 위해 model.setAttribute 메서드 사용
    model.addAttribute("topTenList", topTenList);
    // jsp에서 c:foreach 태그로 리스트를 출력함
    
    // 리스트 중에 10개만 사용하도록 설정
    
    // 최신 앨범을 불러오는 서비스 메서드 호출
    Integer id = (Integer) session.getAttribute("loginUserId");
    log.debug("Session loginUserId: {}", id);
    id = (id == null) ? 0 : id;
    
    List<Album> albumList = albumService.selectOrderByDate(id).stream().limit(10).toList();;
    // 최신 음악 리스트 가져오기
    model.addAttribute("albumList", albumList);
    
    return "home/home";
  }
}
