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
import br.com.chipstore.util.Utilitarios;

@WebServlet("/IncluirAdministrador")
public class IncluirAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirAdministrador() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome;
		String cpf;
		String telefone;
		String email;
		String senha;

		nome = request.getParameter("nomepro");
		cpf = request.getParameter("cpfpro");
		telefone = request.getParameter("txtTelPro");
		email = request.getParameter("emailpro");
		senha = request.getParameter("senhapro");
		
		try {

			String hashSenhaAdmin = Utilitarios.calcularHashSenha(senha);

			Administrador novoAdministrador = new Administrador();
	
			novoAdministrador.setNome(nome);
			novoAdministrador.setCpf(cpf);
			novoAdministrador.setTelefone(telefone);
			novoAdministrador.setEmail(email);
			novoAdministrador.setSenha(hashSenhaAdmin);

			AdministradorService ar = new AdministradorService();

		

			long idGerada = ar.incluir(novoAdministrador);

			RequestDispatcher rd = request.getRequestDispatcher("/registroAdm.jsp");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

	

}