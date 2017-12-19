package br.com.chipstore.model;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class Carrinho2 {
	
	HashMap<Long, ItemCarrinho> itens = null;
	int numeroItens = 0;
	
	public Carrinho2() {
		itens = new HashMap<Long, ItemCarrinho>();
	}
	
	public synchronized void adicionar(long id, Produto produto) {
		if (itens.containsKey(id)) {
			ItemCarrinho ic = (ItemCarrinho) itens.get(id);
			ic.aumentarQuantidade();
		} else {
			ItemCarrinho novoItem = new ItemCarrinho(produto);
			itens.put(id, novoItem);
		}
		
		numeroItens++;
		
	}
	
	public synchronized void remover(long id) {
		if (itens.containsKey(id)) {
			ItemCarrinho ic = (ItemCarrinho) itens.get(id);
			ic.diminuirQuantidade();
			
			if (ic.getQuantidade() <= -0)
				itens.remove(id);
		}
		
		numeroItens--;
		
	}
	
	public synchronized Collection<ItemCarrinho> getItens() {
		return itens.values();
	}
	
	public synchronized double getTotal() {
		double total = 0.0d;
		
		for(Iterator i = getItens().iterator(); i.hasNext(); ) {
		      ItemCarrinho item = (ItemCarrinho) i.next();
		      Produto produto = (Produto) item.getProduto();

		      total += item.getQuantidade() * produto.getPreco();
		    }
		
		    return total;
		    
	}
	
}
