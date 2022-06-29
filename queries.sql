-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jun-2022 às 17:17
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rgpd-app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `yes` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questions`
--

INSERT INTO `questions` (`id`, `question`, `yes`, `no`, `type`, `text`) VALUES
(1, 'O tratamento dos dados é feito no âmbito de uma atividade situada em território da União Europeia?', 5, 2, 0, NULL),
(2, 'O titular dos dados reside em território da União Europeia?', 3, 4, 0, NULL),
(3, 'As atividades que motivam o tratamento dos dados estão relacionadas com ofertas de bens e serviços (independentemente da necessidade de pagamento) ou controlo de comportamento dentro da União Europeia?', 5, 4, 0, NULL),
(4, 'O responsável pelo tratamento dos dados está situado num lugar onde se aplique o direito de um Estado-Membro da União Europeia por força do direito internacional?', 5, 0, 0, NULL),
(5, 'O tratamento dos dados é necessário para a prestação de um serviço?', 6, 6, 0, 'Autorizo que os meus dados pessoais sejam tratados de acordo com as condições abaixo descritas.'),
(6, 'Introduza o nome do responsável pelo tratamento dos dados, ou do seu representante, juntamente com pelo menos um meio de contacto (email e/ou telefone).', 7, 7, 1, ''),
(7, 'Introduza uma descrição da finalidade do tratamento dos dados. Exemplo: Os dados recolhidos são utilizados para [introduzir finalidade]', 8, 8, 1, 'O responsável pelo tratamento dos dados compromete-se a aplicar as medidas técnicas e organizativas adequadas para assegurar e comprovar que o tratamento é realizado em conformidade com o RGPD, e a rever e atualizar essas medidas consoante as necessidades. O responsável compromete-se também a aplicar as medidas técnicas e organizativas para assegurar um nível de segurança adequado ao risco para os direitos e liberdades do titular dos dados, consoante o apresentado no Artigo 32º do Regulamento. Quando a violação dos dados pessoais for suscetível de implicar um elevado risco para os direitos e liberdades das pessoas singulares, e de acordo com o Artigo 34º do Regulamento, o responsável pelo tratamento compromete-se a comunicar a violação de dados pessoais ao titular dos dados sem demora injustificada.'),
(8, 'É feito o tratamento de dados pessoais que revelem a origem racial ou ética, opiniões políticas, convicções religiosas ou filosóficas ou afiliação sindical, bem como dados genéricos, dados biométricos para identificação inequívoca, dados relativos à saúde ou à vida e orientação sexual de uma pessoa?', 9, 10, 0, NULL),
(9, 'O tratamento destes dados está de acordo com algum dos casos apresentados abaixo: Para cumprimento de obrigações e do exercício de direitos específicos do responsável ou do titular em matéria de legislação laboral;\r\n\r\nPara proteger interesses vitais do titular em caso de incapacidade;Efetuado no âmbito das atividades legítimas e mediante garantias por uma fundação, associação, ou qualquer outro organismo sem fins lucrativos e que prossiga fins políticos, filosóficos, religiosos, ou sindicais;Refere-se a dados manifestamente tornados públicos pelo titular;É necessário à declaração, exercício ou defesa de um direito num processo judicial;É necessário por motivos de interesse público com base no direito de um Estado-Membro;É necessário para efeitos de medicina preventiva ou do trabalho;É necessário por motivos de interesse público no domínio da saúde pública;É necessário para fins de arquivo de interesse público, de investigação científica ou histórica ou para fins estatísticos;Qualquer outro caso apresentado no Artigo 9º do Regulamento.', 10, 10, 0, 'Os dados pessoais são recolhidos em conformidade com o Artigo 9º do Regulamento Geral de Dados.'),
(10, 'Os dados vão ser tratados para efeito de comercialização direta?', 11, 11, 0, 'O titular tem o direito de se opor ao tratamento de dados para efeitos de comercialização direta, incluindo a definição de perfis, de acordo com o Artigo 21º, nº2.'),
(11, 'Os dados vão ser sujeitos a tratamento automatizado?', 12, 12, 0, 'De acordo com o Artigo 22º, o titular dos dados tem o direito de não ficar sujeito a nenhuma decisão tomada exclusivamente com base no tratamento automatizado, incluindo a definição de perfis, que produza efeito na sua esfera jurídica ou que o afete de forma semelhante.'),
(12, 'Os dados pessoais sujeitos a tratamento constam de documentos oficiais na pose de uma autoridade pública ou de um organismo público ou privado para a prossecução de atribuições de interesse público?', 0, 0, 0, 'Os dados pessoais que constem de documentos oficiais na posse de uma autoridade pública ou de um organismo público ou privado para a prossecução de atribuições de interesse público podem ser divulgados pela autoridade ou organismo a fim de conciliar o acesso do público a documentos oficiais com o direito à proteção dos dados pessoais nos termos do presente regulamento.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
