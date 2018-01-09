package br.com.chipstore.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.Produto;

public class Utilitarios {
	public static List<String> montarListaUf(){
		
		
		 
		List<String> ufs = new ArrayList<>();
		ufs.add("Selecione a UF");
		ufs.add("AC");
		ufs.add("AL");
		ufs.add("AP");
		ufs.add("AM");
		ufs.add("BA");
		ufs.add("CE");
		ufs.add("DF");
		ufs.add("ES");
		ufs.add("GO");
		ufs.add("MA");
		ufs.add("MT");
		ufs.add("MS");
		ufs.add("MG");
		ufs.add("PA");
		ufs.add("PB");
		ufs.add("PR");
		ufs.add("PE");
		ufs.add("PI");
		ufs.add("RJ");
		ufs.add("RN");
		ufs.add("RS");
		ufs.add("RO");
		ufs.add("RR");
		ufs.add("SC");
		ufs.add("SP");
		ufs.add("SE");
		ufs.add("TO");
		
		return ufs;
	}
	
	public static String calcularHashSenha(String senha) throws ChipstoreException {
    	MessageDigest md;
		try {
			md = MessageDigest.getInstance( "MD5" );
			md.update( senha.getBytes() );  
			
			BigInteger hash = new BigInteger( 1, md.digest() );  
			
			String hashSenha = hash.toString( 16 ); 
			
			return hashSenha;
			
		} catch (NoSuchAlgorithmException e) {
			throw new ChipstoreException("Erro ao gerar hash da senha");
		}  

	}
    
    public static boolean validarSenha(String hashSenhaOriginal, String hashSenhaInformada) {
		 return (hashSenhaOriginal.equals(hashSenhaInformada));
    }

    public void testarValidacaoSenha() {
    	String senha1 = "ABCDEFGHIJ";
    	String senha2 = "1234567890";
    	
    	try {
			String hashSenha1 = calcularHashSenha(senha1);
			System.out.println(hashSenha1);
			
	    	String hashSenha2 = calcularHashSenha(senha2);
	    	System.out.println(hashSenha2);
			
	    	System.out.println(validarSenha(hashSenha1, hashSenha2));

		} catch (ChipstoreException e) {
			e.printStackTrace();
		}
    }


	public static int indiceProdutoCarrinho(List<ItemCarrinho> carrinho, Produto novoProduto) {
		int indice = -1;
		for(ItemCarrinho ic: carrinho) {
			Produto produtoCarrinho = ic.getProduto();
			
			if (produtoCarrinho.getId() == novoProduto.getId()) {
				indice = carrinho.indexOf(ic); 
				break;
			}
			
		}
		
		return indice;
	}
	
	public static boolean removerProdutoCarrinho(List<ItemCarrinho> carrinho, Produto produto) {
		boolean resultado = false;
		
		int indice = indiceProdutoCarrinho(carrinho, produto);
		
		if (indice >= 0) {
			carrinho.remove(indice);
			resultado = true;
		}
		
		return resultado;
	}

}



