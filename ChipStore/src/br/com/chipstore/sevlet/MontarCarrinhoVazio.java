package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.ItemCarrinho;

@WebServlet("/MontarCarrinhoVazio")
public class MontarCarrinhoVazio extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public MontarCarrinhoVazio() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<ItemCarrinho> carrinho;
			
		carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
		
		if (carrinho == null) {
			response.sendRedirect("./carrinhoVazio.jsp");
			
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/carrinho2.jsp");
			rd.forward(request, response);
		}
		
	}
	

}


	

