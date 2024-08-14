package com.distribuida.principal;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.LibroDAO;
import com.distribuida.entities.Libro;

public class principalLibro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		LibroDAO LibroDAO = context.getBean("LibroDAOImpl", LibroDAO.class);
		
		//Add
		Libro libro = new Libro();
		LibroDAO.add(libro);
		
		//Up
		Libro libro2 = new Libro();
		//LibroDAO.add(libro2);
		
		//del
		//libroDAO.del(1);
		System.out.println("****************** DEL ************"+LibroDAO.findOne(1));
		
		//findAll
		//List<Libro> libros = libroDAO.findALL();
		LibroDAO.findALL().forEach(item -> {System.out.println(item.toString());
		});
		
		context.close();
	}

}
