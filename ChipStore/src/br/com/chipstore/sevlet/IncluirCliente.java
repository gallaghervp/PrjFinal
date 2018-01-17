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
import br.com.chipstore.util.Utilitarios;

@WebServlet("/IncluirCliente")
public class IncluirCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirCliente() {
		super();
	}

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
		String uf;
		String senha;

		nome = request.getParameter("nomecli");
		dataNascimento = request.getParameter("datacli");
		cpf = request.getParameter("cpf");
		rg = request.getParameter("rg");
		telefone = request.getParameter("telcli");
		email = request.getParameter("emailcli");
		endereco = request.getParameter("enderecocli");
		complemento = request.getParameter("complementocli");
		bairro = request.getParameter("bairrocli");
		municipio = request.getParameter("municipiocli");
		uf = request.getParameter("selEstadocli");
		senha = request.getParameter("senhacli");

		try {
			String hashSenhaCliente = Utilitarios.calcularHashSenha(senha);
			
			Cliente novoCliente = new Cliente();
			
			novoCliente.setNome(nome);
			novoCliente.setCpf(cpf);
			novoCliente.setRg(rg);
			novoCliente.setTelefone(telefone);
			novoCliente.setEmail(email);
			novoCliente.setEndereco(endereco);
			novoCliente.setComplemento(complemento);
			novoCliente.setBairro(bairro);
			novoCliente.setMunicipio(municipio);
			novoCliente.setUf(uf);
			novoCliente.setSenha(hashSenhaCliente);
			
			int diaNascimento = Integer.parseInt(dataNascimento.substring(8));
			int mesNascimento = Integer.parseInt(dataNascimento.substring(5, 7));
			int anoNascimento = Integer.parseInt(dataNascimento.substring(0, 4)) - 1900;

			novoCliente.setDataNascimento(new Date(anoNascimento, mesNascimento, diaNascimento));
			
			ClienteService cs = new ClienteService();
			
			long idGerado = cs.incluir(novoCliente);
			
			RequestDispatcher rd = request.getRequestDispatcher("/MontarPaginaMain");
			rd.forward(request, response);
		}
		catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}
		
	}	
}
