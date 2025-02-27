package jdbc;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class NullParameterRequestWrapper extends HttpServletRequestWrapper {

	private Map<String, String[]> parameterMap = null;
	
	public NullParameterRequestWrapper(HttpServletRequest request) {
		super(request);
		
		parameterMap = new HashMap<String, String[]>(request.getParameterMap());
	}
	
	public void checkNull(String[] parameterNames) {
		for (int i = 0; i <parameterNames.length; i++) {
			if (!parameterMap.containsKey(parameterNames[i])) {
				String[] values = new String[] { "" };
				parameterMap.put(parameterNames[i], values);
			}
		}
	}
}
