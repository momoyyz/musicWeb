package music.utills;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

public class HttpClientUtil {

	/**
	 * http post 请求 zhouh
	 * 
	 * @param strUrl
	 * @param params
	 *            请求的参数
	 * @param encode
	 *            编码
	 * @return
	 */
	public static String sendPostMessage(String strUrl,
			Map<String, String> params, String encode) throws IOException {

		URL url = null;
		try {
			url = new URL(strUrl);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}

		StringBuffer stringBuffer = new StringBuffer();

		if (params != null && !params.isEmpty()) {
			for (Map.Entry<String, String> entry : params.entrySet()) {
				try {
					stringBuffer
							.append(entry.getKey())
							.append("=")
							.append(URLEncoder.encode(entry.getValue(), encode))
							.append("&");

				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
			// 删掉最后一个 & 字符
			stringBuffer.deleteCharAt(stringBuffer.length() - 1);
			System.out.println("-->>" + stringBuffer.toString());

			HttpURLConnection httpURLConnection = null;
			OutputStream outputStream = null;
			InputStream inputStream = null;
			try {
				httpURLConnection = (HttpURLConnection) url.openConnection();
				httpURLConnection.setConnectTimeout(3000);
				httpURLConnection.setDoInput(true);// 从服务器获取数据
				httpURLConnection.setDoOutput(true);// 向服务器写入数据

				// 获得上传信息的字节大小及长度
				byte[] mydata = stringBuffer.toString().getBytes();
				// 设置请求体的类型
				httpURLConnection.setRequestProperty("Content-Type",
						"application/x-www-form-urlencoded");
				httpURLConnection.setRequestProperty("Content-Lenth",
						String.valueOf(mydata.length));

				// 获得输出流，向服务器输出数据
				outputStream = (OutputStream) httpURLConnection
						.getOutputStream();
				outputStream.write(mydata);

				// 获得服务器响应的结果和状态码
				int responseCode = httpURLConnection.getResponseCode();
				if (responseCode == 200) {

					// 获得输入流，从服务器端获得数据
					inputStream = (InputStream) httpURLConnection
							.getInputStream();
					return (changeInputStream(inputStream, encode));

				}

			} catch (IOException e) {
				throw new IOException(e.getMessage());
			} finally {
				if (inputStream != null) {
					inputStream.close();
				}
				if (outputStream != null) {
					outputStream.close();
				}
			}
		}

		return "";
	}

	/**
	 * 把从输入流InputStream按指定编码格式encode变成字符串String cjianquan 2016/9/29
	 * 
	 * @param inputStream
	 * @param encode
	 * @return
	 */
	public static String changeInputStream(InputStream inputStream,
			String encode) throws IOException {

		// ByteArrayOutputStream 一般叫做内存流
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
		byte[] data = new byte[1024];
		int len = 0;
		String result = "";
		if (inputStream != null) {

			try {
				while ((len = inputStream.read(data)) != -1) {
					byteArrayOutputStream.write(data, 0, len);

				}
				result = new String(byteArrayOutputStream.toByteArray(), encode);

			} catch (IOException e) {
				throw new IOException(e.getMessage());
			} finally {
				if (byteArrayOutputStream != null) {
					byteArrayOutputStream.close();
				}
			}

		}

		return result;
	}

}
