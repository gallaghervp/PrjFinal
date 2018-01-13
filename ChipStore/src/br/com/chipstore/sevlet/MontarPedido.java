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
import javax.servlet.http.HttpSession;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Cliente;
import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.ClienteService;
import br.com.chipstore.service.ProdutoService;
import br.com.chipstore.util.Utilitarios;

@WebServlet("/MontarPedido")
public class MontarPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public MontarPedido() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Cliente cliente = new Cliente();
		
		cliente = (Cliente) session.getAttribute("cliente");
		
		String email = request.getParameter("email");
		
		try {
			
			ClienteService cs = new ClienteService();
			
			cliente = cs.consultarPorEmail(email);
			
			request.setAttribute("nomePedido", cliente.getNome());
			
			request.setAttribute("endereco", cliente.getEndereco());
			
			request.setAttribute("complemento", cliente.getComplemento());
			
			request.setAttribute("bairro", cliente.getBairro());
			
			request.setAttribute("municipio", cliente.getMunicipio());
			 
			RequestDispatcher rd = request.getRequestDispatcher("/pedido.jsp");
			rd.forward(request, response);	
			   
		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(),e.getCause());
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		session.invalidate();
		
	}
	
}
