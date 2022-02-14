-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2022 às 20:22
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `commentrelation`
--

CREATE TABLE `commentrelation` (
  `id` int(11) NOT NULL,
  `id_comment` int(11) NOT NULL,
  `id_fotoComment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotorelacao`
--

CREATE TABLE `fotorelacao` (
  `id` int(4) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_fotoPost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `commentrelation`
--
ALTER TABLE `commentrelation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `condicaoatual`
--
ALTER TABLE `condicaoatual`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotocomment`
--
ALTER TABLE `fotocomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotopost`
--
ALTER TABLE `fotopost`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotorelacao`
--
ALTER TABLE `fotorelacao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotousuario`
--
ALTER TABLE `fotousuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `identificacaousuario`
--
ALTER TABLE `identificacaousuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notificacaorelacao`
--
ALTER TABLE `notificacaorelacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `postcomentario`
--
ALTER TABLE `postcomentario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `programacurso`
--
ALTER TABLE `programacurso`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `situacaoposcurso`
--
ALTER TABLE `situacaoposcurso`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `trajetoriaprofissional`
--
ALTER TABLE `trajetoriaprofissional`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

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
