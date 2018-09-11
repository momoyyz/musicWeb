package music.controller;

import java.io.IOException;

import music.page.Page1;
import music.service.MusicService;
import music.utills.JsonUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MusicController {
	@Autowired
	private MusicService musicService;

	@RequestMapping("show")
	@ResponseBody
	public String show(String name) {

		String json = "";
		try {
			String str = musicService.show(name);

			json = JsonUtil.toJson(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json;
	}

	@RequestMapping("download")
	public ResponseEntity<byte[]> todownload(Page1 page1) {

		try {
			return musicService.download(page1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@RequestMapping("play")
	public String play(Page1 page1, ModelMap map) {

		// Map<String, String> map = new HashMap<String, String>();

		try {
			map.put("url", musicService.getURl(page1.getId()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.put("name", page1.getName());
		map.put("pic", page1.getPic());
		System.out.println(map);
		return "play.jsp";
	}
}
