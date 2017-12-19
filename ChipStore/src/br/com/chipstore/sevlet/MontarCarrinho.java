package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.ProdutoService;

@WebServlet("/MontarCarrinho")
public class MontarCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MontarCarrinho() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Produto produto = new Produto();
		List<Produto> produtos = new ArrayList<Produto>();
		double valorTotal = 0.0d;
		long id = Long.parseLong(request.getParameter("id"));
		
		try {
			
			ProdutoService ps = new ProdutoService();
			
			produto = ps.consultarPorId(id);
			
			produtos.add(produto);
			
			session.setAttribute("carrinho", produtos);
			 
			RequestDispatcher rd = request.getRequestDispatcher("/carrinho.jsp");
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
