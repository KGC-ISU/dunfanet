package service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import setitemvo.SetItemId;
import setitemvo.SetItemInfo;
import setitemvo.SetItemRows;

public class SetItemData {
	public final String key = "YbdxhQ6x66i6pXWDrZL4QfxWCNLPOLYe";

	private static SetItemData instance = new SetItemData();
	
	public static SetItemData getInstance() {
		return instance;
	}
	
	public void getSetItemResult(HttpServletRequest req, HttpServletResponse resp) {

		String name = req.getParameter("name");

		try {

			String url = "https://api.neople.co.kr/df/setitems?setItemName=" + URLEncoder.encode(name, "utf-8")+ "&limit=250&wordType=full&apikey=" + key;
			
			String data = getData(url);

			if (data == null) {
				System.out.println("데이터가 없습니다");
				return;
			}

			Gson gson = new Gson();
			SetItemRows rows = gson.fromJson(data, SetItemRows.class);

			List<SetItemId> datas = rows.getRows();

			req.setAttribute("setItemList", datas);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("아이템 리스트를 가져오는 중 오류발생");
		}

	}
	
	public void getSetItemInfo(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("setitemid");

		try {

			String url = "https://api.neople.co.kr/df/setitems/" + id + "?apikey=" + key;
			String data = getData(url);
			
			if (data == null) {
				System.out.println("데이터가 없습니다");
				return;
			}

			Gson gson = new Gson();
			SetItemInfo infos = gson.fromJson(data, SetItemInfo.class);
			
			req.setAttribute("setItemInfos", infos);
			
			

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("아이템 리스트를 가져오는 중 오류발생");
		}
		
	}
	
	private String getData(String url) {

		try {
			URL target = new URL(url);
			URLConnection targetCon = target.openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(targetCon.getInputStream()));

			String data = "";

			while (true) {
				String recv = br.readLine();
				if (recv == null)
					break;
				data += recv;
			}

			br.close();

			return data;

		} catch (Exception e) {
			return null;
		}
	}
	
	
}
