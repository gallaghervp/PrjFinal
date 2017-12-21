use projetofinal;

-- fabricantes
insert into fabricante values 
(DEFAULT, 'Empresa A', '11.111.333/0001-00', 'rua X', 'casa 1', 'Meier', 'Lins', 'RJ', '8888-9999', 'caio@gmail.com', '98888-9999'), 
(DEFAULT, 'Empresa b', '11.111.333/0002-01', 'rua Y', 'casa 2', 'Tijuca', 'Lins II', 'SP', '7777-8888', 'gabriel@gmail.com', '98888-9999'), 
(DEFAULT, 'Empresa c', '11.111.333/0003-02', 'rua a', 'casa 4', 'Bento', 'Lins III', 'PB', '6666-6666', 'dyego@gmail.com', '79999-9999'), 
(DEFAULT, 'Empresa d', '11.111.333/0003-03', 'rua b', 'casa 5', 'Leblon', 'Lins VI', 'MG', '6666-7777', 'marcos@gmail.com', '79999-1111'), 
(DEFAULT, 'Empresa e', '11.111.333/0003-04', 'rua c', 'casa 6', 'Copa', 'Lins V', 'SC', '6666-4444', 'julio@gmail.com', '79999-2222'); 


-- categoria
insert into categoria values
	(DEFAULT, 'Smartphones'),
  (DEFAULT, 'Computadores'),
  (DEFAULT, 'Memórias'),
  (DEFAULT, 'Armazenamento'),
  (DEFAULT, 'Acessórios');
  
  
-- produto
  insert into produto values
  (DEFAULT, '1112223334445556', 'Iphone', 'Iphone 6S', 'Tela 4.7', '90.00', '10','5', 'imagem', 1, 1),
  (DEFAULT, '1112223334445557', 'Samsung Galaxy', 'Galaxy S7', 'Preto 32GB', '91.00', '11','6', 'imagem II', 2, 1),
  (DEFAULT, '1112223334445558', 'PC Dell', 'Dell Ultra', 'Intel Core I5', '92.00', '12','7', 'imagem III', 3, 2),
  (DEFAULT, '1112223334445559', 'Micro SD', 'SanDisk', '32GB', '93.00', '13','8', 'imagem V', 4, 4),
  (DEFAULT, '1112223334445551', 'Mouse', 'Razer', 'Diamond Back', '94.00', '14','9', 'imagem VII', 5, 5);
  

  -- junção das tabelas
  
  SELECT * FROM produto 
	INNER JOIN categoria 
		ON produto.categoria_codigo = categoria.codigo 
	inner join fabricante
		ON produto.fabricante_id = fabricante.id;
  

  -- observação das tabelas
  
  SELECT * FROM fabricante;
  SELECT * FROM categoria;
  

