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
import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.ProdutoService;
import br.com.chipstore.util.Utilitarios;

@WebServlet("/RemoverItemCarrinho")
public class RemoverItemCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RemoverItemCarrinho() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Produto produto = new Produto();
		List<ItemCarrinho> carrinho;
		Double valorTotal = 0.0d;
		
		// verificar se o carrinho esta na sessao
		carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
		
		if (carrinho != null) {
			
			long id = Long.parseLong(request.getParameter("id"));
		
			try {
				
				ProdutoService ps = new ProdutoService();
				
				produto = ps.consultarPorId(id);
				
				int indiceItemCarrinho = Utilitarios.indiceProdutoCarrinho(carrinho, produto);
				int quantidadeItemCarrinho = carrinho.get(indiceItemCarrinho).getQuantidade();

				if (quantidadeItemCarrinho > 0) {
					boolean resultado = Utilitarios.removerProdutoCarrinho(carrinho, produto);
				} 
				
				
				for(ItemCarrinho i: carrinho){
					valorTotal += i.getPreco();
				}
				
				session.setAttribute("valorTotal", valorTotal);
				
				session.setAttribute("carrinho", carrinho);
				 
				RequestDispatcher rd = request.getRequestDispatcher("/carrinho2.jsp");
				rd.forward(request, response);
				   
			} catch (ChipstoreException e) {
				throw new ServletException(e.getMessage(),e.getCause());
			}
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		session.invalidate();
		
	}
	
}
