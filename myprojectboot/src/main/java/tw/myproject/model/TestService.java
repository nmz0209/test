package tw.myproject.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TestService {
	
	@Autowired
	private TestRepository repository;
	
	public List<Test> findAll(){
		return repository.findAll();
	}
}
