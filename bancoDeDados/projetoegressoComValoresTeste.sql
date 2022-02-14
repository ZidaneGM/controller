-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2022 às 20:19
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetoegresso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividadeprofissional`
--

CREATE TABLE `atividadeprofissional` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `formacaoProfissional` varchar(25) DEFAULT NULL,
  `atividadeProfissional` tinyint(1) DEFAULT NULL,
  `numEmpregoAP` int(3) DEFAULT NULL,
  `tempoExercicio` int(2) DEFAULT NULL,
  `vinculoEmpregaticioAP` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atividadeprofissional`
--

INSERT INTO `atividadeprofissional` (`id`, `usuario_id`, `formacaoProfissional`, `atividadeProfissional`, `numEmpregoAP`, `tempoExercicio`, `vinculoEmpregaticioAP`) VALUES
(1, 42, 'aa', 0, 2, 2, 0),
(2, 5, NULL, NULL, NULL, NULL, NULL),
(8, 60, NULL, NULL, NULL, NULL, NULL),
(9, 61, NULL, NULL, NULL, NULL, NULL),
(17, 66, NULL, NULL, NULL, NULL, NULL),
(18, 67, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `texto` varchar(500) NOT NULL,
  `idPost` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id`, `usuario_id`, `texto`, `idPost`, `data`) VALUES
(1, 61, 'Gostei bastante da ideia\n', 68, '2021-11-22'),
(2, 61, 'Incrível olha essa foto', 68, '2021-11-22'),
(3, 61, 'Hshshssh', 68, '2021-11-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `commentrelation`
--

CREATE TABLE `commentrelation` (
  `id` int(11) NOT NULL,
  `id_comment` int(11) NOT NULL,
  `id_fotoComment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `commentrelation`
--

INSERT INTO `commentrelation` (`id`, `id_comment`, `id_fotoComment`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `condicaoatual`
--

CREATE TABLE `condicaoatual` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `mobilidadeAcademica` tinyint(1) DEFAULT NULL,
  `numEmpregoCA` int(11) DEFAULT NULL,
  `vinculoEmpregaticioCA` tinyint(1) DEFAULT NULL,
  `mudancaAtividade` tinyint(1) DEFAULT NULL,
  `aumentoSalarial` tinyint(1) DEFAULT NULL,
  `novaFormacao` varchar(25) DEFAULT NULL,
  `instituicaoNova` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `condicaoatual`
--

INSERT INTO `condicaoatual` (`id`, `usuario_id`, `mobilidadeAcademica`, `numEmpregoCA`, `vinculoEmpregaticioCA`, `mudancaAtividade`, `aumentoSalarial`, `novaFormacao`, `instituicaoNova`) VALUES
(1, 42, 1, 2, 0, 0, 0, 'asd', 'asd'),
(2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotocomment`
--

CREATE TABLE `fotocomment` (
  `id` int(11) NOT NULL,
  `nomeImageComment` varchar(50) NOT NULL,
  `pathComment` varchar(70) NOT NULL,
  `tipoComment` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotocomment`
--

INSERT INTO `fotocomment` (`id`, `nomeImageComment`, `pathComment`, `tipoComment`) VALUES
(1, 'commentPhoto1637617508049.jpg', '../../img/commentPhoto/commentPhoto1637617508049.jpg', 'jpg'),
(2, 'commentPhoto1637686636455.jpg', '../../img/commentPhoto/commentPhoto1637686636455.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotopost`
--

CREATE TABLE `fotopost` (
  `id` int(4) NOT NULL,
  `nomeImagePost` varchar(50) NOT NULL,
  `pathPost` varchar(70) NOT NULL,
  `tipoPost` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotopost`
--

INSERT INTO `fotopost` (`id`, `nomeImagePost`, `pathPost`, `tipoPost`) VALUES
(8, 'postagemPicture1633288577901.jpg', '../../img/postagemPhoto/postagemPicture1633288577901.jpg', 'jpg'),
(9, 'postagemPicture1635875205480.jpg', '../../img/postagemPhoto/postagemPicture1635875205480.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotorelacao`
--

CREATE TABLE `fotorelacao` (
  `id` int(4) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_fotoPost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotorelacao`
--

INSERT INTO `fotorelacao` (`id`, `id_post`, `id_fotoPost`) VALUES
(8, 60, 8),
(9, 61, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotousuario`
--

CREATE TABLE `fotousuario` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `nomeImage` varchar(50) NOT NULL,
  `path` varchar(70) NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotousuario`
--

INSERT INTO `fotousuario` (`id`, `usuario_id`, `nomeImage`, `path`, `tipo`) VALUES
(4, 61, 'profilePicture1637164784876.jpg', '../../img/profilePhoto/profilePicture1637164784876.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `identificacaousuario`
--

CREATE TABLE `identificacaousuario` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `idade` int(2) DEFAULT NULL,
  `deficiencia` tinyint(1) DEFAULT NULL,
  `estadoOrigem` varchar(5) DEFAULT NULL,
  `graduacao` varchar(25) DEFAULT NULL,
  `anoConclusaoIU` int(4) DEFAULT NULL,
  `instituicaoGraduacao` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `identificacaousuario`
--

INSERT INTO `identificacaousuario` (`id`, `usuario_id`, `sexo`, `idade`, `deficiencia`, `estadoOrigem`, `graduacao`, `anoConclusaoIU`, `instituicaoGraduacao`) VALUES
(1, 42, 'azul', 24, 0, 'rj', 'hgjhgj', 2020, 'jghgh'),
(2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `nome` varchar(300) NOT NULL,
  `link` varchar(100) NOT NULL,
  `alvo` varchar(7) NOT NULL,
  `ativa` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `notificacao`
--

INSERT INTO `notificacao` (`id`, `usuario_id`, `nome`, `link`, `alvo`, `ativa`, `data`) VALUES
(1, 3, 'teste de notificação mestre', 'www.google.com', 'Mestre', 1, NULL),
(2, 3, 'teste de notificação mestre 2', 'www.google.com', 'Mestre', 1, NULL),
(3, 3, 'teste de notificação doutor ', 'www.google.com', 'Doutor', 1, NULL),
(4, 3, 'teste de notificação doutor 2', 'www.google.com', 'Doutor', 1, NULL),
(7, 3, 'qualqer coisa', 'http://facebook.com', 'Ambos', 1, NULL),
(8, 61, 'Qualquer coisa 2', 'Google.com', 'Ambos', 1, NULL),
(9, 61, 'Ahhshs', 'Google.com', 'Ambos', 1, NULL),
(10, 61, 'Hhhyggfgg.com', 'Gyt.com', 'Mestre', 1, NULL),
(11, 61, 'Ddd', 'Rrg.com', 'Mestre', 1, '2021-12-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacaorelacao`
--

CREATE TABLE `notificacaorelacao` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nova` tinyint(4) NOT NULL,
  `completeProfile` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `notificacaorelacao`
--

INSERT INTO `notificacaorelacao` (`id`, `id_user`, `nova`, `completeProfile`) VALUES
(3, 67, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE `post` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tema` varchar(50) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `texto` varchar(8000) NOT NULL,
  `data` date NOT NULL,
  `favorita` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id`, `usuario_id`, `tema`, `titulo`, `texto`, `data`, `favorita`) VALUES
(1, 10, 'Extensão', 'montes nascetur ridiculus mus', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', '2020-07-12', 0),
(2, 5, 'Outros', 'iaculis congue vivamus metus', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '2021-02-26', 1),
(3, 6, 'Extensão', 'mauris eget massa tempor', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '2020-10-29', 0),
(4, 8, 'Outros', 'at lorem integer', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', '2020-05-29', 1),
(5, 2, 'Saúde única', 'nunc viverra dapibus nulla', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', '2020-06-24', 0),
(6, 1, 'Oportunidade de emprego/estagio', 'morbi ut odio cras', 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '2020-06-22', 0),
(7, 5, 'Interação parasito hospedeiro', 'sit amet cursus id', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', '2020-07-31', 0),
(8, 4, 'Endoparasitos - Controle', 'in quis justo maecenas', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '2020-12-25', 0),
(9, 8, 'Endoparasitos - Controle', 'sed lacus morbi sem', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', '2020-05-08', 0),
(10, 4, 'Outros', 'viverra eget congue', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', '2021-02-11', 1),
(60, 61, 'Outros', 'Testando imagem', 'Funciona imagem', '2021-10-03', 0),
(61, 61, 'Extensão', 'Titulo qualquer', 'Corpo de texto aleatório', '2021-11-02', 0),
(64, 61, 'Saúde única', 'Foi ?', 'Ddd', '2021-11-02', 0),
(68, 61, 'Endoparasitos - Taxonomia/biologia', 'Vagalumes', 'Eddd', '2021-11-20', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postcomentario`
--

CREATE TABLE `postcomentario` (
  `id` int(4) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_comentario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `programacurso`
--

CREATE TABLE `programacurso` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `anoIngresso` int(4) DEFAULT NULL,
  `anoConclusaoPC` int(4) DEFAULT NULL,
  `cota` tinyint(1) DEFAULT NULL,
  `outraFormacao` varchar(25) DEFAULT NULL,
  `instituicaoOutraForma` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `programacurso`
--

INSERT INTO `programacurso` (`id`, `usuario_id`, `anoIngresso`, `anoConclusaoPC`, `cota`, `outraFormacao`, `instituicaoOutraForma`) VALUES
(1, 42, 2015, 2021, 0, 'vbncvb', 'jklj'),
(2, 5, NULL, NULL, NULL, NULL, NULL),
(8, 60, NULL, NULL, NULL, NULL, NULL),
(9, 61, 1999, 1999, 1, 'Psico', 'Unig'),
(14, 66, NULL, NULL, NULL, NULL, NULL),
(15, 67, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacaoposcurso`
--

CREATE TABLE `situacaoposcurso` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `expectativaMobilidade` varchar(50) DEFAULT NULL,
  `expectativaProfissional` varchar(50) DEFAULT NULL,
  `comparacaoProfissional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `situacaoposcurso`
--

INSERT INTO `situacaoposcurso` (`id`, `usuario_id`, `expectativaMobilidade`, `expectativaProfissional`, `comparacaoProfissional`) VALUES
(1, 42, 'gfhf', 'fghfh', 'gfhf'),
(2, 5, NULL, NULL, NULL),
(8, 60, NULL, NULL, NULL),
(9, 61, NULL, NULL, NULL),
(14, 66, NULL, NULL, NULL),
(15, 67, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `temas`
--

INSERT INTO `temas` (`id`, `nome`) VALUES
(2, 'Ectoparasitos - Controle'),
(3, 'Ectoparasitos - Taxonomia/biologia'),
(4, 'Endoparasitos - Controle'),
(5, 'Endoparasitos - Taxonomia/biologia'),
(8, 'Extensão'),
(6, 'Interação parasito hospedeiro'),
(9, 'O PPGCV e você'),
(1, 'Oportunidade de emprego/estagio'),
(10, 'Outros'),
(7, 'Saúde única');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trajetoriaprofissional`
--

CREATE TABLE `trajetoriaprofissional` (
  `id` int(4) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `mudancaPosCurso` varchar(50) DEFAULT NULL,
  `efeitoCurso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trajetoriaprofissional`
--

INSERT INTO `trajetoriaprofissional` (`id`, `usuario_id`, `mudancaPosCurso`, `efeitoCurso`) VALUES
(1, 42, 'hjgh', 'ghjghj'),
(2, 5, NULL, NULL),
(8, 60, NULL, NULL),
(9, 61, NULL, NULL),
(14, 66, NULL, NULL),
(15, 67, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(4) NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `identificacao` varchar(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `moderador` tinyint(1) DEFAULT NULL,
  `newNotification` tinyint(4) NOT NULL,
  `completeProfile` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `nome`, `identificacao`, `email`, `phone`, `moderador`, `newNotification`, `completeProfile`) VALUES
(1, 'vdeavall0', 'Px2SKlVz', 'Vin', 'kphlnuz', 'xchsl@przkhby.com', '57524-0378', 0, 0, 0),
(2, 'ftoppas1', 'mEOBLQwsA9hi', 'Falkner', 'lkqysjl', 'tjhau@qsyaoki.com', '45314-6841', 1, 0, 0),
(3, 'ltiffney2', 'S31mens', 'Lorena', 'flpvxxh', 'wnsvr@gpiajoc.com', '72641-7657', 1, 0, 0),
(4, 'divanchov3', 'frQ886ugcdLA', 'Drona', 'mdhpiva', 'jmrvk@piomnqr.com', '86727-2630', 0, 0, 0),
(5, 'bcavan4', '2hVe9BnBrXm', 'Belinda', 'svwhlmw', 'xgsnr@yhurzwj.com', '93868-6339', 1, 0, 0),
(6, 'erennicks5', '4UTHeEsw4w', 'Eliza', 'xwxhhbu', 'bkqul@otlcbyq.com', '21589-4585', 1, 0, 0),
(7, 'sbuggs6', '4xGG636G', 'Storm', 'qxekgdj', 'sreuc@lzpndys.com', '44024-2486', 1, 0, 0),
(8, 'dpiddlesde', '2aIUH4eboC', 'Danice', 'ivvyqpr', 'bgknp@czglmqx.com', '66560-3738', 1, 0, 0),
(9, 'bjarry8', 'lSPOS8RtH', 'Blanca', 'yokshxg', 'psabn@xaonuit.com', '20719-7289', 0, 0, 0),
(10, 'hkobierzyc', 'MTdGEbAP', 'Hadria', 'otxyupz', 'snpgu@ykndrxz.com', '57377-8889', 0, 0, 0),
(42, '123', '$2b$10$wfDVSd13z3tIq1k3TDuEq.If7hD2/XthC4lAJd/pKZEVO6HUSNzZ.', 'cristian', 'fghfhg', 'gfg@fff', '4145', 0, 0, 1),
(60, 'Gsgshs', '$2b$10$JYUpNITM9F7WicCCEnEI3efBvETii9a8O3xllG1VHP..40nMgc6eC', 'Hdhd', 'Mestre', 'Gs@hs.com', '21987654321', 0, 1, 0),
(61, 'A', '$2b$10$sJmMTiBbhGF.tYlg6dGhYO5tLV.DETxP7jlW1.Ec3kyWSJWvZvC3y', 'Luccas', 'Mestre', 'Ahshs@dhhdd.com', '(21)987654321', 1, 0, 1),
(66, 'Qwe', '$2b$10$sk2.gt9CYbn6J/MOBj7WTOaO8zMFDhW3CIo1E7JSawhL4ODzYTGqi', 'sdad', 'Doutor', 'Chfh@hotmail.com', '(21)987654321', 0, 0, 0),
(67, 'Ydft', '$2b$10$aicnadxST8WzdW21SknhJOWKcwdl3BmoMex12w8IFP6aOzp2zmTsK', 'Dfxcf', 'Mestre', 'Fgggfjfff@hotmail.com', '(21)987654321', 0, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atividadeprofissional`
--
ALTER TABLE `atividadeprofissional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario3` (`usuario_id`);

--
-- Índices para tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario9` (`usuario_id`),
  ADD KEY `fk_postC` (`idPost`);

--
-- Índices para tabela `commentrelation`
--
ALTER TABLE `commentrelation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment` (`id_comment`),
  ADD KEY `fk_fotoComment` (`id_fotoComment`);

--
-- Índices para tabela `condicaoatual`
--
ALTER TABLE `condicaoatual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario5` (`usuario_id`);

--
-- Índices para tabela `fotocomment`
--
ALTER TABLE `fotocomment`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotopost`
--
ALTER TABLE `fotopost`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotorelacao`
--
ALTER TABLE `fotorelacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fotoPost` (`id_fotoPost`),
  ADD KEY `fk_post` (`id_post`);

--
-- Índices para tabela `fotousuario`
--
ALTER TABLE `fotousuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario0` (`usuario_id`);

--
-- Índices para tabela `identificacaousuario`
--
ALTER TABLE `identificacaousuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario1` (`usuario_id`);

--
-- Índices para tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario7` (`usuario_id`);

--
-- Índices para tabela `notificacaorelacao`
--
ALTER TABLE `notificacaorelacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario10` (`id_user`);

--
-- Índices para tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario8` (`usuario_id`),
  ADD KEY `fk_tema` (`tema`);

--
-- Índices para tabela `postcomentario`
--
ALTER TABLE `postcomentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentario` (`id_comentario`),
  ADD KEY `fk_post2` (`id_post`);

--
-- Índices para tabela `programacurso`
--
ALTER TABLE `programacurso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario2` (`usuario_id`);

--
-- Índices para tabela `situacaoposcurso`
--
ALTER TABLE `situacaoposcurso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario4` (`usuario_id`);

--
-- Índices para tabela `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome` (`nome`);

--
-- Índices para tabela `trajetoriaprofissional`
--
ALTER TABLE `trajetoriaprofissional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario6` (`usuario_id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atividadeprofissional`
--
ALTER TABLE `atividadeprofissional`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `commentrelation`
--
ALTER TABLE `commentrelation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `condicaoatual`
--
ALTER TABLE `condicaoatual`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `fotocomment`
--
ALTER TABLE `fotocomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fotopost`
--
ALTER TABLE `fotopost`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `fotorelacao`
--
ALTER TABLE `fotorelacao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotousuario`
--
ALTER TABLE `fotousuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `identificacaousuario`
--
ALTER TABLE `identificacaousuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `notificacaorelacao`
--
ALTER TABLE `notificacaorelacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `postcomentario`
--
ALTER TABLE `postcomentario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `programacurso`
--
ALTER TABLE `programacurso`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `situacaoposcurso`
--
ALTER TABLE `situacaoposcurso`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `trajetoriaprofissional`
--
ALTER TABLE `trajetoriaprofissional`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atividadeprofissional`
--
ALTER TABLE `atividadeprofissional`
  ADD CONSTRAINT `fk_usuario3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_postC` FOREIGN KEY (`idPost`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `fk_usuario9` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `commentrelation`
--
ALTER TABLE `commentrelation`
  ADD CONSTRAINT `fk_comment` FOREIGN KEY (`id_comment`) REFERENCES `comentario` (`id`),
  ADD CONSTRAINT `fk_fotoComment` FOREIGN KEY (`id_fotoComment`) REFERENCES `fotocomment` (`id`);

--
-- Limitadores para a tabela `condicaoatual`
--
ALTER TABLE `condicaoatual`
  ADD CONSTRAINT `fk_usuario5` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `fotorelacao`
--
ALTER TABLE `fotorelacao`
  ADD CONSTRAINT `fk_fotoPost` FOREIGN KEY (`id_fotoPost`) REFERENCES `fotopost` (`id`),
  ADD CONSTRAINT `fk_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`);

--
-- Limitadores para a tabela `fotousuario`
--
ALTER TABLE `fotousuario`
  ADD CONSTRAINT `fk_usuario0` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `identificacaousuario`
--
ALTER TABLE `identificacaousuario`
  ADD CONSTRAINT `fk_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD CONSTRAINT `fk_usuario7` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `notificacaorelacao`
--
ALTER TABLE `notificacaorelacao`
  ADD CONSTRAINT `fk_usuario10` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_usuario8` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `postcomentario`
--
ALTER TABLE `postcomentario`
  ADD CONSTRAINT `fk_comentario` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id`),
  ADD CONSTRAINT `fk_post2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`);

--
-- Limitadores para a tabela `programacurso`
--
ALTER TABLE `programacurso`
  ADD CONSTRAINT `fk_usuario2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `situacaoposcurso`
--
ALTER TABLE `situacaoposcurso`
  ADD CONSTRAINT `fk_usuario4` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `trajetoriaprofissional`
--
ALTER TABLE `trajetoriaprofissional`
  ADD CONSTRAINT `fk_usuario6` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
