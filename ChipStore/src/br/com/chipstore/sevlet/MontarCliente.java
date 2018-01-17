package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.util.Utilitarios;

@WebServlet("/MontarCliente")
public class MontarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MontarCliente() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> ufs = Utilitarios.montarListaUf();		
		
		request.setAttribute("ufs", ufs);
		RequestDispatcher rd = request.getRequestDispatcher("/incluirCliente.jsp");
		rd.forward(request, response);
	}

}
