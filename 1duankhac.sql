-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 12, 2021 lúc 07:07 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `1duankhac`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'cumque deleniti', 'cumque-deleniti', '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(2, 'quam temporibus', 'quam-temporibus', '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(3, 'velit voluptatem', 'velit-voluptatem', '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(4, 'corrupti soluta', 'corrupti-soluta', '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(5, 'vel voluptatum', 'vel-voluptatum', '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(6, 'voluptatem numquam', 'voluptatem-numquam', '2021-08-04 22:36:36', '2021-08-04 22:36:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(24, '2021_07_29_154847_create_sessions_table', 1),
(25, '2021_07_30_100953_create_categories_table', 1),
(26, '2021_07_30_101013_create_products_table', 1),
(27, '2021_08_03_181509_create_home_sliders_table', 1),
(28, '2021_08_04_104624_create_orders_table', 1),
(29, '2021_08_04_104648_create_order_items_table', 1),
(30, '2021_08_04_104709_create_shippings_table', 1),
(31, '2021_08_04_104733_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','out_of_stock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'aut magnam', 'aut-magnam', 'Quasi ipsam ut accusantium quis excepturi aut et enim. Et ipsam numquam recusandae doloremque harum. Aut ut recusandae consequuntur cupiditate dolor minima sed.', 'Blanditiis neque facilis reprehenderit laborum. Omnis ullam minus et saepe inventore. Accusamus esse et occaecati sequi autem et quos. Non eum nulla et velit. Itaque impedit pariatur totam quisquam inventore adipisci veritatis dolor. Voluptates rerum ullam et impedit nam quia. Vel non ipsam debitis dolores. Vel nemo labore quis aperiam. Et labore qui assumenda eius at repellat velit. Id ut consequatur doloribus aut exercitationem quibusdam. Dicta eos in repellat dolores.', '199.00', NULL, 'DIGI371', 'instock', 0, 102, 'digital_10.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(2, 'consequatur sit', 'consequatur-sit', 'Nulla sed suscipit deleniti qui at nostrum et. Aut dolor vel et sed nihil commodi. Perspiciatis ut eos vel qui quis dolorem occaecati nam. Eveniet ut provident omnis nihil omnis.', 'Sunt qui voluptatem libero ut. Ut dignissimos voluptatem necessitatibus aperiam sed est. Soluta et molestiae quo voluptas. Libero aut saepe aut rerum. Blanditiis ut debitis excepturi quis ipsam ut adipisci. Nam ad quia non et in qui. Nemo minus asperiores qui blanditiis enim occaecati aut quod. Voluptates possimus eos quia consequatur. Et culpa praesentium eum autem magnam modi. Facilis perferendis vel est dicta.', '424.00', NULL, 'DIGI494', 'instock', 0, 126, 'digital_7.jpg', NULL, 4, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(3, 'ut asperiores', 'ut-asperiores', 'Consectetur sit quo possimus dolorum. Adipisci sed distinctio hic sit. Iusto aut et odit itaque et expedita qui tempore. Ut fugiat est illo suscipit ut.', 'Dolorum dolorem minima velit magni. Debitis corrupti atque est sed a sunt. Et sed sit aut voluptate ad eveniet itaque. Repudiandae veritatis quo et voluptatem fugit atque ipsa. Consectetur iste et sapiente perspiciatis. Sit totam doloremque sit. Et perferendis et dicta ut sit voluptatibus non. Aliquam velit recusandae qui sequi autem itaque numquam. Qui et aut voluptates saepe. Numquam quae quia illum officiis sit. Ipsam aperiam expedita rerum praesentium repudiandae perferendis eaque.', '121.00', NULL, 'DIGI428', 'instock', 0, 176, 'digital_21.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(4, 'dolores velit', 'dolores-velit', 'Dolorem mollitia et voluptatem voluptatem id dolores molestiae. Adipisci nesciunt quo expedita illum. Mollitia facilis debitis hic. Voluptatem ut voluptatem dolorem aut consectetur.', 'Quos nam aut dolores enim minus illum deleniti. Laboriosam at voluptas modi quasi voluptas deleniti unde. Adipisci debitis aut expedita distinctio sit eos. Voluptatem excepturi sed nam. Et aut adipisci dolores illo laboriosam nemo culpa rerum. Nesciunt quia nobis nisi. Ut itaque qui quia dolorem alias. Laborum laudantium aut deserunt consequuntur. Aliquam sunt est id aliquid quis qui.', '407.00', NULL, 'DIGI422', 'instock', 0, 168, 'digital_13.jpg', NULL, 2, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(5, 'soluta dolor', 'soluta-dolor', 'Blanditiis vel sed in ducimus amet ratione ea. Et vel reprehenderit qui voluptatem eos nesciunt. Eos laborum quaerat fugit nesciunt.', 'Est impedit suscipit enim esse laborum quaerat exercitationem quia. Fuga ipsum animi et cum facere numquam. Eligendi rerum corporis eaque id ut quas. Quisquam cumque aut suscipit hic et illo. Sint esse sint commodi sed ut. Qui voluptates beatae voluptas cumque harum. Molestias laboriosam quos consequatur veniam. Non delectus est ea iste. Corporis expedita sapiente qui laborum. Sed molestias non quia sed ut natus.', '163.00', NULL, 'DIGI206', 'instock', 0, 171, 'digital_12.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(6, 'veniam deleniti', 'veniam-deleniti', 'Non aliquid temporibus vitae. Dicta qui hic nesciunt libero voluptatibus. Excepturi officiis odit pariatur tenetur et soluta consectetur. Velit cum quo eum ut odit deserunt ipsam.', 'Asperiores ea sint vel velit. Soluta culpa maiores ut velit quis ex. Sed dignissimos sed quia. Aut corrupti voluptatum inventore. Repellat consequatur modi necessitatibus necessitatibus culpa est quidem. Nisi cupiditate architecto qui asperiores. Dignissimos unde quo aut qui dolores illum. Velit aut est aliquam voluptate aperiam dolor qui. Sed delectus dolor distinctio eius dolor doloribus officia. Dolorum et distinctio vero. Omnis explicabo sint qui nisi voluptates.', '184.00', NULL, 'DIGI349', 'instock', 0, 193, 'digital_11.jpg', NULL, 3, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(7, 'error et', 'error-et', 'Quisquam autem hic voluptas maxime deleniti rerum rerum. Asperiores sed sed nisi rem. Soluta est eligendi deleniti nobis autem. Consequatur molestiae libero itaque atque quidem.', 'Sed voluptas quo voluptatem enim aut autem amet. Omnis molestiae ipsam consequatur ipsa magni vero. Quia voluptatem vero esse delectus. Sapiente ut voluptates dignissimos sint quasi exercitationem autem. Occaecati est saepe assumenda provident atque repellat ut. Beatae ut inventore magni at repellat est commodi.', '433.00', NULL, 'DIGI311', 'instock', 0, 154, 'digital_9.jpg', NULL, 2, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(8, 'qui sed', 'qui-sed', 'Et modi est vel doloremque. Vel velit maiores sint fugiat distinctio. Dolorem ut enim expedita et nihil quo quasi nihil. Labore aut ratione tempora est.', 'Ex doloremque ab in id magni. Ea nisi assumenda quis quia reiciendis numquam voluptatem. Vero eaque sit occaecati accusamus totam nihil maxime dolores. Ex velit iste architecto commodi quis ea consectetur. Praesentium non qui nisi est voluptas. Dolore dolor magni libero totam ut. Odio ea minus et enim. Quidem quasi ea qui sint. Ea non sed iusto. Et dicta deserunt eveniet rerum veniam enim enim optio. Soluta quia illo sit voluptatibus voluptas officia dicta. Amet ipsa ut assumenda est.', '483.00', NULL, 'DIGI131', 'instock', 0, 117, 'digital_6.jpg', NULL, 1, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(9, 'rerum accusantium', 'rerum-accusantium', 'Omnis ut natus ratione et. Reprehenderit nisi culpa non deserunt minus quis veniam ab. In placeat praesentium hic facere quasi id.', 'Provident est id sed aliquam quos sequi animi. Quo voluptatibus libero necessitatibus magni odit. Expedita odio distinctio dolorem cum cumque asperiores. Sed excepturi ipsam nam esse. Hic minus adipisci omnis neque. Excepturi ut aliquam aperiam dolorum rerum corrupti tempore sunt. Magnam quos et expedita voluptates. Perspiciatis natus nihil et iste et.', '417.00', NULL, 'DIGI218', 'instock', 0, 119, 'digital_2.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(10, 'similique sit', 'similique-sit', 'Voluptatem et similique cumque quaerat in. Dolore enim eos harum repellendus est necessitatibus. Vitae provident officiis ut non consequatur.', 'Minus sit voluptatem deleniti perferendis eveniet excepturi alias. Reprehenderit quae nulla sed occaecati nostrum commodi dicta. Dolor numquam beatae iure. Iure adipisci impedit alias. Incidunt voluptatem dolorem unde iste voluptatem ea sed. Voluptatem excepturi tempore sunt ea et sed. Dolorum consequatur quaerat facere dolor rem ad quisquam.', '432.00', NULL, 'DIGI305', 'instock', 0, 108, 'digital_17.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(11, 'quibusdam laudantium', 'quibusdam-laudantium', 'Aut est temporibus dolores doloribus illum repellendus. Eos unde dolores magni inventore et. A quis minus sunt.', 'Dolores dolorum ex ad. Ut officiis soluta libero tenetur soluta nulla nihil. Minus aut voluptas eos voluptas. Sunt aut corporis numquam natus. Dolorem distinctio dolor eius. Velit sed rerum rerum id hic. Placeat repellendus consequuntur ad delectus sint repudiandae quam. Reprehenderit aut iste non impedit tenetur ratione aut odit. Doloremque quos eum quas corrupti doloribus inventore. Aliquid maxime ab enim quasi aut. Aut sapiente officia corrupti accusantium.', '157.00', NULL, 'DIGI454', 'instock', 0, 183, 'digital_16.jpg', NULL, 3, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(12, 'tempore expedita', 'tempore-expedita', 'Non consequatur totam est eveniet dolorum nemo. Dicta voluptatum perspiciatis eveniet ea vel in delectus. Aut odio et dignissimos officiis sapiente aliquid temporibus omnis.', 'Rerum et quam sit aliquid repellendus quos dolorum. Voluptatem pariatur quis modi consequatur quis temporibus voluptatem atque. Facilis quidem cum est tempore qui. Magnam explicabo reprehenderit libero. Quae ipsum eligendi quasi distinctio quod. Nulla tempora magni et corporis perspiciatis vitae esse. Et consectetur distinctio dolor asperiores. Aut corporis et enim rerum et dolore impedit.', '384.00', NULL, 'DIGI488', 'instock', 0, 174, 'digital_22.jpg', NULL, 2, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(13, 'saepe ut', 'saepe-ut', 'Molestias nisi rerum hic eum. Omnis atque ea consequatur et omnis. Quo veritatis aut nisi repellendus dolorem est. Libero amet consequatur velit delectus corrupti sequi voluptatem.', 'Accusantium laborum quod quam quis voluptatem. Laboriosam ipsa molestiae est et consequuntur laudantium velit. Officia quam cumque odio aut delectus officiis unde. Totam maiores repellendus dolore et eos placeat quos facilis. Sint atque dolorum fugiat dignissimos. Voluptate quia in occaecati inventore. Ut incidunt illo tempora nihil explicabo.', '319.00', NULL, 'DIGI139', 'instock', 0, 116, 'digital_19.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(14, 'placeat molestias', 'placeat-molestias', 'Beatae aliquid odit molestias quasi qui doloribus. Omnis eum culpa architecto at.', 'Facilis exercitationem mollitia esse est alias qui. Quia blanditiis facilis nulla voluptatem exercitationem. Tempore aut est est id ipsum blanditiis libero. Inventore architecto nihil soluta minus qui eveniet iusto. Reiciendis aut cupiditate voluptates facere eum ut. Quam qui nihil culpa voluptatum asperiores. Ab dolores aliquam quia porro incidunt. Et et est qui. Aut eos saepe voluptatum dolorem qui. Illo mollitia qui ut et ratione. Earum atque dolor velit doloribus quae et omnis ipsam.', '386.00', NULL, 'DIGI260', 'instock', 0, 109, 'digital_4.jpg', NULL, 5, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(15, 'amet rerum', 'amet-rerum', 'Dolor dolor recusandae sit error iste et pariatur. Voluptatem dolor fuga error vel. Enim omnis sed sit consectetur non velit.', 'Sit eaque nulla accusantium. Rerum numquam adipisci id delectus veniam. Est nostrum minus reprehenderit ex. Alias dolores vitae facere aut debitis. Ipsa autem voluptas praesentium repellendus. Qui suscipit rerum dolorem aspernatur veritatis temporibus. Possimus harum qui corporis alias sit et. Possimus esse est esse dolores amet qui. Ut impedit ut vitae non ut sunt eligendi. Iste autem mollitia velit voluptas aspernatur. Eum sint enim ipsam nostrum voluptatem dolor.', '219.00', NULL, 'DIGI479', 'instock', 0, 141, 'digital_14.jpg', NULL, 4, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(16, 'perferendis in', 'perferendis-in', 'Itaque quaerat dolorem deserunt voluptatem accusamus nam. Eos quod tempora nihil culpa cum minima. Sint ut atque sed rerum reprehenderit.', 'Error dignissimos quae et ipsa nemo. Praesentium corporis excepturi ut iusto. Praesentium exercitationem vero veritatis alias esse eveniet ut ut. Eum sequi incidunt quod et ut. Voluptates porro praesentium est error sunt soluta qui. Nobis rem sed blanditiis aut atque corporis voluptatem pariatur. Consequuntur quae ut quasi sit a dolorem officia. Magni quo saepe temporibus eos. Qui numquam quae eius rerum cumque a cum.', '420.00', NULL, 'DIGI297', 'instock', 0, 144, 'digital_8.jpg', NULL, 3, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(17, 'dolor et', 'dolor-et', 'Suscipit corrupti in consequuntur sed in est nobis. Perspiciatis eveniet consequuntur sunt aut et. Accusantium praesentium ratione ut cumque animi. Blanditiis error qui provident.', 'Magnam perspiciatis distinctio ut consectetur delectus. Sint numquam voluptate et est perspiciatis explicabo dolor. Deserunt aspernatur dolorum consequatur est doloremque voluptatem quaerat sit. Eveniet labore consectetur quidem et nulla tempore unde. Dolor nihil facilis ut labore ea magnam similique sapiente. Et itaque unde quis dolorem at minus. Vero alias ipsa perspiciatis est quod. Non et adipisci culpa voluptatem aut corporis aliquam.', '313.00', NULL, 'DIGI380', 'instock', 0, 151, 'digital_15.jpg', NULL, 2, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(18, 'et nihil', 'et-nihil', 'Reiciendis quia porro quia reprehenderit distinctio. Repudiandae perspiciatis totam enim vero. Iusto iusto consectetur nemo.', 'Voluptas impedit enim saepe amet esse iure. Accusamus itaque ut similique est. Placeat cupiditate dolores voluptates voluptatum accusamus necessitatibus molestias. Eveniet nam quod id optio ducimus consequatur. Omnis beatae esse voluptas perspiciatis natus. Aut nihil quo corporis sint. Distinctio nesciunt quia occaecati. Soluta error sit ut ex. Ea et tenetur natus non quos enim qui. Tempore sed magnam est magnam voluptate. Impedit culpa id harum nam. Vitae autem possimus cumque magnam repellat.', '407.00', NULL, 'DIGI456', 'instock', 0, 173, 'digital_3.jpg', NULL, 4, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(19, 'vel quis', 'vel-quis', 'Dolores quas aliquid enim et quis enim inventore. Rerum alias excepturi nihil inventore aspernatur. Quasi nemo earum voluptatum. Quo error consequuntur temporibus atque inventore.', 'Recusandae eos et omnis. Dicta rerum voluptatum occaecati quibusdam modi. Doloremque eos voluptatibus ipsam praesentium tenetur quos. Libero rerum cum est et. Quaerat distinctio repellat consectetur sapiente. Suscipit exercitationem voluptates quis eius temporibus temporibus. Expedita rerum reiciendis qui sit est beatae. Qui fuga natus ut quae ipsam consectetur. Corporis soluta rerum ea omnis. Temporibus magni culpa quod. Et est voluptatum earum molestiae.', '468.00', NULL, 'DIGI388', 'instock', 0, 127, 'digital_20.jpg', NULL, 2, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(20, 'ducimus numquam', 'ducimus-numquam', 'Molestias veniam aperiam quos assumenda. Quibusdam atque a unde ea eius rem optio quibusdam. Dolores et dolorum velit corporis voluptatum tempore explicabo possimus.', 'Architecto id et recusandae illo. Facilis dolores est amet optio dicta. Consequatur fugiat ut et quibusdam voluptatem voluptas sint assumenda. Ad debitis aut aut. In enim veniam provident voluptatibus. Dolorem optio aspernatur nam qui. Incidunt veniam mollitia quaerat incidunt laboriosam ullam. Illum quisquam nam error consequuntur. Voluptatem quis inventore adipisci rerum. Quas praesentium est adipisci non natus ipsam cumque.', '245.00', NULL, 'DIGI393', 'instock', 0, 175, 'digital_18.jpg', NULL, 1, '2021-08-04 22:36:36', '2021-08-04 22:36:36'),
(21, 'provident quisquam', 'provident-quisquam', 'Eos deserunt inventore architecto dignissimos. Sint necessitatibus doloremque aliquam. Et porro consequatur dolore et consequatur id. Quam a sint enim ut.', 'In autem ab iusto. Unde aut exercitationem quia ea. Amet ad odit harum. In ducimus assumenda cum occaecati deserunt iste ut perferendis. Quae accusantium similique dolores molestiae. Qui culpa consequatur occaecati et sunt non dicta. Cumque nemo similique aperiam omnis commodi. Blanditiis suscipit placeat voluptates aut rerum est et. Excepturi excepturi recusandae alias facere ab. Vitae id vel exercitationem consectetur et dignissimos porro.', '485.00', NULL, 'DIGI272', 'instock', 0, 143, 'digital_5.jpg', NULL, 3, '2021-08-04 22:36:37', '2021-08-04 22:36:37'),
(22, 'rerum nobis', 'rerum-nobis', 'Aut fugit impedit veritatis libero et ratione sed. Nihil omnis est facere perspiciatis. In amet hic sed natus blanditiis.', 'Est repellendus dicta doloremque quo. Non voluptate ipsum rem. Architecto adipisci quae tempore ex et qui exercitationem. Et blanditiis fuga eum sit qui sed. Id quos reiciendis illum porro quia. Est quaerat dolor iusto labore qui. Pariatur necessitatibus ut expedita. Iusto deserunt ducimus itaque sunt magnam. Temporibus explicabo vel quis quam nulla officiis tempore. Incidunt et exercitationem est consectetur est esse at.', '490.00', NULL, 'DIGI495', 'instock', 0, 153, 'digital_1.jpg', NULL, 1, '2021-08-04 22:36:37', '2021-08-04 22:36:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('99Pa1Lhu6blGGJvVC0Ylmbl1uy2Lln0hJYshvyFZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaERyYXNTZEFQSjBMOHk5U09ZNzZUUGV5bzJjZktJSGUwc1ZncnY1QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628294692),
('CVfZJDhnRym11L4Nn7nzJtfzkoxlMjZ1DjRwYy7K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieExZNlhMZGJJV2lFU1l4ejVYOEtJTWlIY3dtTHJ6U2x5VlFqbXBQciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628735597),
('oFLhFpH0T1NSs9gT4iatpZc0a2qT4IuRRgxnTF0g', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib0kyRnNOUFQ1b3NDSVNISDdUV1RWajdyaXBJc2tRdTVrVDF0RDJUMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGVja291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRKOFd3RDNmVWhLdU95WnNucDhGRlZ1Q2MvUEE1cjhvLzN1OUhIQ3h6clpXaGhYUmVIeWdQcSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSjhXd0QzZlVoS3VPeVpzbnA4RkZWdUNjL1BBNXI4by8zdTlISEN4enJaV2hoWFJlSHlnUHEiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjI6e3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoxMDoiYXV0IG1hZ25hbSI7czo1OiJwcmljZSI7ZDoxOTk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO3M6MjoiaWQiO2k6MjtzOjM6InF0eSI7aToyO3M6NDoibmFtZSI7czoxNToiY29uc2VxdWF0dXIgc2l0IjtzOjU6InByaWNlIjtkOjQyNDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1628157993),
('OFOnPxgdWQOT0YEkcBrH5ljWzYjvhKiE3qHDg7nK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHU1Sk1tVGFPR1RVdXQzSm9vZE1rM1ZXbkVFQkpvbGt2cTdaWTZnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628254094),
('v1coHdbD1adus5HfYviVnocNp8JEWbsxaUtDDYxu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ0F4U2ZjRlJ6UkxxdEZkMjljaGRSUU9hTHp0NzdHWWIxVnZVU2p6aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkSjhXd0QzZlVoS3VPeVpzbnA4RkZWdUNjL1BBNXI4by8zdTlISEN4enJaV2hoWFJlSHlnUHEiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjU2NGRkMGFiMzRiNjM4NzhjYTIyMzdjNDdhNjIwY2YyIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiNTY0ZGQwYWIzNGI2Mzg3OGNhMjIzN2M0N2E2MjBjZjIiO3M6MjoiaWQiO2k6MjI7czozOiJxdHkiO2k6MztzOjQ6Im5hbWUiO3M6MTE6InJlcnVtIG5vYmlzIjtzOjU6InByaWNlIjtkOjQ5MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1628253649);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','qpproved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin USR for User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Thúi', 'admin@admin.com', NULL, '$2y$10$J8WwD3fUhKuOyZsnp8FFVuCc/PA5r8o/3u9HHCxzrZWhhXReHygPq', NULL, NULL, 'h15WVAVnrD7dBGvw3wo35qxJkkcINfrfiqF13sC2DtnHKhviPJFumy38skrP', NULL, NULL, 'ADM', '2021-08-04 22:39:32', '2021-08-04 22:39:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
