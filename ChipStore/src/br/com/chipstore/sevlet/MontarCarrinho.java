package br.com.chipstore.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.chipstore.model.Carrinho;

@WebServlet("/MontarCarrinho")
public class MontarCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MontarCarrinho() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		double valorTotal = 0.0d;

	    Carrinho carrinho = (Carrinho)session.getAttribute("carrinho");
	    if (carrinho == null) {
	      carrinho = new Carrinho();
	      session.setAttribute("carrinho", carrinho);
	    } 
	    
	    valorTotal = carrinho.getValorTotal();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		session.invalidate();
		
	}

}
