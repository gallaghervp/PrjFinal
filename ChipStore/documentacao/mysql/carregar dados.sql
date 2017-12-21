use projetofinal;

-- fabricantes
insert into fabricante values 
(DEFAULT, 'Apple', '11.111.333/0001-00', 'rua X', 'casa 1', 'Meier', 'Lins', 'RJ', '8888-9999', 'caio@gmail.com', '98888-9999'), 
(DEFAULT, 'Samsung', '11.111.333/0002-01', 'rua Y', 'casa 2', 'Tijuca', 'Lins II', 'SP', '7777-8888', 'gabriel@gmail.com', '98888-9999'), 
(DEFAULT, 'Nvidia', '11.111.333/0003-02', 'rua a', 'casa 4', 'Bento', 'Lins III', 'PB', '6666-6666', 'dyego@gmail.com', '79999-9999'), 
(DEFAULT, 'Dell', '11.111.333/0003-03', 'rua b', 'casa 5', 'Leblon', 'Lins VI', 'MG', '6666-7777', 'marcos@gmail.com', '79999-1111'), 
(DEFAULT, 'Razer', '11.111.333/0003-04', 'rua c', 'casa 6', 'Copa', 'Lins V', 'SC', '6666-4444', 'julio@gmail.com', '79999-2222'); 


-- categoria
insert into categoria values
  (DEFAULT, 'Smartphones'),
  (DEFAULT, 'Computadores'),
  (DEFAULT, 'Memórias'),
  (DEFAULT, 'Armazenamento'),
  (DEFAULT, 'Acessórios');
  
  
-- produto
  insert into produto values
  (DEFAULT, '1112223334445540', 'Iphone', 'Iphone 6S', '128GB', '90.00', '10','5', 'imagem 1 1', 1, 1),
  (DEFAULT, '1112223334445541', 'Galaxy', 'Galaxy S7', '128GB', '91.00', '11','6', 'imagem 2', 2, 1),
  (DEFAULT, '1112223334445542', 'Dell ultra', 'I7', 'HD 1TB', '92.00', '12','7', 'imagem 3', 3, 2),
  (DEFAULT, '1112223334445543', 'Dell power', 'i7', 'HD 2TB', '93.00', '13','8', 'imagem 4', 4, 2),
  (DEFAULT, '1112223334445544', 'HD Externo', 'Samsung J532', '256GB', '94.00', '14','9', 'imagem 15', 5, 3),
  (DEFAULT, '1112223334445545', 'Micro SD', 'SanDisk', '16GB', '90.00', '10','5', 'imagem 5', 1, 4),
  (DEFAULT, '1112223334445546', 'Placa mãe', 'AMD', 'AM1', '91.00', '11','6', 'imagem 7', 6, 3),
  (DEFAULT, '1112223334445547', 'HD', 'kingston', '120GB', '92.00', '12','7', 'imagem 8', 7, 4),
  (DEFAULT, '1112223334445548', 'Mouse', 'Razer', 'Wirelless', '93.00', '13','8', 'imagem 8', 4, 5),
  (DEFAULT, '1112223334445549', 'Teclado', 'Razer', 'Wirelles', '94.00', '14','9', 'imagem 9', 5, 5);
  

  -- junÃ§Ã£o das tabelas
  
  SELECT * FROM produto 
	INNER JOIN categoria 
		ON produto.categoria_codigo = categoria.codigo 
	inner join fabricante
		ON produto.fabricante_id = fabricante.id;
  

  -- observaÃ§Ã£o das tabelas
  
  SELECT * FROM fabricante;
  SELECT * FROM categoria;