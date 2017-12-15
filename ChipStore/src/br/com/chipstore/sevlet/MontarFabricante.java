package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.util.Utilitarios;


@WebServlet("/MontarFabricante")
public class MontarFabricante extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MontarFabricante() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
List<String> uf = Utilitarios.montarListaUf();		
		
		request.setAttribute("uf", uf);
		RequestDispatcher rd = request.getRequestDispatcher("/IncluirFabricante");
		rd.forward(request, response);
	}
	

	
	
}
