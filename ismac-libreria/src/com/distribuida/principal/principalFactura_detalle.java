package com.distribuida.principal;

import java.util.Date;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.FacturaDAO;
import com.distribuida.dao.Factura_detalleDAO;
import com.distribuida.dao.LibroDAO;
import com.distribuida.entities.Factura_detalle;

public class principalFactura_detalle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		FacturaDAO FacturaDAO = context.getBean("FacturaDAOImpl", FacturaDAO.class);
		LibroDAO LibroDAO = context.getBean("LibroDAOImpl", LibroDAO.class);
		Factura_detalleDAO Factura_detalleDAO = context.getBean("Factura_detalleImpl", Factura_detalleDAO.class);

		// CRUD : CREATE , READ, UPDATE, DELETE
		
		// Add   
		Factura_detalle Factura_detalle = new Factura_detalle();
		Factura_detalle.setFactura(FacturaDAO.findOne(1));
		//Factura_detalleDAO.add(Factura_detalle);
		
		// Up
		Factura_detalle Factura_detalle2 = new Factura_detalle();
		Factura_detalle2.setLibro(LibroDAO.findOne(2));
		//Factura_detalleDAO.up(Factura_detalle2);
		
		// del
		Factura_detalleDAO.del(89);
		
		//findOne
		System.out.println("************************* DEL *****************"+Factura_detalleDAO.findOne(89));
		
		// findAll
		Factura_detalleDAO.findALL().forEach(item -> {System.out.println(item.toString())	;});
			
		context.close();
		
		
	}

}
