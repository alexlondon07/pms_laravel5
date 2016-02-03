-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2016 at 02:40 PM
-- Server version: 5.5.42
-- PHP Version: 5.5.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pms_laravel5_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `news_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `upload_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_11_012451_create_roles_table', 1),
('2015_10_11_013102_create_users_roles_table', 1),
('2015_10_22_030124_create_news_table', 1),
('2015_10_27_021014_create_attachment_table', 1),
('2016_01_20_193754_create_products_table', 1),
('2016_01_27_195055_create_raw_materials_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_news` text COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` date DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(450) COLLATE utf8_unicode_ci NOT NULL,
  `inspection_points` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inspection` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `classification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `existence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `reference`, `description`, `inspection_points`, `inspection`, `classification`, `existence`, `enable`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 'Frank Rice', '09270', 'Libero minima saepe dolorem aliquam. Provident illum cumque corrupti deserunt voluptas. Quidem ipsa veritatis soluta error. Nam et repudiandae voluptatem aspernatur at explicabo quae.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(52, 'Shayna Breitenberg PhD', '41224', 'Sequi reiciendis qui enim dolor. Voluptas explicabo consequatur cumque qui distinctio accusamus velit cumque. Error veritatis a deserunt est. Ipsam magnam eum qui voluptatem.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, 'Hilma Klocko', '66149', 'Corrupti minima et itaque. Quasi deserunt eaque magni dolore.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, 'Lonzo Gutmann', '36155', 'Quibusdam animi laboriosam amet nobis. Quis et aut exercitationem unde.\nEligendi sequi harum id. Blanditiis optio numquam modi sed eum minus rem sed. Vero corporis est et porro architecto fugit.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, 'Shawna Douglas', '89225', 'Nihil sint odit architecto occaecati eum repellendus. Impedit soluta et porro nemo debitis est magni blanditiis. Ab voluptatem aut blanditiis blanditiis tempore reiciendis.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, 'Mrs. Felicita Hayes Jr.', '03800', 'Minima dolorem est architecto ex. Quidem fuga recusandae aut autem architecto. Facilis suscipit facere quia atque sed deleniti ipsa. Excepturi non et doloremque maiores labore debitis ut.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, 'Bennett Kuhn PhD', '05378', 'Vero dolores ut sit quia laudantium voluptatum. Ut ut sed magnam. Ipsa in asperiores consequatur praesentium quasi. Iure quod veniam eum delectus.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 'Marcia Fritsch', '04563-4262', 'Qui occaecati est et quod aut quis nulla. Vero accusantium ipsum architecto molestias ea. Perferendis velit harum consequatur nulla nemo alias laboriosam. Eum est tenetur sit quos harum at.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, 'Trystan Batz', '50035', 'Eius tempora aut excepturi eaque. Perspiciatis suscipit perferendis aut nihil numquam id. Soluta iure et pariatur fugit odio.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, 'Aliza Donnelly', '51073-2187', 'Sed assumenda non quasi totam. Doloremque ut cupiditate velit voluptas ut sed eos. Itaque voluptatem voluptate laboriosam ut. Est quod officia amet aut.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, 'Orrin Mitchell', '49359-7889', 'Rerum delectus aut perspiciatis iste. Et eos est quaerat ad fuga. Quisquam magnam quos animi quia. Vitae fuga qui iure vero architecto veritatis.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, 'Yazmin Torp', '96771', 'Aut incidunt dolorum fugiat libero rerum ad. Neque reiciendis atque sint vitae dolorum adipisci cumque voluptatum. Ratione impedit cupiditate quo saepe illo et fuga.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, 'Lonzo Jacobi', '63599-9981', 'Magnam ut vitae a incidunt. Nisi inventore quos odit tempora. Nesciunt omnis est et in. Sint ipsam in placeat eius nisi vero dolore et.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, 'Mrs. Lavina Kertzmann', '35472', 'Sed dolores et error voluptatem. Voluptatem est non numquam natus consequatur. Amet quia placeat culpa ad exercitationem.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, 'Jacinthe Gottlieb', '25193', 'Sit ab ipsa dicta quos. Delectus consectetur dolor sequi enim. Est et pariatur fuga sit porro et voluptatem aut. Beatae ea et possimus repellat officiis quis.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, 'Rudolph Toy', '84583-9665', 'Ea ut aliquam asperiores dolorem. Voluptatum ut veniam perspiciatis et maiores porro non. Enim harum officiis doloremque aliquam.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, 'Aleen McClure', '71513', 'Impedit voluptatem voluptatibus facere quam aut culpa. Ut et velit sed autem dolor et exercitationem. Laborum deserunt quis ea est nam ad laudantium. Itaque enim voluptates ut aut.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, 'Filomena Simonis', '17423', 'Minus quo exercitationem vitae. Accusamus ea rerum saepe recusandae maiores. Non architecto sunt aliquam. Soluta nam ab eos ipsa consequatur labore.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, 'Cedrick Murray IV', '79648', 'Quis vero quia id vero. Commodi ut quis et fuga doloremque. Ad aliquam eum eius reiciendis beatae consequuntur suscipit. Culpa provident beatae amet expedita.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, 'Eloise Romaguera', '01832', 'Est recusandae necessitatibus inventore dolorem non qui quisquam dolor. Aut earum totam molestiae non at. Ad quia nobis non et.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(71, 'Alia Tromp', '20692', 'Omnis tenetur sunt et repellendus. Reprehenderit pariatur quia porro quos voluptatem ea totam voluptate. Id quaerat illo in doloremque.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(72, 'Destany Smith DDS', '63772-2040', 'Soluta voluptatem eligendi dolores nesciunt expedita officia aut eius. Libero dolorem quaerat rem atque aliquam quidem ullam. Vitae tenetur natus voluptatum quis qui officiis alias.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, 'Ross Hahn', '58111', 'Id dolore repudiandae est sit. Laboriosam libero dolores nihil ducimus. Libero non suscipit quam ratione odit. Voluptatem repellat tempore dolorum ut ducimus qui.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(74, 'Dr. Orie VonRueden', '65256-0727', 'Deleniti id nisi voluptatem esse minus rerum unde error. Tenetur et rerum modi consectetur. Cum voluptatibus officiis incidunt laborum architecto sint.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, 'Prof. Dwight Adams MD', '10014', 'Voluptatem dolor commodi in nostrum nihil. Fugiat dolor et optio aperiam est ullam voluptatem. Reiciendis nihil provident vero alias placeat laborum velit sint.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, 'Mr. Adriel Morissette', '76314', 'Sed natus voluptatem deleniti rerum perspiciatis. Id esse labore ipsa dolor consectetur. Consequatur officiis et et. Autem nisi omnis autem veniam expedita.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(77, 'Prof. Santina Mraz III', '39683', 'Velit et ex incidunt natus similique. Qui quod veniam ipsum quos. Omnis fugiat est nisi culpa sed.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, 'Asha Leffler IV', '29392', 'Inventore provident rerum sed molestias ipsum optio sunt qui. Nihil magnam saepe corporis recusandae aspernatur. Autem vitae molestias aut.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(79, 'Mr. Garrett Reilly DVM', '46773-6448', 'Est asperiores incidunt quis vitae. Placeat voluptatem impedit consequatur omnis eum. Illum dolores sequi totam deserunt accusamus vitae nemo.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(80, 'Annette Hamill I', '32198', 'Assumenda eum nulla sapiente nemo sed consequatur. Animi aut libero voluptatem esse. Quia libero ut nulla qui enim. Nihil quibusdam adipisci dolores optio ut voluptas.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(81, 'Prof. Chadrick Russel', '59293-1411', 'Aut officiis autem vero recusandae aut. Ut reiciendis sit id quisquam et. Magnam ipsam iusto illo aut. Fugiat non eum accusamus blanditiis dolores non itaque.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(82, 'Dr. Kassandra Langworth', '04918-5239', 'Officia non deserunt exercitationem aut. Dolorem expedita optio exercitationem ullam numquam rem nihil vero. Dolores aut optio laborum eum. Est aut sit possimus inventore debitis aut.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(83, 'Shaina Tromp', '40825-4318', 'Deserunt reiciendis voluptatem et cum in autem. Molestiae adipisci voluptatem et optio deleniti. Similique distinctio quos velit distinctio animi aut odit.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(84, 'Scottie Maggio', '27046', 'Est numquam incidunt molestiae aut odio odio odit. Et odio minima neque blanditiis. Quis tenetur totam harum pariatur quis voluptate porro. Placeat placeat nisi nulla animi eius.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(85, 'Ms. Ruthe Lakin DVM', '51938', 'Recusandae alias voluptatum consequatur et repellendus in dolorem. Temporibus voluptates odio voluptatem iusto. Voluptatum dolore sed et est.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(86, 'Jessica Schumm', '38270-8000', 'Sint ut officiis soluta. Quo iste et voluptatem quos. Non molestiae consectetur nihil doloribus impedit perspiciatis.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(87, 'Aylin Gottlieb MD', '41507', 'Qui et saepe omnis tenetur quae dicta earum. Et hic nobis odio in omnis. Et debitis laudantium ipsam excepturi eaque. Et aut impedit veritatis fugiat commodi.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(88, 'Jaeden Dach', '80257', 'Qui quas culpa corrupti vitae est est cum. Et facilis sed est assumenda quibusdam eum dolor. Ut sint omnis dolore aut ipsa et inventore.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(89, 'Miss Kaia Kessler DVM', '41072', 'Voluptatem eos in qui labore. Alias perspiciatis ut eum iure saepe. Quo ex tempora provident voluptas praesentium tempora et.\nEveniet cum nemo voluptatem voluptatem. Sequi quia et consequatur.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, 'Sarai Hills', '19373', 'Blanditiis laborum atque voluptatem et rerum mollitia. Et quia ut occaecati temporibus et rerum. Qui consequuntur impedit vel et.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, 'Edgar McGlynn Jr.', '70923', 'Ad qui magnam et rerum. Voluptatem fugiat voluptatem est nostrum fugit quia. Et magni quos et. Maxime error dolorem praesentium harum reprehenderit voluptatibus blanditiis fugiat.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, 'Stanton McCullough', '47653', 'Harum aut nemo ut fugit consequuntur voluptas rerum. Eius dolores dolorem exercitationem officiis qui incidunt quod. Soluta et facere tenetur.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(93, 'Mr. Kevin Hermann II', '12788', 'At sed voluptas debitis minima est. Iste dolores placeat earum sequi. Qui officiis qui quos quibusdam. Praesentium dignissimos recusandae cum qui dignissimos.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, 'Denis Anderson IV', '98940-6734', 'Cum voluptatem assumenda maiores ut enim. Ipsum iusto quia sed. Aliquid quia autem modi et quas quia dicta.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, 'Prof. Jade Boyle Jr.', '22259', 'Omnis cupiditate est sit enim. Labore qui impedit laborum rem autem voluptates. Distinctio quaerat iure et quia sint quam.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, 'Glenna Wolf', '47260', 'Illum debitis id magni maxime saepe sint tenetur odit. Earum quis aut eaque et. Omnis placeat voluptates tempore ratione adipisci.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, 'Daisha Heller', '60677', 'Esse rerum consequatur nihil nulla. Quia asperiores qui neque consequuntur ex omnis eius illo.\nNesciunt excepturi quasi dolorem enim repellendus recusandae. Ipsa aut laboriosam et blanditiis.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(98, 'Mr. Anastacio Hamill III', '67843-1089', 'Rerum velit enim est minima natus sunt dolore. Accusamus sequi aspernatur amet est qui reprehenderit labore. Aspernatur est vel sit unde non id et.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(99, 'Maribel Labadie', '62569-8456', 'Autem hic quidem rerum ipsa et veritatis. Quam quisquam sapiente minima qui aliquam aliquam. Minima dolores sit laboriosam rerum iste quo illo nam.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(100, 'Presley Little', '94741-1319', 'Quia illo ea consequatur voluptatem dolorem exercitationem. Repellendus tempora possimus est iste. Id adipisci sapiente laboriosam. Et sit quo quis fugit.', 'ninguno', 'si', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_of_measure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `name`, `reference`, `description`, `type`, `unit_of_measure`, `enable`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Leonie Kozey', 'Lilyan Dach III', 'Autem inventore tempora quia hic. Facilis minus tempora illo ducimus. Sed sapiente id assumenda molestiae qui perferendis. Dolor minus consequatur minus.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Ms. Abbigail Casper', 'Ms. Mona Medhurst PhD', 'Et eum voluptatem ea doloribus iure id. Qui quo qui quia sint consectetur. Aperiam vel et sapiente delectus quaerat maiores. Nisi omnis praesentium qui aut fuga quaerat perspiciatis.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Raoul Mohr', 'Miss Georgette Larkin DDS', 'Quaerat vitae odit sed nemo quia. Aut deleniti ipsam similique doloremque minima. Facere explicabo et quam illo rerum non iure. Molestiae beatae voluptas hic eos corporis ut animi.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'Rolando Auer', 'Prof. Price Johnston II', 'Id vero et veniam commodi aperiam qui soluta. In cum omnis omnis eligendi et temporibus et. Corporis consequuntur consequatur qui non qui fugiat quibusdam.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'Lisa Bechtelar', 'Phoebe Hane', 'Deserunt placeat saepe et et aut. Atque nihil quas est laborum consequatur enim. Voluptatum magnam corrupti fuga non voluptatem. Et enim magni illum enim officia pariatur.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'Sidney Gerhold PhD', 'Tatum Boehm', 'Commodi autem porro voluptatem qui cumque. Possimus et molestiae mollitia occaecati labore. Doloribus hic id harum laborum magni ipsam.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'Cathryn Anderson', 'Prof. Laurence Ritchie II', 'Autem odio hic totam cum in mollitia perspiciatis. Quam voluptatem explicabo ipsum et. Illum eos veniam dolor illum.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'Prof. Randall Kulas', 'Madyson Borer', 'Sunt facere voluptatem dignissimos animi. Ex odit enim aut. Qui eum iste omnis quod officia eaque.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'Allene Simonis PhD', 'Bette Nitzsche', 'Ut in commodi quidem distinctio fugiat quia. Eligendi et aut eius dolores fugiat. Delectus molestiae earum sunt perferendis.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'Dr. Dewayne Gleason', 'Dedrick Becker', 'Et dolorem recusandae hic aperiam quibusdam veniam. Ipsum nihil quam quos ea cupiditate. Eius minus quod autem repellat velit. Optio voluptas quibusdam porro.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'Ofelia Hills', 'Dena McLaughlin', 'Voluptatum autem eius et illum. Adipisci cum est aut harum sed. Consequuntur possimus modi quasi. Maxime nam natus ipsam eveniet voluptatibus qui provident.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'Prof. Delphine Cummings', 'Earl Davis', 'Maiores occaecati quasi maiores laborum commodi modi ut. Et exercitationem impedit ut sapiente aut non maxime. Quisquam dolore quis omnis ut magnam et.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 'Dr. Jeffrey Wolf III', 'Miss Crystal Hodkiewicz', 'Totam quod ut odit eos enim dolor error. Quos at tempore qui accusantium. Consequuntur est perspiciatis rem accusantium non ut. Nisi ab sapiente voluptatem animi sed.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 'Larry Kuhn', 'Miss Thelma Stamm Jr.', 'Aut cum quos tenetur eius. Natus velit sit pariatur enim iusto. Blanditiis porro quae delectus veniam non minus alias. Sint enim non nesciunt alias repellat et consequatur.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 'Cassandre Hansen', 'Kallie Zboncak', 'Ut est et animi. Et expedita a repellendus officiis perferendis porro. Esse et in laudantium vel consequatur voluptatem qui et. Voluptas vel consequuntur quisquam fugit minus dolorem sed.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 'Miss Golda Wisozk Jr.', 'Henderson Fisher Jr.', 'Officiis inventore non quia porro et. Repellendus aut doloribus tempore repellat ea. Aut quod nulla eos molestiae eum est.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 'Mr. Lonny Stamm', 'Kolby Boehm', 'Dolor eaque reiciendis iste voluptates. Maiores cum consequuntur vitae illum porro aspernatur quisquam expedita. Et veniam occaecati recusandae consequatur fugiat.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 'Fredrick Gislason V', 'Ebony Johnston', 'Sapiente voluptatem qui autem aut consequuntur iusto est. Dolor rerum sint est incidunt dolores. Porro quia aut tempore inventore cum sed minima. Vero odit reprehenderit molestiae.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 'Mariane Yost', 'Liza Gottlieb', 'Quo qui quasi assumenda natus minima. Autem cumque et at sequi. Omnis amet similique ut consequatur repellat numquam est asperiores.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 'Danial Marks', 'Polly Streich', 'Dignissimos nihil est quod minus. Sed laboriosam nesciunt non. Cupiditate animi laboriosam veritatis aut explicabo.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 'Kale Maggio', 'Kathlyn Lesch', 'Veritatis ut mollitia atque quod iure similique omnis. Odit atque et et. Ut dolorem quo expedita eum id excepturi. Nam rerum sed ut doloremque.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 'Rupert Grant', 'Mr. Ervin Willms', 'Consequatur quia delectus error qui eius facilis nihil. Magni nemo quia est optio. Et voluptas sunt non quasi necessitatibus.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 'Savion Pfeffer Sr.', 'Kayleigh Tillman DVM', 'Doloremque nihil est placeat iusto in vero. Dolores nisi dolorem modi quas aut aut. Fugiat voluptatibus odit consequuntur non quae et. Fuga suscipit dolorem quia a blanditiis fugiat delectus animi.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 'Ms. Tamia Senger II', 'Oma Prosacco', 'Impedit consequatur ipsum id quo odit tempora accusamus. Quo itaque optio est possimus esse.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 'Dr. Hermann Schoen Jr.', 'Stephan Swaniawski', 'Molestiae odio aperiam atque doloribus. Iure sequi rerum optio. Velit occaecati dolorum et recusandae.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 'Maxime Davis', 'Lisandro Tillman', 'Quis nihil dolores sit ut aliquam ratione iusto nobis. Autem at similique nemo at earum cumque maiores. Qui fugiat aperiam saepe et. Debitis ad itaque enim blanditiis sint.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 'Miss Maggie Bernier MD', 'Hassie McLaughlin', 'Impedit sint facere sed repudiandae perspiciatis illo. Voluptatem labore doloremque earum eos in. Ratione qui aut voluptatibus assumenda.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 'Ezequiel Lind', 'Linnie Greenholt V', 'Sequi at et rerum ad. Non nesciunt corporis id molestiae architecto. Ea accusantium enim ut quaerat et ea. Nihil fuga eaque eum tenetur.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 'Roslyn Schoen', 'Ms. Brenna VonRueden PhD', 'Et laudantium atque eveniet ipsam. Eos rerum excepturi rerum nam vel quia occaecati omnis.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 'Cristian Friesen', 'Madonna Collier', 'Aut alias omnis aut quam aut tempore. Error dolor saepe aspernatur harum pariatur iusto. Et id excepturi quia omnis.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 'Daniella Jerde', 'Richie Conroy', 'Sunt rerum quo reiciendis fugiat debitis. Omnis nihil beatae iste neque tempore incidunt qui. Magnam minus voluptate consectetur natus libero unde.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, 'Dr. Eldred Hamill PhD', 'Levi Kshlerin V', 'Non molestiae aut atque error alias veniam. Rerum numquam aut aspernatur beatae quidem totam. Quis minus consequatur et magnam similique.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, 'Joannie Moen', 'Prof. Alek Koss', 'Ipsum ipsa quidem doloribus. Iste et perspiciatis et eaque. Voluptatum velit earum sit laboriosam.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, 'Clarissa Bins', 'Kathryn Nader Jr.', 'Et autem eos neque eum quis voluptatem eum debitis. Sint eligendi aut est. Fuga natus qui odit mollitia.\nDebitis minima odio nam. Qui quam non quidem ipsum.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 'Dr. Bethany Bradtke V', 'Miss Meaghan Kohler PhD', 'Voluptas tenetur et doloribus omnis reiciendis inventore. Fugiat dolorem numquam est. Nisi non nobis distinctio harum.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, 'Libbie Lang', 'Lowell Klein', 'Beatae quia ea qui. Accusamus eaque voluptatem aut fugit voluptas. Adipisci quod unde illo non.\nQui quasi consequatur qui autem et. Provident aut nihil voluptates nam et.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, 'Kennedi Stracke', 'Myah Hegmann V', 'Architecto excepturi quam quia non iure quod excepturi. Corrupti non sit quia rem. A esse et qui ut est laboriosam.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, 'Mattie Russel', 'Cleta Marquardt', 'Et molestias enim deleniti est ea at earum. Corrupti delectus sint velit necessitatibus quo ut aspernatur. Nihil quo iste nihil quaerat.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 'Marge Ernser Sr.', 'Leola Wehner', 'Dolorem hic iusto quaerat ratione mollitia id. Molestias et at id harum.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, 'Mr. Horace Mraz', 'Prof. Monroe Beatty', 'Illo qui molestiae quia. Sit et at mollitia. Molestiae occaecati qui adipisci autem.\nEt quidem adipisci quod. Sit aliquid corrupti temporibus eos labore. Nam a sed quam.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, 'Avery Purdy', 'Miguel Conn', 'Tempora pariatur ducimus necessitatibus. Alias sint et facere consectetur iure eligendi. Qui architecto hic quasi sit.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, 'Prof. Earnest Wisoky DVM', 'Grayson Wiegand', 'Porro suscipit id magnam sint eum repellendus tenetur harum. Ducimus voluptatem architecto inventore ab quasi quam alias. Aut dolor repellat aut optio delectus et sapiente.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(43, 'Mr. Jarrett Leffler DDS', 'Athena Durgan', 'Delectus maxime ad officiis et laudantium. Maiores nesciunt debitis et. In dolorem optio consequatur molestias nemo aliquam. Dolores ducimus magni ab.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(44, 'Jorge Frami I', 'Wallace King', 'Sint molestias et ex aliquid commodi animi. Et veniam cum accusantium eligendi. Aut sunt qui fugiat necessitatibus.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(45, 'Mr. Easton Roberts II', 'Winston Frami', 'Rem perferendis velit et deleniti. Adipisci autem molestiae iusto distinctio nostrum. Quis excepturi sit ut eveniet.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(46, 'Lew Simonis Sr.', 'Andreane Koepp', 'Nihil consequatur veniam perferendis rem deleniti et omnis. Voluptatem explicabo nostrum ipsa quia. Molestiae nobis vel nulla ut tempore consequuntur.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(47, 'Aracely Wintheiser', 'Nathanael Hauck', 'Ipsa veniam quod nihil qui animi eos. Error officiis nisi ipsa.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(48, 'Mr. Elliott Paucek', 'Angel Hermann', 'Velit earum voluptatem et eveniet rerum quasi libero. Vel ut consequatur ut veniam laudantium. Exercitationem unde ea quas commodi culpa. Rem ut error nostrum aspernatur ut.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(49, 'Verlie Brown', 'Michelle Cummerata', 'Ut qui corporis labore quae debitis architecto. Eligendi veritatis architecto dolorum. Laborum id hic doloremque tenetur.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(50, 'Prof. Elisa Skiles DVM', 'Toni Schowalter', 'Alias autem illum eligendi. Aut voluptate esse ducimus ea.', '', '', 'si', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `enable` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `document`, `email`, `position`, `password`, `profile`, `enable`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(52, 'Alexander Londono', '', 'admin@admin.com', '', '$2y$10$4ICNJntqPFwpPhFPSavvh.dl70p.S4UQjrVQKQQuP0Tuof5Ff9aey', 'super_admin', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, 'Rath', '', 'wilhelmine99@ebert.com', '', '$2y$10$.LVbNZhIIdHnHwjvHQ9dIORxR553jyVATWLs/CxplUeZuuUCleXE6', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, 'Ebert', '', 'kutch.hank@gmail.com', '', '$2y$10$sKAutuig3HhLgOpr0PFo5eB0Gf6rQyuCtsiCPT9MuZte2b7BXYcUK', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, 'Macejkovic', '', 'jkerluke@miller.com', '', '$2y$10$oP7n2rFLj4bimc3Yss2HLOOT44AwuzAi.iMeeDKswW40qFiNke0Qy', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, 'Steuber', '', 'earmstrong@medhurst.info', '', '$2y$10$HauNQ.P5Q91xxxi5kUzm9e2IYYSS/TIm5Oo637n2C11iKERQNF3.6', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, 'Schultz', '', 'sarina20@beatty.biz', '', '$2y$10$lp1beWXGgYGX3GV2NGrFWuNl.PNlS2hwCa1F2KgLLIcwhU8U00Ghy', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 'Roberts', '', 'liana.kris@yahoo.com', '', '$2y$10$6qMyJIuTArDI7WrJFiiK2e9UnQXwzyPiSDBEtBWQqgT/IW1XSVO8W', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, 'Larson', '', 'sporer.mittie@yahoo.com', '', '$2y$10$8A9TcXG3b/qTAZmn8jV7B.plZ2Wv5duB8VVRgTlN9nW3SvGtFWvU2', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, 'Mills', '', 'uconsidine@gmail.com', '', '$2y$10$dFxwXJ9uTUb8edZFQHV9xum1wYMHm9KxW4JNSMqVlCDfJ3Go38nV2', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, 'Kertzmann', '', 'marcelle.durgan@windler.com', '', '$2y$10$DEHXVq5l7wZx3GUNwwqxWeLQfTd2ayvjAklVSUK3GzLBWzNn86av6', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, 'Legros', '', 'dkerluke@vandervort.net', '', '$2y$10$DLPMqR4jt1J5IH9FVKoe1u9tWcqrOsodanHxLovRfXaxWBSVWH5tO', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, 'Bergnaum', '', 'rubye73@yahoo.com', '', '$2y$10$IW8bI5b/BpRV8OQwgBLzVOw/PCcxBuOB5CyxJTp2DL/EtB4e0LYFS', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, 'Lang', '', 'mpfannerstill@towne.com', '', '$2y$10$oD7Sr1CuNlvJUxMdEDFTmeEnqmHOkYC8jPaUAHXKnnpNZG3NxSXpm', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, 'Hackett', '', 'mosciski.jordan@gmail.com', '', '$2y$10$htVf6E/z4ImMSdy1/4Fq1uTWUJirmmomGvirNj/tE6vMp3PvhFzhO', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, 'Veum', '', 'thiel.norberto@predovic.org', '', '$2y$10$mbrD0D8tknZYCMdhfsCIM.UXLKM81jphJT589607A9Pp5.puAy8tu', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, 'Auer', '', 'rogahn.laron@greenholt.com', '', '$2y$10$qLD5warMTzt2EA97IRAkgOBQGv8tSAm9zmmmbdh20KRRXjlcmIhha', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, 'Douglas', '', 'maxime.schowalter@yahoo.com', '', '$2y$10$MW4GR4Cb986km0.9sBWeiufLMhwNWhGfCfcCB3t5jyLedGzM4b6iK', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, 'Metz', '', 'uabbott@yahoo.com', '', '$2y$10$lddGtRoMbWVzQwKxWWdIL.3lIWpS2T6W/9YKoPq1XvKSkcI5GQg0e', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, 'Hills', '', 'murray.gustave@cummerata.com', '', '$2y$10$XtlpvyL7UpRi/frNbvtFNebrhchT.rf.5Q1PjtDlGoVGqJE4yFiXy', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(71, 'Hettinger', '', 'rebeka73@barton.com', '', '$2y$10$FNEadaBc4i8bU2wz0HVEqOrO9pPO6RSfASTKbJ0kMpket3qJIqlEe', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(72, 'O''Keefe', '', 'okon.brooks@davis.net', '', '$2y$10$RmvV2rQAsvXd4nGsMQZone9aFeb6.FROLB8/0w30wTTFOgtmkUt8m', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, 'Murphy', '', 'zfisher@hudson.info', '', '$2y$10$kUjgqdvT.Cywc0tjXflTKON3EosZvUh/i6LB5ERsMzVEYen2OAOki', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(74, 'Mosciski', '', 'welch.delilah@macejkovic.biz', '', '$2y$10$hQBkKPlaTU0kTultlt/DJOUyQXmkJ/jZ.WwcK1qvlFmNFeZT1nm.G', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, 'Romaguera', '', 'kuphal.idella@hotmail.com', '', '$2y$10$L59PSy65QWsIqfmg1aMgXuDoB/okMWfs0DxzLVqaiIsaZCsdhF4VC', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, 'Jerde', '', 'elmore26@larson.com', '', '$2y$10$LnEHr24NgOKokxYkWjVAfuLKWzhZi15egwgAB6k2JM93doXYtS6HG', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(77, 'Wiegand', '', 'sydni.morar@kreiger.com', '', '$2y$10$HD4/XwWoVYFdYXmxSnCerOIoXfcI4dJEJllkSsflrJL79VQKjGU6W', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, 'Jenkins', '', 'perry43@yahoo.com', '', '$2y$10$GDVXPAQHqlTnWlHfiL0SqONe8dV8WDU3ukxVHEN3xg73gFNKrX92O', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(79, 'Feest', '', 'shad.brown@schowalter.biz', '', '$2y$10$RAeAy3HG.W5t/NaQS8SNkOOHdALDT2wed8Ouc9bGRHPK/bUMlQ4R2', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(80, 'McLaughlin', '', 'angelica.rau@cassin.com', '', '$2y$10$jWf2u6FJ13LHhT8yxwzJguf9emYJVW7/A3YrnA5eBiDrjGTDr1T32', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(81, 'Kshlerin', '', 'nfranecki@stark.biz', '', '$2y$10$mWABUtgd.spZLN/2od2AOe.RvxhHSkl2u9o/n2G7OjBEiJiDbNz/y', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(82, 'Brekke', '', 'warren.metz@yahoo.com', '', '$2y$10$DitOj9U8kH8RWjjnnG6GxuHBuJZA0tFjrXcvNZUA5JZLjqdJcWTXW', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(83, 'Ritchie', '', 'lowell86@mertz.biz', '', '$2y$10$bStmuP0AdxdL7a9tvbpsTOdICr9eGMhylYMUAA.Sc0.2JUuBGmEVS', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(84, 'Schmidt', '', 'gerlach.shanelle@gmail.com', '', '$2y$10$vdk5B8dh13/A94qIKmmc9OcLFKy347LsDuIkZkE7fbiiMPSexRsiS', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(85, 'Kovacek', '', 'mikel19@torphy.com', '', '$2y$10$aQaDXVRjUSTWlpQk6iGrmeEPLaWICEHdMLOEiZDN2jpfFnKU3ygwG', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(86, 'Spinka', '', 'jaskolski.jaunita@orn.info', '', '$2y$10$Bjp5oGLdK/ahBh4tjHE8o.TUwixMg3vR0o5p2hrCAY8/8qHU4.64u', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(87, 'Ritchie', '', 'rnikolaus@stiedemann.com', '', '$2y$10$Ui8OolKTKdWmevahIOmLme.RVF9T9qPre9/EvmcAjjL487BfPtBne', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(88, 'Keebler', '', 'qkilback@yahoo.com', '', '$2y$10$/tdp0f6s.UodK3YKpVG6zOfGYRbNxa/kqq9j5SGB.G.rAHSZkkcDG', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(89, 'Runte', '', 'amara.schultz@yahoo.com', '', '$2y$10$4msONMh9AqMUkgIjryM0suZSrNm4wjWvy6XBIgddnLCHOHmTDB7Au', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, 'Swaniawski', '', 'sonny.cummings@fahey.com', '', '$2y$10$3CCZKKAgQ0Moq651k7k35u44A72jGlYhGhJGvuT21XduJSyG7m8Om', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, 'Fisher', '', 'zfriesen@yahoo.com', '', '$2y$10$Bsw3K6xZWg/0d8zJ4bo4V.2.4IjIYWYeNMgiOQ.ep9qnNyeDEhJG2', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, 'Osinski', '', 'boyer.deondre@yahoo.com', '', '$2y$10$QS5haaTjr0QOcm.zFyzcKuNuBKgmKUCU2OS.Boud/Ea618uVG4e4O', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(93, 'Bahringer', '', 'douglas01@gmail.com', '', '$2y$10$maESPnxRmzm/eErgDM4cCuLotmIy0Uo/nrm0N2yqXwVrSPYQ/OAOe', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, 'Shields', '', 'thalia32@hotmail.com', '', '$2y$10$5xVSGSXeIBH4dkrFwWzEu.OfK7MhvoczrVVmbSEeXyuo9QI8kyE4.', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, 'Jakubowski', '', 'ikuhlman@ferry.biz', '', '$2y$10$QYlRY44phfV9Lbdv4mkDl.hGznxr5GBBX08gQEfJInBLIPTEFDcZG', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, 'Dickens', '', 'zfadel@gmail.com', '', '$2y$10$cF4XPbp0eWyWR2YF/AYoNePXR8BU29.pau39SLHYj62IaSAwhDdWq', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, 'Daugherty', '', 'ubrakus@dach.net', '', '$2y$10$SfgfSDnoNqp3bSG2A2oqdOb.bjSt2VaWSHVd0VnAgldk0Iege90nS', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(98, 'Morar', '', 'sheldon41@pacocha.biz', '', '$2y$10$6kusVBU7WcX.g4DeoNtixeG7/KZi17Kl0Sx5P/DNOWhddiolpUg8.', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(99, 'Bode', '', 'jedidiah36@carroll.info', '', '$2y$10$NqJSO2K6R/Zpi20pyYmhrOG6/66JWQJn1PQMhm.EEvS8H/IjckScS', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(100, 'Moore', '', 'zula26@marks.biz', '', '$2y$10$LNdw0MEavYopzv6YolOeAOufDYpvlBi84qSFAmFnmNqepN0cG5HeK', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(101, 'Greenholt', '', 'spencer.lauretta@gmail.com', '', '$2y$10$sRr53pMbI5NSjZykac5AEu2ONce/fIX1gNTYd3db1Grjpfp2fpdcO', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, 'Ritchie', '', 'wintheiser.jammie@gmail.com', '', '$2y$10$ZjwBroPtyz/DLLrHpPdtFeYasREz4AcdC5J6eQuScHjJqEuykr7vW', 'usuario', 'si', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `roles_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_users_id_foreign` (`users_id`),
  ADD KEY `users_roles_roles_id_foreign` (`roles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_roles_id_foreign` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
