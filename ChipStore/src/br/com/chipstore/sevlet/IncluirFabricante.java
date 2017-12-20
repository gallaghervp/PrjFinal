
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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

		nome = request.getParameter("nomefabri");
		cnpj = request.getParameter("cnpjfabri");
		endereco = request.getParameter("enderecofabri");
		complemento = request.getParameter("complementofabri");
		bairro = request.getParameter("bairrofabri");
		municipio = request.getParameter("municipiofabri");
		uf = request.getParameter("selEstadofabri");
		contato = request.getParameter("contatofabri");
		email = request.getParameter("emailfabri");
		telefone = request.getParameter("telfabri");

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
			long idGerado = fs.incluir(novoFabricante);

			RequestDispatcher rd = request.getRequestDispatcher("/registroFabricante.jsp");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());

		}
	}
}
