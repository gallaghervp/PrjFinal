package br.com.chipstore.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreExpection;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.service.FabricanteService;


@WebServlet("/IncluirFabricante")
public class IncluirFabricante extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public IncluirFabricante() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter saida;
		String nome;
		
		try {
			nome = request.getParameter("nome");
			
			Fabricante novoFabricante = new Fabricante();
			
			novoFabricante.setNome(nome);
			
			
			FabricanteService fs = new FabricanteService();
			
			long codigoGerado = fs.incluir(novoFabricante);
			
			if(codigoGerado > 0){
				
			} else{
				
			}
			//request.setAttribute("mensagem", mensagem);
			
			//RequestDispatcher rd = request.getRequestDispatcher();
			//rd.forward(request, response);
		} catch (ChipstoreExpection e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
