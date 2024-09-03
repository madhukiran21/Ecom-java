package com.example.ecom;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StudentDAOClass implements StudentDAO{

	StudentRepository sr;
	@Autowired
	public StudentDAOClass(StudentRepository sr)
	{
		this.sr=sr;
	}
	
	public void insertStudent(Student s) {
		// TODO Auto-generated method stub
		sr.save(s);
	}

	@Override
	public int getStudent(Student s) {
		String email=s.getEmail();
		String pass=s.getPassword();
		
		List<Student> list=new ArrayList<>();
		int c=0;
		list=sr.findAll();
		for(Student x:list)
		{
			if(x.getEmail().equals(s.getEmail()) && x.getPassword().equals(s.getPassword()))
			{
				c=1;
			}
		}
		if(c==1)
		{
			return 1;
		}
		else return 0;
	}

}
