package music.service;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import music.page.Page1;
import music.utills.HttpClientUtil;
import net.sf.json.JSONObject;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class MusicService {
	private String body;

	public ResponseEntity<byte[]> download(Page1 page1) throws Exception {

		OkHttpClient ok = new OkHttpClient();
		String url = "http://api.96iz.cc/api/post.php?id=" + page1.getId()
				+ "&type=qq";
		Request request = new Request.Builder().url(url).build();
		Response response = ok.newCall(request).execute();

		body = response.body().string();
		JSONObject json = JSONObject.fromObject(body);
		String path = "";
		if (page1.getNum() == 1) {
			path = json.getString("url128");
		} else if (page1.getNum() == 2) {
			path = json.getString("url320");
		} else if (page1.getNum() == 3) {
			path = json.getString("url999");
		}

		return saveMusic(page1, path);

	}

	private ResponseEntity<byte[]> saveMusic(Page1 page1, String path)
			throws Exception {
		String MusName = "";
		File MUS = null;
		URL url = new URL(path);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		if (conn.getResponseCode() == 200) {
			InputStream is = conn.getInputStream();
			BufferedInputStream bis = new BufferedInputStream(is);
			MusName = page1.getAuthor() + " - " + page1.getName() + ".mp3";
			new File("QQ Music//Audio1").mkdirs();
			MUS = new File("QQ Music//Audio1", MusName);

			FileOutputStream fos = new FileOutputStream(MUS);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			byte[] b = new byte[1024];
			int len;
			while ((len = bis.read(b)) != -1) {
				bos.write(b, 0, len);

			}
			System.out.println("保存成功:" + MUS);
			bos.close();
			bis.close();
			fos.close();
			is.close();

		} else {
			System.out.println(conn.getResponseCode());
		}
		path = "QQ Music//Audio1//" + MusName;
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();
		String fileName = new String(MusName.getBytes("UTF-8"), "iso-8859-1");// 为了解决中文名称乱码问题
		headers.setContentDispositionFormData("attachment", fileName);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);

		ResponseEntity<byte[]> a = new ResponseEntity<byte[]>(
				FileUtils.readFileToByteArray(file), headers,
				HttpStatus.CREATED);
		if (MUS.exists() && MUS.isFile()) {
			if (MUS.delete()) {
				System.out.println("删除单个文成功！");
			} else {
				System.out.println("删除单个文件失败！");
			}
		} else {
			System.out.println("删除单个文件失败：不存在！");

		}
		return a;

	}

	/**
	 * 获取搜索结果
	 * 
	 * @param name
	 * @throws IOException
	 */
	public String show(String name) throws IOException {
		OkHttpClient ok = new OkHttpClient();
		String url = "http://api.96iz.cc/api/search.php?kw=" + name
				+ "&type=tencent&page=1";

		// HttpUrl url = HttpUrl.parse("http://api.96iz.cc/api/search.php?kw="
		// + name + "&type=tencent&page=1");
		String data = HttpClientUtil.sendPostMessage(url, null, null);

		Request request = new Request.Builder().url(url).build();
		Response response = ok.newCall(request).execute();
		body = response.body().string();

		return body;
	}

	public String getURl(String id) throws IOException {
		OkHttpClient ok = new OkHttpClient();
		String url = "http://api.96iz.cc/api/post.php?id=" + id + "&type=qq";
		Request request = new Request.Builder().url(url).build();
		Response response = ok.newCall(request).execute();
		body = response.body().string();
		JSONObject json = JSONObject.fromObject(body);
		String path = json.getString("url999");

		return path;
	}

}
