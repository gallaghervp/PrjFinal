package br.com.chipstore.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.exception.ChipstoreException;

public class Utilitarios {
	public static List<String> montarListaUf(){
		
		
		 
		List<String> uf = new ArrayList<>();
		uf.add("Selecione a UF");
		uf.add("AC");
		uf.add("AL");
		uf.add("AP");
		uf.add("AM");
		uf.add("BA");
		uf.add("CE");
		uf.add("DF");
		uf.add("ES");
		uf.add("GO");
		uf.add("MA");
		uf.add("MT");
		uf.add("MS");
		uf.add("MG");
		uf.add("PA");
		uf.add("PB");
		uf.add("PR");
		uf.add("PE");
		uf.add("PI");
		uf.add("RJ");
		uf.add("RN");
		uf.add("RS");
		uf.add("RO");
		uf.add("RR");
		uf.add("SC");
		uf.add("SP");
		uf.add("SE");
		uf.add("TO");
		
		return uf;
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
}
