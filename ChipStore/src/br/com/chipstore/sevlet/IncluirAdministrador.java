package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Administrador;
import br.com.chipstore.service.AdministradorService;


@WebServlet("/IncluirAdministrador")
public class IncluirAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public IncluirAdministrador() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String nome;
		 String telefone;
		 String email;
		 String senha;
		
		 
		 
		 nome = request.getParameter("nome");
		 telefone = request.getParameter("telefone");
		 email = request.getParameter("email");
		 senha = request.getParameter("senha");
		 
		 
		 
		 Administrador novoAdministrador = new Administrador();
		 
		    
			novoAdministrador.setNome(nome);
			novoAdministrador.setTelefone(telefone);
			novoAdministrador.setEmail(email);
			novoAdministrador.setSenha(senha);
			
			 				 
		 AdministradorService ar = new AdministradorService();
			
			try {
				long idGerada = ar.incluir(novoAdministrador);

				RequestDispatcher rd = request.getRequestDispatcher("/registroAdm.jsp");
				rd.forward(request, response);

			} catch (ChipstoreException e) {
				throw new ServletException(e.getMessage(), e.getCause());
			}

		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}