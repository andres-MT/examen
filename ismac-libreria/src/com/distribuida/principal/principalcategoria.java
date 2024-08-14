package com.distribuida.principal;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.categoria;

public class principalcategoria {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		 ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		 
		 CategoriaDAO CategoriaDAO	= context.getBean("categoriaDAOImpl",CategoriaDAO.class);
		 
		 List<categoria> categorias= CategoriaDAO.findALL();
		 categorias.forEach(item -> {
			 
				System.out.println(item.toString());
			});
			
			context.close();
		}

	}