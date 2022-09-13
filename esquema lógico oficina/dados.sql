use oficina;
show tables;
select * from veiculos;
desc veiculos;

insert into veiculos values
	(015478, 'ford', 'fiesta'),
    (874569, 'fiat', 'uno'),
    (874236, 'volksvagem', 'gol'),
    (871493, 'renaut', 'clio'),
    (357159, 'toyota', 'corolla');
    
    select * from clientes;
    desc clientes;
    
    insert into clientes values
		(1,'pedro paulo', '154.789.478.23','015478'),
        (2,'marcia ferreira', '489.789.741.57','874569'),
        (3,'godofredo maia', '548.789.689.63', '874236'),
        (4,'juia martins', '984.789.732.02', '871493'),
        (5,'gustavo guanabara', '236.321.478.45', '357159');
        
        
	select * from equipe_mecanica;
    desc equipe_mecanica;
    
    insert into equipe_mecanica values
		(01, 'ricardo moraes'),
		(02, 'joao gomes'),
		(03, 'pedro silva');
        
        
        select * from mecanicos;
        desc mecanicos;
        
        insert into mecanicos values
			(1, 'manoel lopes', 'lanternagem'),
            (2, 'hugo moura', 'lanternagem'),
            (3, 'jorge machado', 'balanceamento'),
            (4, 'luiz paulo', 'balanceamento'),
            (5, 'carlos mendes', 'motor'),
            (6, 'vitor almeida', 'motor');
            
            
	select * from mecanicos_equipe;
    desc mecanicos_equipe;
    
    insert into mecanicos_equipe values
		('1', '1'),
        ('2', '1'),
        ('3', '2'),
        ('4', '2'),
        ('5', '3'),
        ('6', '3');
        
	select * from mao_de_obra_pecas;
    desc mao_de_obra_pecas;
    
    insert into mao_de_obra_pecas values
		(1, '250,00', '150,00'),
		(2, '150,00', '500,00'),
        (3, '300,00', '200,00'),
        (4, '100,00', '350,00'),
        (5, '290,00', '400,00');
        
