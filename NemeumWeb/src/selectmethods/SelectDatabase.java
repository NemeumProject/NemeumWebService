package selectmethods;

import java.util.List;

public interface SelectDatabase {
	
	public List<?> findDatabase(String query);

}
