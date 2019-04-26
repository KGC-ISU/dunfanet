package filter;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class encodingFilter implements Filter{
	
	String charset;
	
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		
		// 인코딩 초기 값을 추출하여 멤버면수인 charset에 저장
		charset = fConfig.getInitParameter("enc");
		
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		
		// 초기값을 추출하여 멤버 변수인 charst에 저장한 값으로 문지코드를 설정
		req.setCharacterEncoding(charset);
		
		chain.doFilter(req, resp);
		
	}
	
	@Override
	public void destroy() {
		
		System.out.println("필터 처리 완료");
		
	}
	
}
