-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 09:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(2, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_code` varchar(500) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_code`, `cou_name`, `cou_created`) VALUES
(4, 'BIA06   ', 'GENOMICS AND PROTEOMICS', '2022-09-14 13:28:08'),
(5, 'BIA02    ', 'CELL BIOLOGY                           ', '2022-09-14 14:12:46'),
(6, 'BTA08', 'PLANT BIOTECHNOLOGY ', '2022-09-14 15:43:10'),
(7, 'CEA06', 'FLUID MECHANICS AND MACHINERY', '2022-09-17 15:44:17'),
(8, 'UBA47', 'STATISTICS & LINEAR ALGEBRA', '2022-09-19 11:26:57'),
(9, 'ECA06', 'INTEGRATED CIRCUITS', '2022-09-20 15:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_rnumber` varchar(100) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_code` varchar(50) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_mobile` varchar(50) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_rnumber`, `exmne_fullname`, `exmne_code`, `exmne_course`, `exmne_year_level`, `exmne_email`, `exmne_mobile`, `exmne_password`, `exmne_status`) VALUES
(6, '191920016', 'RAJA PRIYADARSHINI', '5', '5', 'fourth year', '191920016@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(7, '191920017', 'KARTHIK', '5', '5', 'fourth year', '191920017@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(8, '191922010', 'KEERTHANAA', '5', '5', 'fourth year', '191922010@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(9, '191922018', 'SELVAKUMAR', '5', '5', 'fourth year', '191922018@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(10, '191922026', 'D KARUNYA', '5', '5', 'fourth year', '191922026@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(11, '191922038', 'R KIRUBHAHARAN', '5', '5', 'fourth year', '191922038@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(12, '191922044', 'PRAVEEN KUMAR', '5', '5', 'fourth year', '191922044@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(13, '191922049', 'SATHISHWARAN', '5', '5', 'fourth year', '191922049@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(14, '191922055', 'SEETHALAKSHMI', '5', '5', 'fourth year', '191922055@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(15, '191922056', 'TEJASWINI', '5', '5', 'fourth year', '191922056@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(16, '191922058', 'YESHWANTH RAJA', '5', '5', 'fourth year', '191922058@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(17, '192020001', 'ALAN', '5', '5', 'fourth year', '192020001@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(18, '192020006', 'sharmili', '5', '5', 'third year', '192020006@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(19, '192020014', 'VIKRAMADHITHYA', '5', '5', 'third year', '192020014@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(20, '192022058', 'S R', '5', '5', 'third year', '192022058@gmail.com', 'BIA0213 & CELL BIOLOGY WITH CELL SIGNALLING', '12345', 'active'),
(21, '192011111', 'aa', '8', '8', 'first year', '192011111@gmail.com', 'UBA47-1', '12345', 'active'),
(22, '19201112', 'aaaaa', '9', '9', 'fourth year', 'admin@gmail.com', 'ECA0601', '12345', 'active'),
(23, '123', 'qq', '9', '9', 'first year', '123@gmail.com', 'ECA0601', '12345', 'active'),
(24, '11', 'parthipan', '9', '9', 'third year', '11@gmail.com', 'eca0601', '12345', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(1, 1, 2, 4, ' .py ', 'new', '2022-09-12 12:28:43'),
(2, 1, 2, 5, 'Python code is neither compiled nor interpreted', 'new', '2022-09-12 12:28:43'),
(3, 1, 2, 3, 'Machine dependent ', 'new', '2022-09-12 12:28:43'),
(4, 1, 2, 2, 'functional programming ', 'new', '2022-09-12 12:28:43'),
(5, 1, 2, 6, 'None of the mentioned', 'new', '2022-09-12 12:28:44'),
(6, 4, 5, 15, 'a) Nano filtration', 'new', '2022-09-14 03:20:09'),
(7, 4, 5, 16, 'd) Iron', 'new', '2022-09-14 03:20:09'),
(8, 4, 5, 12, 'c) Improve market power of farmers', 'new', '2022-09-14 03:20:09'),
(9, 4, 5, 13, 'a) Sorbet', 'new', '2022-09-14 03:20:09'),
(10, 4, 5, 18, 'd) curd', 'new', '2022-09-14 03:20:09'),
(11, 4, 5, 11, 'c) They’re not important', 'new', '2022-09-14 03:20:09'),
(12, 4, 5, 8, 'All of the mentioned', 'new', '2022-09-14 03:20:09'),
(13, 22, 13, 548, '7.5', 'new', '2022-09-21 06:54:04'),
(14, 23, 13, 638, 'infinity', 'new', '2022-09-22 02:10:20'),
(15, 23, 13, 631, ' +15 V or -15 V ', 'new', '2022-09-22 02:10:20'),
(16, 23, 13, 643, '0.7 V', 'new', '2022-09-22 02:10:20'),
(17, 23, 13, 654, 'Dual Input Unbalanced Output', 'new', '2022-09-22 02:10:20'),
(18, 23, 13, 587, ' 2.6 to 2.8', 'new', '2022-09-22 02:10:20'),
(19, 23, 13, 615, '-2.5', 'new', '2022-09-22 02:10:20'),
(20, 23, 13, 624, 'high pass, 10000 rad per sec', 'new', '2022-09-22 02:10:20'),
(21, 23, 13, 640, 'high input impedance and high output impedance.', 'new', '2022-09-22 02:10:20'),
(22, 23, 13, 613, '43.3 to 45.3', 'new', '2022-09-22 02:10:20'),
(23, 23, 13, 632, ' -4 V', 'new', '2022-09-22 02:10:20'),
(24, 23, 13, 599, '25 dB', 'new', '2022-09-22 02:10:20'),
(25, 23, 13, 619, 'Positive feedback, V = 10 V', 'new', '2022-09-22 02:10:20'),
(26, 23, 13, 636, ' -2mA', 'new', '2022-09-22 02:10:20'),
(27, 23, 13, 649, ' -12 V and +12 V', 'new', '2022-09-22 02:10:20'),
(28, 23, 13, 595, '10 K?', 'new', '2022-09-22 02:10:20'),
(29, 23, 13, 617, '2', 'new', '2022-09-22 02:10:20'),
(30, 23, 13, 647, 'Only statement 1 is correct', 'new', '2022-09-22 02:10:20'),
(31, 23, 13, 580, '10', 'new', '2022-09-22 02:10:20'),
(32, 23, 13, 641, 'The input impedance increases and output impedance decreases', 'new', '2022-09-22 02:10:20'),
(33, 23, 13, 598, '1 by 2', 'new', '2022-09-22 02:10:20'),
(34, 23, 13, 601, 'Ri = 0, A = ?, R0 = 0', 'new', '2022-09-22 02:10:20'),
(35, 23, 13, 618, 'I2 R2 ', 'new', '2022-09-22 02:10:20'),
(36, 23, 13, 584, 'Introduce amplitude stabilization by preventing the op amp from saturating and thus producing sinusoidal oscillation of fixed amplitude. ', 'new', '2022-09-22 02:10:20'),
(37, 23, 13, 644, 'A', 'new', '2022-09-22 02:10:20'),
(38, 23, 13, 635, 'a differentiator', 'new', '2022-09-22 02:10:20'),
(39, 23, 13, 652, 'B', 'new', '2022-09-22 02:10:20'),
(40, 23, 13, 622, '0 V ', 'new', '2022-09-22 02:10:20'),
(41, 23, 13, 646, '5.67', 'new', '2022-09-22 02:10:20'),
(42, 23, 13, 653, 'A', 'new', '2022-09-22 02:10:20'),
(43, 23, 13, 608, 'a unity gain inverting amplifier', 'new', '2022-09-22 02:10:20'),
(44, 24, 13, 640, 'low input impedance and low output impedance.', 'new', '2022-09-22 02:48:49'),
(45, 24, 13, 600, '100/ 70.7 kHz ', 'new', '2022-09-22 02:48:49'),
(46, 24, 13, 590, '3.238', 'new', '2022-09-22 02:48:49'),
(47, 24, 13, 633, '0.03', 'new', '2022-09-22 02:48:49'),
(48, 24, 13, 622, '6.3 V', 'new', '2022-09-22 02:48:49'),
(49, 24, 13, 597, 'low-pass filter', 'new', '2022-09-22 02:48:49'),
(50, 24, 13, 652, 'A', 'new', '2022-09-22 02:48:49'),
(51, 24, 13, 598, '1 by 2', 'new', '2022-09-22 02:48:49'),
(52, 24, 13, 634, '1 V', 'new', '2022-09-22 02:48:49'),
(53, 24, 13, 594, '–(R2IIR3)/R2', 'new', '2022-09-22 02:48:49'),
(54, 24, 13, 583, '1', 'new', '2022-09-22 02:48:49'),
(55, 24, 13, 604, 'square wave', 'new', '2022-09-22 02:48:49'),
(56, 24, 13, 641, 'The input impedance increases and output impedance decreases', 'new', '2022-09-22 02:48:49'),
(57, 24, 13, 589, 'Acm increases', 'new', '2022-09-22 02:48:49'),
(58, 24, 13, 638, '1000', 'new', '2022-09-22 02:48:49'),
(59, 24, 13, 637, '4', 'new', '2022-09-22 02:48:49'),
(60, 24, 13, 650, '3 V and 5 V', 'new', '2022-09-22 02:48:49'),
(61, 24, 13, 614, '413.8 mV', 'new', '2022-09-22 02:48:49'),
(62, 24, 13, 629, '795 mV', 'new', '2022-09-22 02:48:49'),
(63, 24, 13, 630, '-9', 'new', '2022-09-22 02:48:49'),
(64, 24, 13, 643, '0.5 V', 'new', '2022-09-22 02:48:49'),
(65, 24, 13, 609, 'a sinusoid', 'new', '2022-09-22 02:48:49'),
(66, 24, 13, 636, ' -2mA', 'new', '2022-09-22 02:48:49'),
(67, 24, 13, 624, 'high pass, 1000 rad per sec', 'new', '2022-09-22 02:48:49'),
(68, 24, 13, 648, 'Only the frequency', 'new', '2022-09-22 02:48:49'),
(69, 24, 13, 626, '1 V', 'new', '2022-09-22 02:48:49'),
(70, 24, 13, 618, '  -  I2 (R1 + R2 )', 'new', '2022-09-22 02:48:49'),
(71, 24, 13, 599, '25 dB', 'new', '2022-09-22 02:48:49'),
(72, 24, 13, 603, 'Zero', 'new', '2022-09-22 02:48:49'),
(73, 24, 13, 639, 'A half-wave rectified sine wave ', 'new', '2022-09-22 02:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(3, 22, 13, 'used'),
(4, 23, 13, 'used'),
(5, 24, 13, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active',
  `imagepath` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`, `imagepath`) VALUES
(551, 9, 'Which one of the following metabolic processes in mammalian cells does NOT occur in the Mitochondria ………….', 'Citric acid cycle', 'Oxidative phosphorylation', 'Fatty acid ?-oxidation', 'Glycolysis', 'Glycolysis', 'active', 0),
(552, 9, 'If serum is removed from the growth medium of human embryonic kidney cell line (HEK), then the cells will ………', 'proliferate faster', 'proliferate normally', 'undergo cell cycle arrest', 'undergo immediate apoptosis', 'undergo cell cycle arrest', 'active', 0),
(553, 9, 'Which one of the following is an example of a neurotoxin ………', 'Cholera toxin', 'Streptolysin-O', 'Botulinum toxi', 'Diphtheria toxin', 'Botulinum toxi', 'active', 0),
(554, 9, 'Which one of the following is NOT a principal component of innate immunity ………', 'Mucosal epithelia', 'Dendritic cells', 'Complement system', 'Memory B-cells', 'Memory B-cells', 'active', 0),
(555, 9, 'Cell type A secretes molecule X into the culture medium. Cell type B in the same culture responds to the molecule X by expressing protein Y. Which one of the following modes of signaling represents the interaction between A and B ………..', 'Autocrine', 'Juxtacrine', 'Paracrine', 'Intracrine', 'Paracrine', 'active', 0),
(556, 9, 'A single stem cell undergoes 10 asymmetric cell divisions. The number of stem cells at the end is ………..', '1 to 1', '1 to 0', '1 to 4', '1 to 2', '1 to 1', 'active', 0),
(557, 9, 'Mammalian cells in active growth phase were seeded at a density of 1x105 cells/ml. After 72 hours, 1x106 cells/ml were obtained. The population doubling time of the cells in hours is (up to two decimal places) ………', '21.00 to 22.00', ' 23.00 to 26.00', '25.00 to 30.00', '22.00 to 23.00', '21.00 to 22.00', 'active', 0),
(558, 9, 'Which one of the following techniques/tools is NOT used for inserting a foreign gene into a cell …..', 'DNA microarray', 'Electroporation', 'Gene gun', 'Microinjection', 'DNA microarray', 'active', 0),
(559, 9, 'Which of the following cell organelle(s) is/are surrounded by a single phospholipid membrane …….', 'Golgi apparatus / Lysosomes', 'Lysosomes', 'Mitochondria', 'Nucleus', 'Golgi apparatus / Lysosomes', 'active', 0),
(560, 9, 'Which of the following layer(s) is are formed from the inner cell mass of the blastocyst ……', 'Ectoderm/Endoderm/Mesoderm', 'Endoderm', 'Mesoderm', 'Trophectoderm', 'Ectoderm/Endoderm/Mesoderm', 'active', 0),
(561, 9, 'The process by which macromolecules are supplied for lysosomal degradation during nutrient starvation is ……….', 'Apoptosis', 'Autophagy', 'Phagocytosis', 'Pinocytosis', 'Autophagy', 'active', 0),
(562, 9, 'CRISPR-Cas system is associated with ……', 'Adaptive immunity in eukaryotes', 'Adaptive immunity in prokaryotes', 'Innate immunity in eukaryotes', 'Innate immunity in prokaryotes', 'Adaptive immunity in prokaryotes', 'active', 0),
(563, 9, 'The cellular process which utilizes RNA – induced silencing complex to block gene expression is ……..', 'RNA editing', 'RNA interference', 'RNA Polyadenylation', 'RNA splicing', 'RNA interference', 'active', 0),
(564, 9, 'Macrophages eliminate pathogenic bacteria upon activation by …….', 'NK cells', 'Basophils', 'CD4+ T cells', 'Plasma cells ', 'CD4+ T cells', 'active', 0),
(565, 9, 'The genome is diploid at the end of which phases of a human mitotic cell cycle …….', 'G2 & S', 'G1 & M', 'M & S', 'G2 & G2', 'G1 & M', 'active', 0),
(566, 9, 'In a typical mitotic cell division cycle in eukaryotes, M phase occurs immediately after the ……..', 'G0 phase', 'S phase', 'G1 phase', 'G2 phase', 'G2 phase', 'active', 0),
(567, 9, 'Which one of the following is NOT used for the measurement of cell viability in animal cell Culture ………', 'Trypan blue dye exclusion', 'Tetrazolium (MTT) assay', 'LDH activity in the culture medium', 'Coulter counter', 'Coulter counter', 'active', 0),
(568, 9, 'The cytokinetic organelle in plant cell is ……..', 'Centriole', 'Phragmoplast', 'Proplastid', 'Chromoplastid', 'Phragmoplast', 'active', 0),
(569, 9, 'Which of the following eukaryotic cellular components carries out intracellular degradation during autophagy?', 'Nucleus', 'Golgi bodies', 'Ribosomes', 'Lysosomes', 'Lysosomes', 'active', 0),
(570, 9, 'T ay-Sachs disease is a human genetic disorder that is associated with defects in which ONE of the following cellular organelles?', 'Endoplasmic reticulum', 'Mitochondria', 'Golgi apparatus', 'Lysosome', 'Lysosome', 'active', 0),
(571, 9, 'Which ONE of the following is NOT a characteristic of a cancer cell?', 'Increase in cell motility', 'Loss of contact inhibition', 'Decrease in apoptosis', 'Uncontrolled meiosis', 'Uncontrolled meiosis', 'active', 0),
(572, 9, 'Unicellular eukaryotic organisms belong to which one of the following kingdoms of classification ………', 'Monera', 'Plantae', 'Protista', 'Animalia', 'Protista', 'active', 0),
(573, 9, 'The inner mitochondrial membrane comprises of a series of folds known as ……..', 'Cristae', 'Thylakoids', 'Cisterns', 'Cilia', 'Cristae', 'active', 0),
(574, 9, 'Nuclear membrane is absent in ……….', 'Chlamydomonas', 'Nostoc', 'Volvox', 'Chlorella', 'Nostoc', 'active', 0),
(575, 9, 'An organized and differentiated cell having cytoplasm but no nucleus is found in ………', 'Companion cell', 'Xylem parenchyma', 'Sieve tube element', 'Phloem parenchyma', 'Sieve tube element', 'active', 0),
(576, 9, 'A tubelike membrane structure that forms the connection between the endoplasmic reticulum of neighbouring cells through plasmodesmata is ……….', 'Desmotubule', 'Desmosome', 'Dictyosome', 'Microtubule', 'Desmotubule', 'active', 0),
(577, 9, 'Constitutive enzymes are ……….', 'Induced by effector molecules', 'Repressed by repressor', 'Encoded by sequences that occur as part of an operon', 'Always produced in the cell', 'Always produced in the cell', 'active', 0),
(578, 9, 'Which one the following is a function of intermediate filament ………', 'Chromosome movement during the cell division', 'Cytoplasmic streaming', 'Formations of tight junctions', 'Anchorage of the nucleus ', 'Anchorage of the nucleus', 'active', 0),
(579, 9, 'Cellulose serves as a structural polymer whereas starch does not. This is because cellulose contains ………', 'linked glucose monomers and inter-chain hydrogen bonds  ', 'linked glucose monomers and intra-chain hydrogen bonds', 'linked glucose monomers and inter-chain hydrogen bonds', 'linked glucose monomers and intra-chain hydrogen bonds', 'linked glucose monomers and inter-chain hydrogen bonds  ', 'active', 0),
(580, 13, 'ECA06_1.jpg', '2.5', '5', '7.5', '10', '7.5', 'active', 1),
(581, 13, 'ECA06_2.jpg', ' +5 V and -5 V', ' +7 V and -3 V', ' +3 V and -7V', '  +3 V and -3 V', ' +7 V and -3 V', 'active', 1),
(583, 13, 'ECA06_3.jpg', '1', '2', '3', '4', '3', 'active', 1),
(584, 13, 'ECA06_4.jpg', 'Introduce amplitude stabilization by preventing the op amp from saturating and thus producing sinusoidal oscillation of fixed amplitude. ', 'Introduce amplitude stabilization by forcing the opamp to swing between positive and negative saturation and thus producing square wave oscillations of fixed amplitude.', 'Introduce frequency stabilization by forcing the circuit to oscillate at a single frequency.', 'Enable the loop gains to take on a value that produces square wave oscillations', 'Introduce amplitude stabilization by preventing the op amp from saturating and thus producing sinusoidal oscillation of fixed amplitude. ', 'active', 1),
(585, 13, 'ECA06_5.jpg', '1', '2', '3', '4', '1', 'active', 1),
(586, 13, 'ECA06_6.jpg', '10', '11', '12', '13', '12', 'active', 1),
(587, 13, 'ECA06_7.jpg', '2.4 to 2.6', '2.5 to 2.8', ' 2.6 to 2.8', '2.7 to 2.9', '2.7 to 2.9', 'active', 1),
(589, 13, 'ECA06_9.jpg', 'Acm increases', 'common-mode rejection ratio increases ', 'Ad increases', 'common-mode rejection ratio decreases', 'common-mode rejection ratio increases ', 'active', 1),
(590, 13, 'ECA06_8.jpg', '3.138', '3.238', '3.338', '3.438', '3.138', 'active', 1),
(591, 13, 'ECA06_10.jpg', 'A bandpass filter', 'A voltage controlled oscillator', 'An amplitude modulator', 'A monostable multivibrator', 'A monostable multivibrator', 'active', 1),
(592, 13, 'ECA06_11.jpg', '  - 15 V', ' -  0.7 V ', ' + 0.7 V', ' + 15 V', ' -  0.7 V ', 'active', 1),
(593, 13, 'ECA06_12.jpg', 'Low pass filter', 'Band pass filter', 'Band stop filter', 'High pass filter', 'High pass filter', 'active', 1),
(594, 13, 'ECA06_13.jpg', '-R2/R1 ', '-R3/R1', '–(R2IIR3)/R2', '–(R2+R3)/R1', '-R2/R1 ', 'active', 1),
(595, 13, 'ECA06_14.jpg', '30/4 K?', '10 K?', ' 40K?', 'Infinite', '10 K?', 'active', 1),
(596, 13, 'An ideal op-amp is an ideal', 'Voltage controlled current source ', 'Voltage controlled voltage source ', 'Current controlled current source ', 'Current controlled voltage source', 'Voltage controlled voltage source ', 'active', 0),
(597, 13, 'ECA06_16.jpg', 'low-pass filter', 'high-pass filter', 'band-pass filter', 'band-reject filter', 'low-pass filter', 'active', 1),
(598, 13, 'If the input to the ideal comparator shown in the figure is a sinusoidal signal of 8V (peak to peak) without any DC component, then the output of the comparator has a duty cycle of', '1 by 2', '1 by 3', '1 by 6', '1 by 12', '1 by 3', 'active', 0),
(599, 13, 'If the differential voltage gain and the common mode voltage gain of a differential amplifier are 48 dB and 2 dB, respectively, then its common mode rejection ratio is', '23 dB', '25 dB', '46 dB', '50 dB', '46 dB', 'active', 0),
(600, 13, 'A 741-type op-amp has a gain-bandwidth product of 1 MHz. A non-inverting amplifier using this op-amp and having a voltage gain of 20 dB will exhibit a ?3 dB bandwidth of', '50 kHz ', '100 kHz ', '100/ 70.7 kHz ', '1000 /70.7 kHz', '100 kHz ', 'active', 0),
(601, 13, 'The ideal OP AMP has the following characteristics', 'Ri = ?, A = ?, R0 = 0 ', 'Ri = 0, A = ?, R0 = 0', 'Ri = ?, A = ?, R0 = ?', 'Ri = 0, A = ?, R0 = ?', 'Ri = ?, A = ?, R0 = 0 ', 'active', 0),
(602, 13, 'ECA06_22.jpg', ' - 1 V ', '2 V', ' + 1 V ', ' + 15 V', ' + 15 V', 'active', 1),
(603, 13, 'ECA06_23.jpg', 'Zero', '(V1 -  V2 ) sin wt ', '-  (V1 + V2 ) sin wt ', '(V1 + V2 ) sin wt', '(V1 + V2 ) sin wt', 'active', 1),
(604, 13, 'ECA06_24.jpg', 'square wave', 'triangular wave', 'parabolic wave', 'sine wave', 'sine wave', 'active', 1),
(607, 13, 'The first dominant pole encountered in the frequency response of a compensated op-amp is approximately at', '5 Hz', '10 Hz', '1 MHz', '100 MHz', '5 Hz', 'active', 0),
(608, 13, 'The most commonly used amplifier in sample and hold circuits is', 'a unity gain inverting amplifier', 'a unity gain non-inverting amplifier', 'an inverting amplifier with a gain of 10', 'an inverting amplifier with a gain of 100', 'a unity gain non-inverting amplifier', 'active', 0),
(609, 13, 'One input terminal of high gain comparator circuit is connected to ground and a sinusoidal voltage is applied to the other input. The output of comparator will be', 'a sinusoid', 'a full rectified sinusoid', 'a half rectified sinusoid', 'a square wave', 'a square wave', 'active', 0),
(610, 13, 'ECA06_28.jpg', '6 dB', '8 dB', '12 dB', 'None of the above', '6 dB', 'active', 1),
(611, 13, 'ECA06_29.jpg', 'a non-inverting amplifiers', 'an inverting amplifier', 'an oscillator', 'a Schmitt trigger', 'a Schmitt trigger', 'active', 1),
(612, 13, 'ECA06_30.jpg', '30', '31', '32', '33', '33', 'active', 1),
(613, 13, 'ECA06_31.jpg', '43.3 to 45.3', '44.3 to 46.3', '45.3 to 47.3', '46.3 to 48.3', '43.3 to 45.3', 'active', 1),
(614, 13, 'ECA06_32.jpg', '413.8 mV', '423.8 mV', '433.8 mV', '443.8 mV', '413.8 mV', 'active', 1),
(615, 13, 'ECA06_33.jpg', '-1', '-1.5', '-2', '-2.5', '-1', 'active', 1),
(616, 13, 'ECA06_34.jpg', '157.15', '158.15', '159.15', '160.15', '159.15', 'active', 1),
(617, 13, 'ECA06_35.jpg', '1', '2', '3', '4', '1', 'active', 1),
(618, 13, 'ECA06_36.jpg', '  -  I2 (R1 + R2 )', 'I2 R2 ', 'I1 R2', ' – I1 (R1 + R2 ) ', 'I1 R2', 'active', 1),
(619, 13, 'ECA06_37.jpg', 'Positive feedback, V = 10 V', 'Positive feedback, V = 0 V', 'Negative feedback, V = 5 V', 'Negative feedback, V = 2 V', 'Negative feedback, V = 2 V', 'active', 1),
(620, 13, 'ECA06_38.jpg', 'high-pass filter', 'low-pass filter', 'band-pass filter', 'band-reject filter', 'low-pass filter', 'active', 1),
(621, 13, 'ECA06_39.jpg', '-2 V', '-1 V', '-0.5 V', '0.5 V', '-0.5 V', 'active', 1),
(622, 13, 'ECA06_40.jpg', '0 V ', '6.3 V', '9.45 V', '10 V', '10 V', 'active', 1),
(623, 13, 'ECA06_41.jpg', 'Bias current of the inverting input only', 'Bias current of the inverting and non-inverting inputs only', 'Input offset current only ', 'Both the bias currents and the input offset current', 'Input offset current only ', 'active', 1),
(624, 13, 'ECA06_42.jpg', 'high pass, 1000 rad per sec', 'low pass, 1000 rad per sec', 'high pass, 10000 rad per sec', 'low pass, 10000 rad per sec', 'high pass, 10000 rad per sec', 'active', 1),
(625, 13, 'ECA06_43.jpg', ' – Vs by R2', 'Vs by R2', ' – Vs by RL', 'Vs by R1', ' – Vs by R2', 'active', 1),
(626, 13, 'ECA06_44.jpg', '1 V', '6 V', '14 V', '17 V', '6 V', 'active', 1),
(628, 13, 'Three identical amplifiers with each one having a voltage gain of 50, input resistance of 1 kW and output resistance of 250 W are cascaded. The open circuit voltage gain of the combined amplifier is', '49 dB', '51 dB', '98 dB', '102 dB', '98 dB', 'active', 0),
(629, 13, 'An amplifier using an op-amp with a slew-rate SR = 1 V/?sec has a gain of 40 dB. If this amplifier has to faithfully amplify sinusoidal signals from dc to 20 kHz without introducing any slew-rate induced distortion, then the input signal level must not exceed______', '795 mV', '395 mV', '79.5 mV', '39.5 mV', '79.5 mV', 'active', 0),
(630, 13, 'ECA06_47.jpg', '-8', '-9', '-10', '-11', '-9', 'active', 1),
(631, 13, 'ECA06_48.jpg', '0 V ', '5 mV', ' +15 V or -15 V ', ' +50 V or -50 V', ' +15 V or -15 V ', 'active', 1),
(632, 13, 'ECA06_49.jpg', ' -4 V', '6 V', '5 V', ' - 5.5 V', ' - 5.5 V', 'active', 1),
(633, 13, 'ECA06_50.jpg', '0.01', '0.02', '0.03', '0.04', '0.02', 'active', 1),
(634, 13, 'ECA06_51.jpg', 'I mV', '1 V', '±1 V', '0 V', 'I mV', 'active', 1),
(635, 13, 'ECA06_52.jpg', 'a half-wave rectifier', 'a differentiator', 'a logarithmic amplifier', 'an exponential amplifier', 'a logarithmic amplifier', 'active', 1),
(636, 13, 'ECA06_53.jpg', ' -2mA', ' -3mA', ' -4mA', ' -5mA', ' -4mA', 'active', 1),
(637, 13, 'ECA06_54.jpg', '5', '20', '4', '4.5', '4.5', 'active', 1),
(638, 13, 'ECA06_55.jpg', 'infinity', '0', '1000', '1800', '1000', 'active', 1),
(639, 13, 'ECA06_56.jpg', 'A half-wave rectified sine wave ', 'A full-wave rectified sine wave ', 'A triangular wave ', 'A square wave', 'A square wave', 'active', 1),
(640, 13, 'A good trans impedance amplifier has', 'low input impedance and high output impedance.', 'high input impedance and high output impedance.', 'high input impedance and low output impedance.', 'low input impedance and low output impedance.', 'low input impedance and low output impedance.', 'active', 0),
(641, 13, 'ECA06_58.jpg', 'The input impedance increases and output impedance decreases', 'The input impedance increases and output impedance also increases', 'The input impedance decreases and output impedance also decreases', 'The input impedance decreases and output impedance increases', 'The input impedance increases and output impedance decreases', 'active', 1),
(642, 13, 'Negative feedback in an amplifier', 'reduces gain. ', 'increases frequency and phase distortions.', 'reduces bandwidth.', 'increases noise.', 'reduces gain. ', 'active', 0),
(643, 13, 'ECA06_60.jpg', '0.5 V', '0.6 V', '0.7 V', '0.8 V', '0.5 V', 'active', 1),
(644, 13, 'ECA06_61.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(645, 13, 'ECA06_62.jpg', 'Precision integrator', 'Hartley oscillator I', 'Butterworth high pass filter', 'Wien-bridge oscillator', 'Wien-bridge oscillator', 'active', 1),
(646, 13, 'ECA06_63.jpg', '5.67', '6.67', '7.67', '8.67', '5.67', 'active', 1),
(647, 13, '\"Consider the following two statements:  Statement 1: A stable multi-vibrator can be used for generating square wave.  Statement 2: Bi-stable multi-vibrator can be used for storing binary information\"', 'Only statement 1 is correct', 'Only statement 2 is correct', 'Both the statements 1 and 2 are correct ', 'Both the statements 1 and 2 are incorrect', 'Both the statements 1 and 2 are correct ', 'active', 0),
(648, 13, 'ECA06_65.jpg', 'Only the frequency', 'Only the amplitude ', 'Both the amplitude and the frequency', 'Neither the amplitude nor the frequency', 'Only the frequency', 'active', 1),
(649, 13, 'ECA06_66.jpg', ' -12 V and +12 V', '-7.5 and +7.5 V', '-5 V and +5 V ', '0 V and 5 V', '-5 V and +5 V ', 'active', 1),
(650, 13, 'ECA06_67.jpg', '3 V and 5 V', '3 V and 6 V ', '3.6 V and 6 V', '3.6 V and 5 V', '3 V and 6 V ', 'active', 1),
(651, 13, 'An ideal saw-tooth voltage waveform of frequency 500 Hz and amplitude 3 V is generated by charging a capacitor of 2 ?F in every cycle. The charging requires', 'constant voltage source of 3 V for 1 ms', 'constant voltage source of 3 V for 2 ms', 'constant current source of mA for 1 ms', 'constant current source of 3 mA for 2 ms', 'constant current source of 3 mA for 2 ms', 'active', 0),
(652, 13, 'ECA06_69.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(653, 13, 'ECA06_70.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(654, 13, 'If output is measured between two collectors of transistors, then the Differential amplifier with two input signal is said to be configured as', 'Dual Input Balanced Output', 'Dual Input Unbalanced Output', 'Single Input Balanced Output', 'Dual Input Unbalanced Output', 'Dual Input Balanced Output', 'active', 0),
(656, 9, 'capture.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(657, 9, 'capture1.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(658, 9, 'capture2.jpg', 'A', 'B', 'C', 'D', 'A', 'active', 1),
(659, 9, 'first', 'A', 'B', 'C', 'D', 'A', 'active', 0),
(660, 9, 'second', 'A', 'B', 'C', 'D', 'A', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(8, 4, 'GATE-BIA06', '60', 30, 'GATE EXAM', '2022-09-14 13:30:05'),
(9, 5, 'GATE-BIA02', '60', 30, 'GATE EXAM', '2022-09-14 14:13:22'),
(10, 6, 'GATE-BTA08', '60', 30, 'GATE EXAM', '2022-09-14 15:43:48'),
(11, 7, 'GATE-CEA06', '60', 30, 'GATE EXAM', '2022-09-17 15:44:53'),
(12, 8, 'GATE-UBA47', '60', 30, 'GATE EXAM', '2022-09-19 11:27:36'),
(13, 9, 'GATE-ECA06', '60', 30, 'GATE EXAM', '2022-09-20 15:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_acc`
--

CREATE TABLE `faculty_acc` (
  `faculty_id` int(11) NOT NULL,
  `faculty_user` varchar(100) NOT NULL,
  `faculty_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_acc`
--

INSERT INTO `faculty_acc` (`faculty_id`, `faculty_user`, `faculty_password`) VALUES
(1, 'faculty', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `faculty_acc`
--
ALTER TABLE `faculty_acc`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculty_acc`
--
ALTER TABLE `faculty_acc`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
