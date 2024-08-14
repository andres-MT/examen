package com.distribuida.principal;

import java.util.Date;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.dao.FacturaDAO;
import com.distribuida.entities.Factura;

public class principalFactura {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		FacturaDAO facturaDAO = context.getBean("facturaDAOImpl", FacturaDAO.class);
		ClienteDAO clienteDAO = context.getBean("clienteDAOImpl", ClienteDAO.class);
		// CRUD : CREATE , READ, UPDATE, DELETE
		
		// Add   
		Factura factura = new Factura(0,"FAC_0090", new Date(),60.63,15.63,76.35);
		factura.setCliente(clienteDAO.findOne(1));
		//facturaDAO.add(factura);
		
		// Up
		Factura factura2 = new Factura(89,"FAC_0091", new Date(),60.632,15.632,76.352);
		factura2.setCliente(clienteDAO.findOne(2));
		//facturaDAO.up(factura2);
		
		// del
		facturaDAO.del(89);
		
		//findOne
		System.out.println("************************* DEL *****************"+facturaDAO.findOne(89));
		
		// findAll
		facturaDAO.findALL().forEach(item -> {System.out.println(item.toString())	;});
			
		context.close();
		
		
	}

}
