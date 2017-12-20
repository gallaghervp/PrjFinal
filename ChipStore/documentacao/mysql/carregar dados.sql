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
  (DEFAULT, 'Placas'),
  (DEFAULT, 'Perif�ricos'),
  (DEFAULT, 'Mouses'),
  (DEFAULT, 'Teclados'),
  (DEFAULT, 'Monitores');
  
  
-- produto
  insert into produto values
  (DEFAULT, '1112223334445540', 'Placa-mãe', 'Modelo A', 'Placa-mãe nova', '90.00', '10','5', 'imagem', 1, 1),
  (DEFAULT, '1112223334445541', 'Placa-mãe XY', 'Modelo B', 'Placa-mãe antiga', '91.00', '11','6', 'imagem II', 2, 1),
  (DEFAULT, '1112223334445542', 'Placa-mãe AB', 'Modelo C', 'Placa-mãe quase nova', '92.00', '12','7', 'imagem III', 3, 1),
  (DEFAULT, '1112223334445543', 'Placa-mãe CD', 'Modelo D', 'Placa-mãe um pouco antiga', '93.00', '13','8', 'imagem VI', 4, 1),
  (DEFAULT, '1112223334445544', 'Placa-mãe EF', 'Modelo E', 'Placa-mãe muito antiga', '94.00', '14','9', 'imagem V', 5, 1),
  (DEFAULT, '1112223334445545', 'Placa-mãe', 'Modelo A', 'Placa-mãe nova', '90.00', '10','5', 'imagem', 1, 1),
  (DEFAULT, '1112223334445546', 'Placa-mãe XY', 'Modelo B', 'Placa-mãe antiga', '91.00', '11','6', 'imagem II', 2, 1),
  (DEFAULT, '1112223334445547', 'Placa-mãe AB', 'Modelo C', 'Placa-mãe quase nova', '92.00', '12','7', 'imagem III', 3, 1),
  (DEFAULT, '1112223334445548', 'Placa-mãe CD', 'Modelo D', 'Placa-mãe um pouco antiga', '93.00', '13','8', 'imagem VI', 4, 1),
  (DEFAULT, '1112223334445549', 'Placa-mãe EF', 'Modelo E', 'Placa-mãe muito antiga', '94.00', '14','9', 'imagem V', 5, 1);
  

  -- junção das tabelas
  
  SELECT * FROM produto 
	INNER JOIN categoria 
		ON produto.categoria_codigo = categoria.codigo 
	inner join fabricante
		ON produto.fabricante_id = fabricante.id;
  

  -- observação das tabelas
  
  SELECT * FROM fabricante;
  SELECT * FROM categoria;
  

