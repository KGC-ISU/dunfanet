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

import dao.UserDAO;
import servervo.AntonCharList;
import servervo.AntonCharVO;
import servervo.BakalCharList;
import servervo.BakalCharVO;
import servervo.CainCharList;
import servervo.CainCharVO;
import servervo.CasillasCharList;
import servervo.CasillasCharVO;
import servervo.DiregieCharList;
import servervo.DiregieCharVO;
import servervo.HilderCharList;
import servervo.HilderCharVO;
import servervo.PreyCharList;
import servervo.PreyCharVO;
import servervo.SirocoCharList;
import servervo.SirocoCharVO;
import swvo.SwitchingVO;
import vo.CharEquipVO;
import vo.CharItemVO;
import vo.CharList;
import vo.CharStatVO;
import vo.CharVO;
import vo.CharAvatarOptionVO;
import vo.CharAvatarVO;

public class CharData {

	public final String key = "YbdxhQ6x66i6pXWDrZL4QfxWCNLPOLYe";

	private static CharData instance = new CharData();

	public static CharData getInstance() {
		return instance;
	}

	public void getCharId(HttpServletRequest req, HttpServletResponse resp) {

		String server = req.getParameter("server");
		String name = req.getParameter("name");
		req.setAttribute("server", server);

		if (name == "") {
			req.setAttribute("nameNull", "널");
		}

		if (server.equals("all")) {

			boolean status = UserDAO.getInstance().selectName(name);

			if (status) {
				
				System.out.println("데이터를 가져옵니다.");
				
				UserDAO.getInstance().getUserData(name, req);
				
				return;

			} else {
				
				System.out.println("데이터를 새로 가져옵니다.");

				try {

					/* 카인 캐릭터 리스트 */
					String url = "https://api.neople.co.kr/df/servers/cain/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					String data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					Gson gson = new Gson();
					CainCharList cain = gson.fromJson(data, CainCharList.class);
					List<CainCharVO> cainVO = cain.getRows();

					req.setAttribute("cain", cainVO);

					/* 디레지에 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/diregie/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					DiregieCharList diregie = gson.fromJson(data, DiregieCharList.class);
					List<DiregieCharVO> diregieVO = diregie.getRows();

					req.setAttribute("diregie", diregieVO);

					/* 시로코 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/siroco/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					SirocoCharList siroco = gson.fromJson(data, SirocoCharList.class);
					List<SirocoCharVO> sirocoVO = siroco.getRows();

					req.setAttribute("siroco", sirocoVO);

					/* 프레이 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/prey/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					PreyCharList prey = gson.fromJson(data, PreyCharList.class);
					List<PreyCharVO> preyVO = prey.getRows();

					req.setAttribute("prey", preyVO);

					/* 카시야스 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/casillas/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					CasillasCharList casillas = gson.fromJson(data, CasillasCharList.class);
					List<CasillasCharVO> casillasVO = casillas.getRows();

					req.setAttribute("casillas", casillasVO);

					/* 힐더 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/hilder/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					HilderCharList hilder = gson.fromJson(data, HilderCharList.class);
					List<HilderCharVO> hilderVO = hilder.getRows();

					req.setAttribute("hilder", hilderVO);

					/* 안톤 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/anton/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					AntonCharList anton = gson.fromJson(data, AntonCharList.class);
					List<AntonCharVO> antonVO = anton.getRows();

					req.setAttribute("anton", antonVO);

					/* 바칼 캐릭터 리스트 */
					url = "https://api.neople.co.kr/df/servers/bakal/characters?characterName="
							+ URLEncoder.encode(name, "utf-8") + "&limit=100&wordType=full&apikey=" + key;
					data = getData(url);

					if (data == null) {
						System.out.println("데이터를 가져오는 중 오류발생");
						return;
					}

					BakalCharList bakal = gson.fromJson(data, BakalCharList.class);
					List<BakalCharVO> bakalVO = bakal.getRows();

					req.setAttribute("bakal", bakalVO);
					
					UserDAO.getInstance().insertUserData(req);

					return;

				} catch (Exception e) {
					e.printStackTrace();
					return;
				}
			}

		} else {
			String korServer = null;

			switch (server) {
			case "cain":
				korServer = "카인";
				break;
			case "diregie":
				korServer = "디레지에";
				break;
			case "siroco":
				korServer = "시로코";
				break;
			case "prey":
				korServer = "프레이";
				break;
			case "casillas":
				korServer = "카시야스";
				break;
			case "hilder":
				korServer = "힐더";
				break;
			case "anton":
				korServer = "안톤";
				break;
			case "bakal":
				korServer = "바칼";
				break;
			default:
				break;
			}

			req.setAttribute("korServer", korServer);

			try {
				String url = "https://api.neople.co.kr/df/servers/" + server + "/characters?characterName="
						+ URLEncoder.encode(name, "utf-8") + "&limit=1000&wordType=full&apikey=" + key;
				String data = getData(url);

				if (data == null) {
					System.out.println("데이터를 가져오는 중 오류발생");
					return;
				}

				Gson gson = new Gson();
				CharList id = gson.fromJson(data, CharList.class);

				List<CharVO> list = id.getRows();

				int nullCk = 0;

				for (int i = 0; i < list.size(); i++) {

					if (nullCk == 1) {
						break;
					}

					nullCk++;

				}

				if (nullCk == 0) {
					req.setAttribute("notFoundChar", name);
				}

				req.setAttribute("chars", list);

			} catch (Exception e) {
				e.printStackTrace();
				return;
			}

		}

	}

	public CharEquipVO getCharInfo(HttpServletRequest req, HttpServletResponse resp) {

		String server = req.getParameter("server");
		String id = req.getParameter("charid");

		String korServer = null;

		switch (server) {
		case "cain":
			korServer = "카인";
			break;
		case "diregie":
			korServer = "디레지에";
			break;
		case "siroco":
			korServer = "시로코";
			break;
		case "prey":
			korServer = "프레이";
			break;
		case "casillas":
			korServer = "카시야스";
			break;
		case "hilder":
			korServer = "힐더";
			break;
		case "anton":
			korServer = "안톤";
			break;
		case "bakal":
			korServer = "바칼";
			break;
		default:
			break;
		}

		req.setAttribute("korServer", korServer);

		try {
			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id
					+ "/equip/equipment?apikey=" + key;

			String data = getData(url);

			if (data == null) {
				return null;
			}

			Gson gson = new Gson();
			CharEquipVO equip = gson.fromJson(data, CharEquipVO.class);

			return equip;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public CharAvatarVO getCharAvatar(HttpServletRequest req, HttpServletResponse resp) {

		String server = req.getParameter("server");
		String id = req.getParameter("charid");

		try {

			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id + "/equip/avatar?apikey="
					+ key;

			String data = getData(url);

			if (data == null) {
				return null;
			}

			Gson gson = new Gson();
			CharAvatarVO avatar = gson.fromJson(data, CharAvatarVO.class);

			return avatar;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public CharStatVO getCharStat(HttpServletRequest req, HttpServletResponse resp) {

		String server = req.getParameter("server");
		String id = req.getParameter("charid");

		try {

			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id + "/status?apikey="
					+ key;
			String data = getData(url);

			if (data == null) {
				return null;
			}

			Gson gson = new Gson();
			CharStatVO stat = gson.fromJson(data, CharStatVO.class);

			return stat;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	// 스위칭 장비
	public void getCharSwitcing(HttpServletRequest req, HttpServletResponse resp) {

		String server = req.getParameter("server");
		String id = req.getParameter("charid");

		// 장비 스위칭 가져오기

		try {

			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id
					+ "/skill/buff/equip/equipment?apikey=" + key;
			String data = getData(url);

			Gson gson = new Gson();
			SwitchingVO switchingEquip = gson.fromJson(data, SwitchingVO.class);

			if (switchingEquip.getSkill().getBuff() == null) {
				System.out.println("버프강화가 등록되있지않은 모험가");
				req.setAttribute("buffSt", null);
				return;
			}

			List<CharItemVO> equipment = switchingEquip.getSkill().getBuff().getEquipment();
			CharItemVO charItemVO = new CharItemVO();
			charItemVO.setSlotName(null);
			equipment.add(charItemVO);
			req.setAttribute("buffSt", switchingEquip.getSkill().getBuff());
			req.setAttribute("swEquipItems", equipment);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("스위칭장비를 가져오는중 오류발생");
		}

		// 아바타 스위칭 가져오기

		try {

			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id
					+ "/skill/buff/equip/avatar?apikey=" + key;
			String data = getData(url);

			Gson gson = new Gson();
			SwitchingVO switchingAvartar = gson.fromJson(data, SwitchingVO.class);

			if (switchingAvartar.getSkill().getBuff().getAvatar() == null) {
				System.out.println("아바타가 등록되지 않음");
				req.setAttribute("avartaSt", null);
			} else {
				List<CharAvatarOptionVO> avartas = switchingAvartar.getSkill().getBuff().getAvatar();
				CharAvatarOptionVO swAvartaOptionVO = new CharAvatarOptionVO();
				swAvartaOptionVO.setSlotName(null);
				avartas.add(swAvartaOptionVO);
				req.setAttribute("avartaSt", avartas);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("스위칭아바타를 가져오는중 오류발생");
		}

		// 크리처 스위칭 가져오기

		try {

			String url = "https://api.neople.co.kr/df/servers/" + server + "/characters/" + id
					+ "/skill/buff/equip/creature?apikey=" + key;
			String data = getData(url);

			Gson gson = new Gson();
			SwitchingVO switcingCreature = gson.fromJson(data, SwitchingVO.class);

			if (switcingCreature.getSkill().getBuff().getCreature() == null) {
				System.out.println("크리처가 등록되지 않음");
				req.setAttribute("creatureSt", null);
			} else {
				req.setAttribute("creatureSt", switcingCreature.getSkill().getBuff().getCreature().get(0));
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("스위칭크리처를 가져오는중 오류발생");
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
