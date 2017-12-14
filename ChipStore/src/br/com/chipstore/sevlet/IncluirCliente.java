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
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Cliente;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.service.ClienteService;
import br.com.chipstore.service.FabricanteService;

/**
 * Servlet implementation class IncluuirCliente
 */
@WebServlet("/IncluirCliente")
public class IncluirCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IncluirCliente() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome;
		String dataNascimento;
		String cpf;
		String rg;
		String telefone;
		String email;
		String endereco;
		String complemento;
		String bairro;
		String municipio;
		String estado;
		String senha;

		nome = request.getParameter("nomecli");
		dataNascimento = request.getParameter("datacli");
		cpf = request.getParameter("cpfcli");
		rg = request.getParameter("rgcli");
		telefone = request.getParameter("telcli");
		email = request.getParameter("emailcli");
		endereco = request.getParameter("enderecocli");
		complemento = request.getParameter("complementocli");
		bairro = request.getParameter("bairrocli");
		municipio = request.getParameter("municipiocli");
		estado = request.getParameter("selEstadocli");
		senha = request.getParameter("senhacli");

		Cliente novoCliente = new Cliente();

		novoCliente.setCpf(cpf);
		novoCliente.setNome(nome);
		novoCliente.setCpf(cpf);
		novoCliente.setRg(rg);
		novoCliente.setTelefone(telefone);
		novoCliente.setEmail(email);
		novoCliente.setEndereco(endereco);
		novoCliente.setComplemento(complemento);
		novoCliente.setBairro(bairro);
		novoCliente.setMunicipio(municipio);
		novoCliente.setSenha(senha);

		int diaNascimento = Integer.parseInt(dataNascimento.substring(0, 2));
		int mesNascimento = Integer.parseInt(dataNascimento.substring(3, 5));
		int anoNascimento = Integer.parseInt(dataNascimento.substring(6)) - 1900;

		novoCliente.setDataNascimento(new Date(anoNascimento, mesNascimento, diaNascimento));

		ClienteService cs = new ClienteService();

		try {
			long idGerado = cs.incluir(novoCliente);

			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

	
	
}
