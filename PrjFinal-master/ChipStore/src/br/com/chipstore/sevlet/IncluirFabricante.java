package br.com.chipstore.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.service.FabricanteService;


@WebServlet("/IncluirFabricante")
public class IncluirFabricante extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public IncluirFabricante() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String nome;
		 String cnpj;
		 String endereco;
		 String complemento;
		 String bairro;
		 String municipio;
		 String uf;
		 String contato;
		 String email;
		 String telefone;
		
		
		
		nome = request.getParameter("nome");
		cnpj = request.getParameter("cnpj");
		endereco = request.getParameter("endereco");
		complemento = request.getParameter("complemento");
		bairro = request.getParameter("bairro");
		municipio = request.getParameter("municipio");
		uf = request.getParameter("uf");
		contato = request.getParameter("contato");
		email = request.getParameter("email");
		telefone = request.getParameter("telefone");
		
		
		
		
		Fabricante novoFabricante = new Fabricante();
		
		novoFabricante.setNome(nome);
		novoFabricante.setCnpj(cnpj);
		novoFabricante.setEndereco(endereco);
		novoFabricante.setComplemento(complemento);
		novoFabricante.setBairro(bairro);
		novoFabricante.setMunicipio(municipio);
		novoFabricante.setUf(uf);
		novoFabricante.setContato(contato);
		novoFabricante.setEmail(email);
		novoFabricante.setTelefone(telefone);
		
		
		FabricanteService fs = new FabricanteService();
		
		try {
			long codigoGerado = fs.incluir(novoFabricante);

			RequestDispatcher rd = request.getRequestDispatcher("/registroFabricante.jsp");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

		
	

	
	

}
