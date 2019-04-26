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

import itemvo.ItemId;
import itemvo.ItemInfo;
import itemvo.ItemRows;

public class ItemData {

	public final String key = "YbdxhQ6x66i6pXWDrZL4QfxWCNLPOLYe";

	private static ItemData instance = new ItemData();

	public static ItemData getInstance() {
		return instance;
	}

	public void getItemResult(HttpServletRequest req, HttpServletResponse resp) {

		String name = req.getParameter("name");
		String minLv = req.getParameter("level");

		try {

			String url = "https://api.neople.co.kr/df/items?itemName=" + URLEncoder.encode(name, "utf-8") + "&q=minLevel:" + minLv + ",maxLevel:<maxLevel>,rarity:<rarity>,trade:<trade>&limit=250&wordType=front&apikey=" + key;
			
			String data = getData(url);

			if (data == null) {
				System.out.println("데이터가 없습니다");
				return;
			}

			Gson gson = new Gson();
			ItemRows rows = gson.fromJson(data, ItemRows.class);

			List<ItemId> datas = rows.getRows();

			req.setAttribute("itemList", datas);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("아이템 리스트를 가져오는 중 오류발생");
		}

	}

	public void getItemInfo(HttpServletRequest req, HttpServletResponse resp) {

		String id = req.getParameter("itemid");

		try {

			String url = "https://api.neople.co.kr/df/items/" + id + "?apikey=" + key;
			String data = getData(url);
			
			if (data == null) {
				System.out.println("데이터가 없습니다");
				return;
			}

			Gson gson = new Gson();
			ItemInfo infos = gson.fromJson(data, ItemInfo.class);
			
			req.setAttribute("itemInfos", infos);
			
			

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
