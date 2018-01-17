
package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.Date;
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
import br.com.chipstore.model.Pedido;
import br.com.chipstore.service.ItemPedidoService;
import br.com.chipstore.service.PedidoService;

@WebServlet("/IncluirPedido")
public class IncluirPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirPedido() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Cliente cliente = new Cliente();
		Pedido pedido = new Pedido();
		List<ItemCarrinho> carrinho;
		
		cliente = (Cliente) session.getAttribute("cliente");
		
		carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
		
		try {
		
			Pedido novoPedido = new Pedido();
	
			novoPedido.setCliente(cliente);
			novoPedido.setDataPedido(new Date());
	
			PedidoService ps = new PedidoService();
			
			long idGerado = ps.incluir(novoPedido);
			
			novoPedido.setId(idGerado);
			
			ItemPedidoService ips = new ItemPedidoService();
			
			for(ItemCarrinho i: carrinho){
				 ips.incluir(idGerado, i);
			}
			
			request.setAttribute("novoPedido", novoPedido);
			
			RequestDispatcher rd = request.getRequestDispatcher("/pedidoFinal.jsp");
			rd.forward(request, response);
			
		/**	session.invalidate();  Apaga todos os dados da sessão. Achar uma forma pra apagar apenas o carrinho **/
		
	
			} catch (ChipstoreException e) {
				throw new ServletException(e.getMessage(), e.getCause());
	
			}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
