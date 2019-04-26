package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dto.AntonDTO;
import dto.BakalDTO;
import dto.CainDTO;
import dto.CasillasDTO;
import dto.DiregieDTO;
import dto.HilderDTO;
import dto.PreyDTO;
import dto.SirocoDTO;
import jdbc.JdbcUtil;
import servervo.AntonCharVO;
import servervo.BakalCharVO;
import servervo.CainCharVO;
import servervo.CasillasCharVO;
import servervo.DiregieCharVO;
import servervo.HilderCharVO;
import servervo.PreyCharVO;
import servervo.SirocoCharVO;

public class UserDAO {
	
	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}
	
	public boolean selectName(String name) {
		
		Connection con = JdbcUtil.getConnection();
		
		if(con == null) {
			System.out.println("데이터 베이스 연결오류");
			return false;
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM user WHERE name LIKE ?";
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name + "%");
			
			rs = pstmt.executeQuery();
			
			int count = 0;
			
			while(rs.next()) {	
				count++;
				if(count > 0) {
					break;
				}
			}
			
			if(count == 0) {
				System.out.println("저장된 데이터가 없습니다");
				return false;
			}
			
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터 베이스 쿼리 오류");
			return false;
		}
		   
	}
	
	public void getUserData(String name, HttpServletRequest req) {
		
		Connection con = JdbcUtil.getConnection();
		
		if(con == null) {
			System.out.println("데이터 베이스 연결오류");
			return;
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		/*
		 * 
		 * 카인 리스트
		 * 
		 */
		
		String sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '카인'";
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<CainDTO> cainList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				CainDTO cain = new CainDTO();
				
				cain.setCharacterName(rs.getString("name"));
				cain.setCharacterId(rs.getString("id"));
				cain.setLevel(rs.getInt("level"));
				cain.setServer(rs.getString("server"));
				
				cainList.add(cain);
				
			}
			
			req.setAttribute("cain", cainList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 디레지에 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '디레지에' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<DiregieDTO> diregieList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				DiregieDTO diregie = new DiregieDTO();
				
				diregie.setCharacterName(rs.getString("name"));
				diregie.setCharacterId(rs.getString("id"));
				diregie.setLevel(rs.getInt("level"));
				diregie.setServer(rs.getString("server"));
				
				diregieList.add(diregie);
				
			}
			
			req.setAttribute("diregie", diregieList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 시로코 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '시로코' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<SirocoDTO> sirocoList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				SirocoDTO siroco = new SirocoDTO();
				
				siroco.setCharacterName(rs.getString("name"));
				siroco.setCharacterId(rs.getString("id"));
				siroco.setLevel(rs.getInt("level"));
				siroco.setServer(rs.getString("server"));
				
				sirocoList.add(siroco);
				
			}
			
			req.setAttribute("siroco", sirocoList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 프레이 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '프레이' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<PreyDTO> preyList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				PreyDTO prey = new PreyDTO();
				
				prey.setCharacterName(rs.getString("name"));
				prey.setCharacterId(rs.getString("id"));
				prey.setLevel(rs.getInt("level"));
				prey.setServer(rs.getString("server"));
				
				preyList.add(prey);
				
			}
			
			req.setAttribute("prey", preyList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 카시야스 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '카시야스' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<CasillasDTO> casillasList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				CasillasDTO casillas = new CasillasDTO();
				
				casillas.setCharacterName(rs.getString("name"));
				casillas.setCharacterId(rs.getString("id"));
				casillas.setLevel(rs.getInt("level"));
				casillas.setServer(rs.getString("server"));
				
				casillasList.add(casillas);
				
			}
			
			req.setAttribute("casillas", casillasList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 힐더 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '힐더' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<HilderDTO> hilderList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				HilderDTO hilder = new HilderDTO();
				
				hilder.setCharacterName(rs.getString("name"));
				hilder.setCharacterId(rs.getString("id"));
				hilder.setLevel(rs.getInt("level"));
				hilder.setServer(rs.getString("server"));
				
				hilderList.add(hilder);
				
			}
			
			req.setAttribute("hilder", hilderList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 안톤 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '안톤' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<AntonDTO> antonList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				AntonDTO anton = new AntonDTO();
				
				anton.setCharacterName(rs.getString("name"));
				anton.setCharacterId(rs.getString("id"));
				anton.setLevel(rs.getInt("level"));
				anton.setServer(rs.getString("server"));
				
				antonList.add(anton);
				
			}
			
			req.setAttribute("anton", antonList);
			
			pstmt = null;
			rs = null;
			
			/*
			 * 
			 * 바칼 리스트
			 * 
			 */
			
			sql = "SELECT * FROM user WHERE name LIKE ? AND server LIKE '바칼' AND level >= 90";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name+"%");
			
			rs = pstmt.executeQuery();
			
			ArrayList<BakalDTO> bakalList = new ArrayList<>() ;
			
			while(rs.next()) {
				
				BakalDTO bakal = new BakalDTO();
				
				bakal.setCharacterName(rs.getString("name"));
				bakal.setCharacterId(rs.getString("id"));
				bakal.setLevel(rs.getInt("level"));
				bakal.setServer(rs.getString("server"));
				
				bakalList.add(bakal);
				
			}
			
			req.setAttribute("bakal", bakalList);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터 베이스 쿼리오류");
			return;
		}
		
	}
	
	public void insertUserData(HttpServletRequest req) throws SQLException {
		
		Connection con = JdbcUtil.getConnection();
		
		if(con == null) {
			System.out.println("데이터 베이스 연결오류");
			return;
		}
		
		PreparedStatement pstmt = null;
		
		/*
		 * 
		 * 카인 리스트 삽입
		 * 
		 */
		
		String sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
	
		@SuppressWarnings("unchecked")
		ArrayList<CainCharVO> cainList = (ArrayList<CainCharVO>) req.getAttribute("cain");
		
		for (CainCharVO cainCharVO : cainList) {
			
			if(cainCharVO.getLevel() >= 90) {
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, cainCharVO.getCharacterName());
				pstmt.setString(2, cainCharVO.getCharacterId());
				pstmt.setInt(3, cainCharVO.getLevel());
				pstmt.setString(4, cainCharVO.getServer());
				pstmt.executeUpdate();
				
			}
			
		}
		
		/*
		 * 
		 * 디레지에 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<DiregieCharVO> diregieList = (ArrayList<DiregieCharVO>) req.getAttribute("diregie");
		
		for (DiregieCharVO diregieCharVO : diregieList) {
			
			if(diregieCharVO.getLevel() >= 90) {
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, diregieCharVO.getCharacterName());
				pstmt.setString(2, diregieCharVO.getCharacterId());
				pstmt.setInt(3, diregieCharVO.getLevel());
				pstmt.setString(4, diregieCharVO.getServer());
				pstmt.executeUpdate();
				
			}
			
		}
		
		/*
		 * 
		 * 시로코 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<SirocoCharVO> sirocoList = (ArrayList<SirocoCharVO>) req.getAttribute("siroco");
		
		for (SirocoCharVO sirocoCharVO : sirocoList) {
			
			if(sirocoCharVO.getLevel() >= 90) {
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, sirocoCharVO.getCharacterName());
				pstmt.setString(2, sirocoCharVO.getCharacterId());
				pstmt.setInt(3, sirocoCharVO.getLevel());
				pstmt.setString(4, sirocoCharVO.getServer());
				pstmt.executeUpdate();
			
			}
			
		}
		
		/*
		 * 
		 * 프레이 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<PreyCharVO> preyList = (ArrayList<PreyCharVO>) req.getAttribute("prey");
		
		for (PreyCharVO preyCharVO : preyList) {
			
			if(preyCharVO.getLevel() >= 90) {
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, preyCharVO.getCharacterName());
				pstmt.setString(2, preyCharVO.getCharacterId());
				pstmt.setInt(3, preyCharVO.getLevel());
				pstmt.setString(4, preyCharVO.getServer());
				pstmt.executeUpdate();
			
			}
		}
		
		/*
		 * 
		 * 카시야스 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<CasillasCharVO> casillasList = (ArrayList<CasillasCharVO>) req.getAttribute("casillas");
		
		for (CasillasCharVO casillasCharVO : casillasList) {
			
			if(casillasCharVO.getLevel() >= 90) {
			
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, casillasCharVO.getCharacterName());
				pstmt.setString(2, casillasCharVO.getCharacterId());
				pstmt.setInt(3, casillasCharVO.getLevel());
				pstmt.setString(4, casillasCharVO.getServer());
				pstmt.executeUpdate();
				
			}
			
		}
		
		/*
		 * 
		 * 힐더 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<HilderCharVO> hilderList = (ArrayList<HilderCharVO>) req.getAttribute("hilder");
		
		for (HilderCharVO hilderCharVO : hilderList) {
			
			if(hilderCharVO.getLevel() >= 90) {
			
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, hilderCharVO.getCharacterName());
				pstmt.setString(2, hilderCharVO.getCharacterId());
				pstmt.setInt(3, hilderCharVO.getLevel());
				pstmt.setString(4, hilderCharVO.getServer());
				pstmt.executeUpdate();
			
			}
			
		}
		
		/*
		 * 
		 * 안톤 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<AntonCharVO> antonList = (ArrayList<AntonCharVO>) req.getAttribute("anton");
		
		for (AntonCharVO antonCharVO : antonList) {
			
			if(antonCharVO.getLevel() >= 90) {
			
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, antonCharVO.getCharacterName());
				pstmt.setString(2, antonCharVO.getCharacterId());
				pstmt.setInt(3, antonCharVO.getLevel());
				pstmt.setString(4, antonCharVO.getServer());
				pstmt.executeUpdate();
			
			}
			
		}
		
		/*
		 * 
		 * 바칼 리스트 삽입
		 * 
		 */
		
		sql = "INSERT INTO user(name, id, level, server) values(?, ?, ?, ?)";
		
		@SuppressWarnings("unchecked")
		ArrayList<BakalCharVO> bakalList = (ArrayList<BakalCharVO>) req.getAttribute("bakal");
		
		for (BakalCharVO bakalCharVO : bakalList) {
			
			if(bakalCharVO.getLevel() >= 90) {
			
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, bakalCharVO.getCharacterName());
				pstmt.setString(2, bakalCharVO.getCharacterId());
				pstmt.setInt(3, bakalCharVO.getLevel());
				pstmt.setString(4, bakalCharVO.getServer());
				pstmt.executeUpdate();
				
			}
			
		}
		
	}
	
}