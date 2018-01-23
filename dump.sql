create database `dp_joins`;

use `dp_joins`;

CREATE TABLE `vendedores` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100) NOT NULL
);

CREATE TABLE `pedidos` (
    `id` INT PRIMARY KEY,
    `produto` VARCHAR(100) NOT NULL,
    `vendedor_id` INT NULL
);

ALTER TABLE `pedidos` ADD CONSTRAINT `fk_vendedor` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedores`(`id`);

INSERT INTO `vendedores` (`id`, `nome`) VALUES
    (1, 'Erik'),
    (2, 'João'),
    (3, 'Pedro'),
    (4, 'Cleber'),
    (5, 'Mario'),
    (6, 'Matheus');

INSERT INTO `pedidos` (`id`, `produto`, `vendedor_id`) VALUES
    (1, 'Notebook', 1),
    (2, 'Televisão 30\"', 2),
    (3, '100 cadernos', 4),
    (4, 'Tablet', 3),
    (5, 'Celular Android', 3),
    (6, 'Celular iOS', 3),
    (7, 'Maquina de lavar', 1),
    (8, 'Churrasqueira', 3),
    (9, 'Interface de áudio', 6),
    (10, 'Microfone Dinâmico', 6),
    (11, 'Teclado Arranjador', null);

# select * from vendedores inner join pedidos on pedidos.vendedor_id=vendedores.id;
