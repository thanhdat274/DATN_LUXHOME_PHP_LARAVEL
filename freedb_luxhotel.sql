-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2024 at 06:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedb_luxhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
('4830e7f2-aa4f-45ff-bb60-5d72d803a49b', 'Tivi', '2024-12-16 17:10:24', '2024-12-16 17:10:24', NULL),
('5e0cea6a-c3de-4112-b579-ec3b358fafe6', 'Điều hòa không khí', '2024-12-08 15:41:43', '2024-12-08 15:41:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
('9db297e9-824b-460f-88e8-101a4dbf325d', 'banners/AWz9POORvCEPGVicPylWbjJ3PxYRG45bPJNEV79E.jpg', 1, '2024-12-11 07:56:24', '2024-12-11 07:56:24'),
('9db297f8-6d4c-45db-aa72-27799cdef306', 'banners/U5Guv6DsjxImA8SzdPqjLbLl94Tsk5ZCAK5n67BN.jpg', 1, '2024-12-11 07:56:33', '2024-12-11 07:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `booking_services`
--

CREATE TABLE `booking_services` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `booking_services`
--

INSERT INTO `booking_services` (`id`, `order_id`, `room_id`, `service_id`, `quantity`, `price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('376a601a-2c01-474c-b6ee-98dd782c53e7', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', '1455f123-7a1b-4baa-b28e-1b98f5886956', '9dad241d-7bd0-49e2-ba01-f26869f0c37a', 1, 80000, 2, '2024-12-16 14:58:00', '2024-12-16 15:00:44', NULL),
('3dfd0c50-109c-44b7-8076-543932efc90d', 'a2d77782-6cad-44e1-9778-f00fbb07b2a7', '3aecf66c-f53a-414e-9177-03b88ee55a72', '9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 1, 50000, 1, '2024-12-18 17:06:01', '2024-12-18 17:06:01', NULL),
('3f4cd343-e9ac-4e2b-baf7-7fd7ae0ae3a4', '8162cc49-4414-47e6-9408-dc7b9435df37', '124ec569-b36e-4734-af3f-2a9c9ec959f9', '9dad245d-1fec-4b25-b6ff-c91c58dc2386', NULL, 200000, 2, NULL, NULL, NULL),
('51c5001c-caf8-4132-9cd5-0f609a5db541', '82da1298-d29a-4c61-9fd4-b7387912293d', '0e74b0bb-b3e8-4b09-88cb-d2a36ca0567d', '9dad241d-7bd0-49e2-ba01-f26869f0c37a', 1, 80000, 2, '2024-12-16 15:04:33', '2024-12-16 15:04:57', NULL),
('795f712a-6675-4e21-9798-092c726c334f', '8162cc49-4414-47e6-9408-dc7b9435df37', '124ec569-b36e-4734-af3f-2a9c9ec959f9', '9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 1, 50000, 2, '2024-12-15 16:17:40', '2024-12-15 16:18:17', NULL),
('7f1df58c-4921-439c-bddb-5b5034bddf23', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', '1455f123-7a1b-4baa-b28e-1b98f5886956', '9dad23fb-e22d-4eac-8315-62f7ef16ce4e', 1, 50000, 2, '2024-12-16 14:58:00', '2024-12-16 15:00:44', NULL),
('880199cd-4955-4949-9117-d2067d27f05b', 'b89af90f-da09-4328-881d-c33856845500', '30e49371-a6b3-4086-baef-167c33900a4e', '9dbd480d-e9ac-49a2-bdad-976765c3feb7', 1, 500000, 2, '2024-12-19 05:15:01', '2024-12-19 05:15:28', NULL),
('972ae6f0-06cb-4964-84b5-e72b4cd8e95c', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', '2e5e671c-f44b-4dd7-bd6e-608bfd85b600', '9dad23fb-e22d-4eac-8315-62f7ef16ce4e', 1, 50000, 2, '2024-12-16 14:58:00', '2024-12-16 15:00:44', NULL),
('980d1790-f907-42a7-8d26-335c1beaf341', '82da1298-d29a-4c61-9fd4-b7387912293d', '3755b6ec-9793-40bb-a750-981b718c7c3b', '9dad241d-7bd0-49e2-ba01-f26869f0c37a', 1, 80000, 2, '2024-12-16 15:04:33', '2024-12-16 15:04:57', NULL),
('9b323098-5a9d-46cb-a808-704f7888e9d1', '54b97b60-7bfc-43d2-b484-7415f4f0e0e9', '3aecf66c-f53a-414e-9177-03b88ee55a72', '9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 1, 50000, 2, '2024-12-18 17:07:51', '2024-12-18 17:08:15', NULL),
('b1b317b9-d80c-43ef-be1b-ee11394b48cd', '82da1298-d29a-4c61-9fd4-b7387912293d', '3755b6ec-9793-40bb-a750-981b718c7c3b', '9dad245d-1fec-4b25-b6ff-c91c58dc2386', 1, 200000, 2, '2024-12-16 15:04:33', '2024-12-16 15:04:57', NULL),
('b97d2245-1908-4bb0-b562-9d97a4f492ed', '8162cc49-4414-47e6-9408-dc7b9435df37', '124ec569-b36e-4734-af3f-2a9c9ec959f9', '9dad241d-7bd0-49e2-ba01-f26869f0c37a', NULL, 80000, 1, NULL, NULL, NULL),
('cc8cb8ec-d81d-4f33-add6-1c6357c50596', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', '3e1dc98b-0ca3-4166-b8c4-21d4115605d0', '9dad2447-81a5-449f-b9d0-aeb527f28fd9', NULL, 0, 2, NULL, NULL, NULL),
('d3416980-393e-4854-b0b6-13d9b8be7c68', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', '3e1dc98b-0ca3-4166-b8c4-21d4115605d0', '9dad245d-1fec-4b25-b6ff-c91c58dc2386', NULL, 200000, 2, NULL, NULL, NULL),
('d393abc9-4ed4-4d74-af70-54c73124f270', '82da1298-d29a-4c61-9fd4-b7387912293d', '0e74b0bb-b3e8-4b09-88cb-d2a36ca0567d', '9dad245d-1fec-4b25-b6ff-c91c58dc2386', 1, 200000, 2, '2024-12-16 15:04:33', '2024-12-16 15:04:57', NULL),
('e5c65c56-a7da-4356-a666-8a4afb83685b', '54b97b60-7bfc-43d2-b484-7415f4f0e0e9', '124ec569-b36e-4734-af3f-2a9c9ec959f9', '9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 1, 50000, 2, '2024-12-18 17:07:51', '2024-12-18 17:08:15', NULL),
('e85854fa-128a-47df-ae97-39192b562b5d', 'a2d77782-6cad-44e1-9778-f00fbb07b2a7', '124ec569-b36e-4734-af3f-2a9c9ec959f9', '9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 1, 50000, 1, '2024-12-18 17:06:01', '2024-12-18 17:06:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalogue_rooms`
--

CREATE TABLE `catalogue_rooms` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `price_hour` double NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_room_booked` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `number_child` int DEFAULT NULL,
  `acreage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_adult` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `catalogue_rooms`
--

INSERT INTO `catalogue_rooms` (`id`, `hotel_id`, `name`, `price`, `price_hour`, `description`, `thumbnail`, `total_room_booked`, `status`, `number_child`, `acreage`, `number_adult`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0067ed50-9594-4d8a-8606-7256eb97710c', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'Phòng Tiêu Chuẩn Giường Đôi', 3000000, 0, '<p>Ph&ograve;ng giường đ&ocirc;i n&agrave;y c&oacute; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, ph&ograve;ng tắm ri&ecirc;ng với g&oacute;c tắm v&ograve;i sen mở, chậu rửa vệ sinh (bidet) v&agrave; m&aacute;y sấy t&oacute;c. Ph&ograve;ng giường đ&ocirc;i lắp m&aacute;y lạnh n&agrave;y c&oacute; TV m&agrave;n h&igrave;nh phẳng với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, tường c&aacute;ch &acirc;m, tủ quần &aacute;o, ấm đun nước điện cũng như tầm nh&igrave;n ra quang cảnh th&agrave;nh phố. Căn hộ c&oacute; 1 giường.</p>', 'catalogerooms/CtRgzUxCm5X5jM4xzlI4vpEcm4IYsBzlaLmZr52p.jpg', 0, 1, 2, '31.2', 2, '2024-12-17 15:37:17', '2024-12-18 16:01:50', NULL),
('47231d1b-ed88-441f-b12c-2c811879c614', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'Studio Deluxe', 2070000, 0, '<p>Studio n&agrave;y c&oacute; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute; v&agrave; &aacute;o cho&agrave;ng tắm, ph&ograve;ng tắm chung với g&oacute;c tắm v&ograve;i sen mở, bồn tắm v&agrave; chậu rửa vệ sinh (bidet). Trong bếp nhỏ, du kh&aacute;ch sẽ t&igrave;m thấy bếp nấu, tủ lạnh, đồ d&ugrave;ng nh&agrave; bếp v&agrave; l&ograve; vi s&oacute;ng. Studio m&aacute;y lạnh n&agrave;y c&oacute; TV m&agrave;n h&igrave;nh phẳng với dịch vụ ph&aacute;t trực tuyến, tường c&aacute;ch &acirc;m, minibar, khu vực tiếp kh&aacute;ch cũng như tầm nh&igrave;n ra quang cảnh th&agrave;nh phố. Căn hộ c&oacute; 1 giường.</p>', 'catalogerooms/D4CB02N5TS4XtHRIds74kcHkeJZvFB3vMXhhL68T.jpg', 0, 1, 2, '33', 4, '2024-12-06 09:17:58', '2024-12-16 17:09:17', NULL),
('60682aa5-c3d9-4482-bd87-ad66ea64b012', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'Superior', 1999999, 0, '<p>Ph&ograve;ng gắn m&aacute;y điều h&ograve;a rộng r&atilde;i n&agrave;y c&oacute; ban c&ocirc;ng ri&ecirc;ng hoặc tầm nh&igrave;n ra quang cảnh th&agrave;nh phố. TV m&agrave;n h&igrave;nh LCD với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, c&agrave; ph&ecirc;/tr&agrave; miễn ph&iacute; v&agrave; nước kho&aacute;ng đ&oacute;ng chai cũng được cung cấp. Ph&ograve;ng tắm ri&ecirc;ng đi k&egrave;m v&ograve;i sen hoặc bồn tắm v&agrave; đồ vệ sinh c&aacute; nh&acirc;n</p>', 'catalogerooms/pCeDlmWcu3iuvW1FtclUBJVCmxQ0YbIeqD23n90c.jpg', 0, 1, 2, '40', 4, '2024-12-11 14:33:28', '2024-12-17 08:11:34', NULL),
('84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', 'b99fad74-7cd9-4d77-b016-367f177cbd58', 'Phòng Superior Giường Đơn', 1300000, 0, '<p>Ph&ograve;ng gắn m&aacute;y điều h&ograve;a rộng r&atilde;i n&agrave;y c&oacute; ban c&ocirc;ng ri&ecirc;ng hoặc tầm nh&igrave;n ra quang cảnh th&agrave;nh phố. TV m&agrave;n h&igrave;nh LCD với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, c&agrave; ph&ecirc;/tr&agrave; miễn ph&iacute; v&agrave; nước kho&aacute;ng đ&oacute;ng chai cũng được cung cấp. Ph&ograve;ng tắm ri&ecirc;ng đi k&egrave;m v&ograve;i sen hoặc bồn tắm v&agrave; đồ vệ sinh c&aacute; nh&acirc;n</p>', 'catalogerooms/ImfkGAnEVAaLKuVaxIR38wu7iPAJFIVrrBD5Zlzq.jpg', 0, 1, 2, '20', 3, '2024-12-19 02:12:12', '2024-12-19 02:12:12', NULL),
('8869254d-94cd-4fd4-b8ef-b274af58565e', '7ac7513c-9f14-473c-947c-5d6422522faf', 'Phòng Deluxe cho 3 Người', 1500000, 0, '<p>Du kh&aacute;ch sẽ c&oacute; trải nghiệm đặc biệt v&igrave; ph&ograve;ng ba người n&agrave;y c&oacute; bồn tắm nước n&oacute;ng v&agrave; l&ograve; sưởi. Ph&ograve;ng ba người n&agrave;y c&oacute; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute; v&agrave; &aacute;o cho&agrave;ng tắm, ph&ograve;ng tắm ri&ecirc;ng với bồn tắm, v&ograve;i sen v&agrave; m&aacute;y sấy t&oacute;c. Ph&ograve;ng ba người rộng r&atilde;i n&agrave;y c&oacute; m&aacute;y lạnh, TV m&agrave;n h&igrave;nh phẳng với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, lối v&agrave;o ri&ecirc;ng, tường c&aacute;ch &acirc;m, minibar cũng như tầm nh&igrave;n ra quang cảnh th&agrave;nh phố.</p>', 'catalogerooms/2ERnX6r20SV5V4sHYXdCSh1YAfipqjv8EmM5azCM.jpg', 0, 1, 1, '35', 3, '2024-12-11 15:35:28', '2024-12-18 09:22:43', NULL),
('b819008c-b16a-460a-a381-e4f6252ccd8a', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'Phòng Deluxe Giường Đôi', 2500000, 0, '<p>Ph&ograve;ng giường đ&ocirc;i n&agrave;y c&oacute; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, ph&ograve;ng tắm ri&ecirc;ng với g&oacute;c tắm v&ograve;i sen mở, chậu rửa vệ sinh (bidet) v&agrave; m&aacute;y sấy t&oacute;c. Ph&ograve;ng giường đ&ocirc;i lắp m&aacute;y lạnh n&agrave;y c&oacute; TV m&agrave;n h&igrave;nh phẳng với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, tường c&aacute;ch &acirc;m, tủ quần &aacute;o, ấm đun nước điện cũng như tầm nh&igrave;n ra quang cảnh th&agrave;nh phố. Ph&ograve;ng c&oacute; 1 giường.</p>', 'catalogerooms/fwl35F7KuMo03tlOPvRVWgwUh3uYVcvAbyMI6jOk.jpg', 0, 1, 2, '21', 3, '2024-12-16 15:36:06', '2024-12-18 16:02:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalogue_room_attribute`
--

CREATE TABLE `catalogue_room_attribute` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_room_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `catalogue_room_attribute`
--

INSERT INTO `catalogue_room_attribute` (`id`, `catalogue_room_id`, `attribute_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9dbeaf3e-cfde-4743-8b24-7f2335a8a6d5', '60682aa5-c3d9-4482-bd87-ad66ea64b012', '5e0cea6a-c3de-4112-b579-ec3b358fafe6', NULL, '2024-12-17 08:11:34', '2024-12-17 08:11:34'),
('9dc0cbab-9e2e-4028-a876-46f6779c5605', '8869254d-94cd-4fd4-b8ef-b274af58565e', '5e0cea6a-c3de-4112-b579-ec3b358fafe6', NULL, '2024-12-18 09:22:43', '2024-12-18 09:22:43'),
('9dc15a68-3155-4bcd-904f-94ede352f5d8', '0067ed50-9594-4d8a-8606-7256eb97710c', '5e0cea6a-c3de-4112-b579-ec3b358fafe6', NULL, '2024-12-18 16:01:50', '2024-12-18 16:01:50'),
('9dc15a68-b604-4be2-a1e5-3a5716b3c0a0', '0067ed50-9594-4d8a-8606-7256eb97710c', '4830e7f2-aa4f-45ff-bb60-5d72d803a49b', NULL, '2024-12-18 16:01:50', '2024-12-18 16:01:50'),
('9dc15ac4-07bf-483f-8441-97832385a4f8', 'b819008c-b16a-460a-a381-e4f6252ccd8a', '5e0cea6a-c3de-4112-b579-ec3b358fafe6', NULL, '2024-12-18 16:02:50', '2024-12-18 16:02:50'),
('9dc15ac4-08c8-44c6-8255-2e26c9efc6aa', 'b819008c-b16a-460a-a381-e4f6252ccd8a', '4830e7f2-aa4f-45ff-bb60-5d72d803a49b', NULL, '2024-12-18 16:02:50', '2024-12-18 16:02:50'),
('9dc234b1-8942-40a5-ba28-43c39418d83b', '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', '5e0cea6a-c3de-4112-b579-ec3b358fafe6', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12'),
('9dc234b1-f8d7-43c5-a68e-276a0079b9c5', '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', '4830e7f2-aa4f-45ff-bb60-5d72d803a49b', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `region_id`, `thumbnail`, `created_at`, `updated_at`, `deleted_at`) VALUES
('16a179c9-625e-46dd-bc58-846bcf58d57e', 'Hồ Chí Minh', 'b628f22b-c5c7-4fb7-a451-3a76999c97af', 'cities/ovRBjAR1ai4E98gaIi1VLGfNJMLfqGngeXmt00qu.jpg', '2024-12-06 08:53:07', '2024-12-06 08:53:07', NULL),
('3878714a-a58b-44e0-b122-68bf83474ade', 'Cao Bằng', '6ab50647-1650-4866-8da7-934154dabe39', 'cities/HXgeelSptgYkPDWQtntcNVQgs1oEprjqRb8eBHRZ.jpg', '2024-12-13 14:38:39', '2024-12-18 07:26:51', NULL),
('c16610ea-a412-411a-b734-ef8e4db0e9b6', 'Hà Nội', '6ab50647-1650-4866-8da7-934154dabe39', 'cities/6b1eEzDva9LBZJAEsvWucNVBw76lbgJynrnLP3qy.jpg', '2024-12-05 17:15:34', '2024-12-17 09:40:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `rate_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
('9dad3085-8d3c-468d-858a-92c16ee9e692', '56a4e80c-b577-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', 'cảm ơn quý khách', '2024-12-08 15:28:09', '2024-12-17 09:55:57'),
('9db2b4a0-aecf-4208-ba66-07446a165b17', '50763f98-b578-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', 'xin lỗi quý khách', '2024-12-11 09:16:41', '2024-12-11 09:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `common_key_codes`
--

CREATE TABLE `common_key_codes` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_index` int NOT NULL,
  `object_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `common_key_codes`
--

INSERT INTO `common_key_codes` (`id`, `org_id`, `current_index`, `object_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
('21280f84-9f7f-4ebc-aec3-f097326e2f7b', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 11, 'LHR-', '2024-12-16 15:36:59', '2024-12-19 05:21:26', NULL),
('63b2dd8c-569d-4bee-9004-8e60cc653849', '7ac7513c-9f14-473c-947c-5d6422522faf', 6, 'LHR-', '2024-12-11 15:35:44', '2024-12-17 09:50:51', NULL),
('67a2fafb-3797-4fc5-96a4-709c0e8288f2', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 13, 'LHO-', '2024-12-17 15:43:33', '2024-12-17 15:54:45', NULL),
('6a2429cb-27c4-4b71-8387-45ac7cad3af0', '7ac7513c-9f14-473c-947c-5d6422522faf', 11, 'LHO-', '2024-12-11 15:39:16', '2024-12-18 17:07:51', NULL),
('770e3e97-42dd-4651-8c05-8ea1b8ac232b', '4688497a-ca83-4027-a0fc-0929369f9a8d', 23, 'LHR-', '2024-10-31 16:59:12', '2024-11-01 02:05:06', NULL),
('783f44d4-2bfd-4e7a-86c8-3811823390d3', 'afbb06f1-8111-4661-9459-e684aa746f2c', 206, 'LHO-', '2024-11-09 17:48:56', '2024-12-03 15:15:47', NULL),
('8b098515-c301-48ab-a841-a1463fdba02a', '4688497a-ca83-4027-a0fc-0929369f9a8d', 39, 'LHO-', '2024-11-17 11:22:35', '2024-11-17 18:17:06', NULL),
('bf15f326-ede3-4301-9a2f-b5225a8818eb', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 19, 'LHR-', '2024-12-06 09:23:53', '2024-12-17 09:51:05', NULL),
('d48fe2d6-54f9-41e9-8670-7d99ceca7d02', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 10, 'LHO-', '2024-12-09 16:52:39', '2024-12-16 15:04:33', NULL),
('fd57215e-1709-4302-941d-c30f2f72d0e2', 'afbb06f1-8111-4661-9459-e684aa746f2c', 23, 'LHR-', '2024-10-21 18:16:05', '2024-11-29 18:47:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'a11954be-2198-469b-ba49-e63b8d35352c', 'database', 'default', '{\"uuid\":\"a11954be-2198-469b-ba49-e63b8d35352c\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"321a5f82-8086-4db7-a611-66e1f561da74\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Order]. in D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:598\nStack trace:\n#0 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(108): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(61): App\\Events\\OrderSuccess->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(88): App\\Events\\OrderSuccess->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Events\\OrderSuccess->__unserialize(Array)\n#4 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:36:\"Illuminat...\')\n#5 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#18 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 D:\\laragon\\laragon\\www\\datn_luxhome\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2024-12-13 16:06:06'),
(2, '95003871-e959-4271-bbc3-b5a74c5342f4', 'database', 'default', '{\"uuid\":\"95003871-e959-4271-bbc3-b5a74c5342f4\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"6692c5f5-b822-4375-b549-c9644d5737fe\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Order]. in D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:598\nStack trace:\n#0 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(108): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(61): App\\Events\\OrderSuccess->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(88): App\\Events\\OrderSuccess->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Events\\OrderSuccess->__unserialize(Array)\n#4 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:36:\"Illuminat...\')\n#5 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#18 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 D:\\laragon\\laragon\\www\\datn_luxhome\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 D:\\laragon\\laragon\\www\\datn_luxhome\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2024-12-13 16:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Chủ Chuỗi Khách sạn', '[\"view_categories\",\"create_categories\",\"edit_categories\",\"delete_categories\",\"view_hotel\",\"create_hotel\",\"edit_hotel\",\"delete_hotel\",\"view_region\",\"create_region\",\"edit_region\",\"delete_region\",\"view_city\",\"create_city\",\"edit_city\",\"delete_city\",\"view_banners\",\"create_banners\",\"edit_banners\",\"delete_banners\",\"view_rooms\",\"create_rooms\",\"edit_rooms\",\"delete_rooms\",\"view_users\",\"create_users\",\"edit_users\",\"delete_users\",\"view_overview\",\"create_overview\",\"edit_overview\",\"delete_overview\",\"view_services\",\"create_services\",\"edit_services\",\"delete_services\",\"view_amenities\",\"create_amenities\",\"edit_amenities\",\"delete_amenities\",\"view_vouchers\",\"create_vouchers\",\"edit_vouchers\",\"delete_vouchers\",\"view_orders\",\"create_orders\",\"edit_orders\",\"delete_orders\",\"view_reviews\",\"create_reviews\",\"edit_reviews\",\"delete_reviews\"]', NULL, NULL, '2024-12-18 07:40:35'),
(3, 'Quản lý khách sạn', '[\"view_categories\",\"create_categories\",\"edit_categories\",\"delete_categories\",\"view_hotel\",\"create_hotel\",\"edit_hotel\",\"delete_hotel\",\"view_banners\",\"create_banners\",\"edit_banners\",\"delete_banners\",\"view_rooms\",\"create_rooms\",\"edit_rooms\",\"delete_rooms\",\"view_users\",\"view_overview\",\"create_overview\",\"edit_overview\",\"delete_overview\",\"view_services\",\"create_services\",\"view_amenities\",\"view_vouchers\",\"create_vouchers\",\"edit_vouchers\",\"delete_vouchers\",\"view_orders\",\"create_orders\",\"edit_orders\",\"delete_orders\",\"view_reviews\",\"create_reviews\",\"edit_reviews\",\"delete_reviews\"]', 7, '2024-04-07 03:35:50', '2024-12-17 15:28:31'),
(4, 'Nhân viên khách sạn', '[\"view_rooms\",\"edit_rooms\",\"view_overview\",\"view_services\",\"create_services\",\"edit_services\",\"delete_services\",\"view_vouchers\",\"view_orders\",\"edit_orders\",\"view_reviews\",\"edit_reviews\",\"delete_reviews\"]', 7, '2024-04-07 03:35:50', '2024-12-16 14:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commune` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_of_room` int NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` tinyint NOT NULL,
  `city_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity_floor` int NOT NULL,
  `percent_incidental` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `location`, `commune`, `district`, `province`, `quantity_of_room`, `thumbnail`, `star`, `city_id`, `phone`, `latitude`, `longitude`, `email`, `status`, `description`, `quantity_floor`, `percent_incidental`, `created_at`, `updated_at`, `deleted_at`, `slug`, `view`) VALUES
('1ea03be9-58d8-422b-b20c-4f6493d9d066', 'Parosand Hanoi Hotel', '85 Ma May Street, Quận Hoàn Kiếm, Hà Nội, Việt Nam', 'Lạc Long Quân', 'Hoàn Kiếm', 'Hà Nội', 50, 'hotels/dLN45QCfO6I5hqXezEGgMkgts1gyP8XTjUEHHXHP.jpg', 4, 'c16610ea-a412-411a-b734-ef8e4db0e9b6', '0384531865', '21.0634401,105.8067599,822', '21.0634401,105.8067599,822', 'parosand@gmail.com', 1, '<p>Parosand Hanoi Hotel c&oacute; ph&ograve;ng chờ chung, s&acirc;n hi&ecirc;n, nh&agrave; h&agrave;ng v&agrave; quầy bar ở Hà N&ocirc;̣i. Ngo&agrave;i Wi-Fi miễn ph&iacute;, kh&aacute;ch sạn 4 sao n&agrave;y c&ograve;n cung cấp quầy lễ t&acirc;n 24 giờ v&agrave; b&agrave;n b&aacute;n tour. Đ&acirc;y l&agrave; chỗ nghỉ kh&ocirc;ng g&acirc;y dị ứng v&agrave; tọa lạc c&aacute;ch Bảo t&agrave;ng d&acirc;n tộc học Việt Nam 3.7 km. Ph&ograve;ng kh&aacute;ch tại kh&aacute;ch sạn được trang bị điều h&ograve;a, khu vực ghế ngồi, TV m&agrave;n h&igrave;nh phẳng c&oacute; truyền h&igrave;nh vệ tinh, k&eacute;t an to&agrave;n, ph&ograve;ng tắm chung, v&ograve;i xịt/chậu rửa vệ sinh, đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute; v&agrave; m&aacute;y sấy t&oacute;c. C&aacute;c ph&ograve;ng được thiết kế c&oacute; ấm đun nước, trong đ&oacute; một số ph&ograve;ng c&oacute; ban c&ocirc;ng v&agrave; một số kh&aacute;c th&igrave; nh&igrave;n ra th&agrave;nh phố. Tại Parosand Hanoi Hotel, ph&ograve;ng n&agrave;o cũng c&oacute; ga trải giường v&agrave; khăn tắm. Chỗ nghỉ c&oacute; phục vụ bữa s&aacute;ng thực đơn &agrave; la carte hằng ng&agrave;y. Parosand Hanoi Hotel c&aacute;ch Ch&ugrave;a Một Cột 5.3 km v&agrave; Trung t&acirc;m thương mại Vincom Nguyễn Ch&iacute; Thanh 5.6 km.</p>', 10, 0, '2024-12-06 01:10:31', '2024-12-18 18:18:00', NULL, NULL, 231),
('7ac7513c-9f14-473c-947c-5d6422522faf', 'Hanoi House Hostel & Travel', '85 Ma May Street, Quận Hoàn Kiếm, Hà Nội, Việt Nam', 'Ma May', 'Hoàn Kiếm', 'Hà Nội', 30, 'hotels/I6rDJAXcA3xCPDO6bcrRGqYi7WKJpZ0Ce9fF7iHl.jpg', 4, 'c16610ea-a412-411a-b734-ef8e4db0e9b6', '0987654321', '21.0634401,105.8067599,822', '21.0634401,105.8067599,822', 'Househostel@gmail.com', 1, '<p>Nằm ở giữa khu phố cổ, Hanoi House Hostel &amp; Travel c&aacute;ch Hồ Ho&agrave;n Kiếm, Đền Ngọc Sơn v&agrave; Nh&agrave; h&aacute;t M&uacute;a rối nước 3 ph&uacute;t đi bộ. Chỗ nghỉ cho thu&ecirc; xe đạp/xe hơi v&agrave; cung cấp WiFi miễn ph&iacute;. Nằm ở vị tr&iacute; thuận tiện, Hanoi House Hostel &amp; Travel c&aacute;ch Lăng Chủ tịch Hồ Ch&iacute; Minh 15 ph&uacute;t l&aacute;i xe v&agrave; c&aacute;ch Văn Miếu - Quốc Tử Gi&aacute;m 20 ph&uacute;t đi bộ. S&acirc;n bay Quốc tế Nội B&agrave;i c&aacute;ch đ&oacute; 50 ph&uacute;t l&aacute;i xe. C&aacute;c ph&ograve;ng đều c&oacute; m&aacute;y điều h&ograve;a, TV truyền h&igrave;nh vệ tinh, tủ lạnh v&agrave; m&aacute;y sấy t&oacute;c. Một số ph&ograve;ng chọn lọc c&ograve;n c&oacute; khu vực ghế ngồi v&agrave; bồn tắm. Bữa s&aacute;ng được phục vụ tại qu&aacute;n c&agrave; ph&ecirc; trong khu&ocirc;n vi&ecirc;n.</p>', 4, 0, '2024-12-08 14:13:04', '2024-12-18 17:04:20', NULL, NULL, 44),
('b99fad74-7cd9-4d77-b016-367f177cbd58', 'Apec Hotel & Spa', '13 Đường Bùi Thị Xuân, Quận 1, TP. Hồ Chí Minh, Việt Nam', 'Vĩnh Xương', 'Quận 1', 'TP.Hồ Chí Minh', 34, 'hotels/MzN7RmvJ0XW143BSzvok9cDMpYDBGUbao20jhibK.jpg', 5, '16a179c9-625e-46dd-bc58-846bcf58d57e', '0389735412', '21.0634401,105.8067599,822', '21.0634401,105.8067599,822', 'Apechotel@gmail.com', 1, '<p>Nằm tại vị tr&iacute; thuận tiện ở trung t&acirc;m TP. H&ocirc;̀ Chí Minh, Apec Hotel &amp; Spa c&aacute;ch Chợ Bến Th&agrave;nh chưa đến 1 km v&agrave; C&ocirc;ng vi&ecirc;n Tao Đ&agrave;n 9 ph&uacute;t đi bộ. Kh&aacute;ch sạn 3 sao n&agrave;y c&oacute; c&aacute;c ph&ograve;ng được trang bị điều h&ograve;a. Chỗ nghỉ cung cấp lễ t&acirc;n 24/24, dịch vụ đưa đ&oacute;n s&acirc;n bay, dịch vụ ph&ograve;ng v&agrave; Wi-Fi miễn ph&iacute; ở to&agrave;n bộ chỗ nghỉ. Với ph&ograve;ng tắm ri&ecirc;ng được trang bị v&ograve;i sen v&agrave; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, một số ph&ograve;ng tại kh&aacute;ch sạn cũng c&oacute; view th&agrave;nh phố. Tại Apec Hotel &amp; Spa, c&aacute;c ph&ograve;ng được thiết kế c&oacute; b&agrave;n l&agrave;m việc v&agrave; TV m&agrave;n h&igrave;nh phẳng. Chỗ nghỉ c&oacute; phục vụ bữa s&aacute;ng mỗi buổi s&aacute;ng, gồm c&aacute;c lựa chọn thực đơn buffet, kiểu lục địa v&agrave; kiểu Mỹ. Tại chỗ nghỉ, kh&aacute;ch sẽ t&igrave;m thấy nh&agrave; h&agrave;ng phục vụ ẩm thực Mỹ, Th&aacute;i v&agrave; Việt. B&ecirc;n cạnh đ&oacute;, họ c&oacute; thể y&ecirc;u cầu m&oacute;n chay, kh&ocirc;ng chứa sữa v&agrave; đồ ăn Halal. C&aacute;c điểm tham quan nổi tiếng gần Apec Hotel &amp; Spa bao gồm Bảo t&agrave;ng Mỹ thuật, Trung t&acirc;m mua sắm Takashimaya Việt Nam v&agrave; Bảo t&agrave;ng Th&agrave;nh phố Hồ Ch&iacute; Minh. S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất c&aacute;ch 7 km.</p>', 5, 5, '2024-12-08 14:19:27', '2024-12-19 05:14:09', NULL, NULL, 32),
('d613f689-af3a-48c1-889a-7e80b3a1a9ce', 'Sai Gon Hotel Bui Vien Walking Street', '40/13 Bùi Viện Phạm Ngũ Lão , District 1 , Ho Chi Minh City, Quận 1, TP. Hồ Chí Minh', 'Quận 1', 'Quận 1', 'TP.Hồ Chí Minh', 20, 'hotels/Nxz7zTku8IVsazFKga1W42BghwpwZ35yHkvYr5mF.jpg', 4, '16a179c9-625e-46dd-bc58-846bcf58d57e', '0385333444', '123', '123', 'saigon@gmail.com', 1, '<p>Nằm tại vị tr&iacute; thuận tiện ở TP. H&ocirc;̀ Chí Minh, Sai Gon Hotel Bui Vien Walking Street cung cấp c&aacute;c ph&ograve;ng điều h&ograve;a với Wi-Fi miễn ph&iacute;, chỗ đậu xe ri&ecirc;ng miễn ph&iacute; v&agrave; dịch vụ ph&ograve;ng. Kh&aacute;ch sạn 2 sao n&agrave;y c&oacute; ph&ograve;ng chờ chung v&agrave; quầy lễ t&acirc;n 24 giờ. Đ&acirc;y l&agrave; chỗ nghỉ kh&ocirc;ng g&acirc;y dị ứng v&agrave; nằm c&aacute;ch Bảo t&agrave;ng Mỹ thuật 8 ph&uacute;t đi bộ. Tại kh&aacute;ch sạn, c&aacute;c ph&ograve;ng đều đi k&egrave;m với b&agrave;n l&agrave;m việc, TV m&agrave;n h&igrave;nh phẳng, ph&ograve;ng tắm ri&ecirc;ng, ga trải giường v&agrave; khăn tắm. C&aacute;c ph&ograve;ng đều c&oacute; ấm đun nước, trong đ&oacute; một số ph&ograve;ng c&oacute; ban c&ocirc;ng v&agrave; một số kh&aacute;c th&igrave; nh&igrave;n ra th&agrave;nh phố. Tại Sai Gon Hotel Bui Vien Walking Street, tất cả c&aacute;c ph&ograve;ng c&oacute; khu vực ghế ngồi. C&aacute;c điểm tham quan nổi tiếng gần chỗ nghỉ bao gồm Trung t&acirc;m mua sắm Takashimaya Việt Nam, Chợ Bến Th&agrave;nh v&agrave; C&ocirc;ng vi&ecirc;n Tao Đ&agrave;n. S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất c&aacute;ch 7 km.</p>', 3, 5, '2024-12-13 14:27:09', '2024-12-19 06:13:40', NULL, NULL, 23);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `alt`, `object_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
('00afa1ba-623a-49fb-a206-33a0e6362fae', 'images/Ub302f67zUT271UV82Z31OwCwfumPdd7q9taoBeE.jpg', NULL, '0067ed50-9594-4d8a-8606-7256eb97710c', NULL, '2024-12-18 16:01:50', '2024-12-18 16:01:50'),
('034632c8-0337-4e4f-a0ef-88d59278538f', 'images/s2AEvYRdpeKQ8ZYk01F57DZYZ9gY7T2ibbd8rKVb.jpg', NULL, '60682aa5-c3d9-4482-bd87-ad66ea64b012', NULL, '2024-12-11 14:33:28', '2024-12-11 14:33:28'),
('0b1bc486-f6a7-4203-b8e0-1014ebe10694', 'images/qNaUzyJleWwmq1CMF8LxZS91FI1MsXBiaib8OSWp.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('11ede4d1-83ba-4fd3-8099-b59084f45f63', 'images/yZEjlK9qPeqqYWiwy4MCJIFjzy14T0g389EXWDoP.jpg', NULL, '8869254d-94cd-4fd4-b8ef-b274af58565e', NULL, '2024-12-11 15:35:29', '2024-12-11 15:35:29'),
('1d6f7f91-97ed-4cff-9c69-62878f9ff378', 'images/ENYWvkmBZ5kEQJVnmhAuPkL4XyW9SpdzS0LZnbCG.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('1f1803fe-5439-4799-8261-1889b38e82a8', 'hotels/UeimKD5TkcGWpruoo6Fz9NvpXilW48B0RP7G9CdG.jpg', '447787456.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-13 14:27:09', '2024-12-13 14:27:09'),
('2462c928-447c-477c-b4f5-80a4033c5c21', 'images/MXdzVvj5IrNushzmhSprXjgxsxI5nP3x803zj069.jpg', NULL, '47231d1b-ed88-441f-b12c-2c811879c614', NULL, '2024-12-06 09:17:58', '2024-12-06 09:17:58'),
('25ae1fb4-af49-4b7e-bc24-044422d6e749', 'hotels/Zj92Z0ZeV5BBuK4uoLVnqVaLgN6vnGxaUhnICaCb.jpg', '618249591.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-18 03:55:45', '2024-12-18 03:55:45'),
('37353d15-5fb0-42e1-a0c0-9d6f6d5383d2', 'images/p6Mlv12n9hidKTgr3RsManUnlr7g5iVoBLmtS675.jpg', NULL, '47231d1b-ed88-441f-b12c-2c811879c614', NULL, '2024-12-06 09:17:58', '2024-12-06 09:17:58'),
('3a42ed92-3b56-4fb3-ad05-de99334cee5a', 'images/inhX0ggAbsIHhjl0OBQHo83tQ99ookLT9lpvScHu.jpg', NULL, '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12'),
('3a76e1c0-c009-4bf3-9b58-7b91dd9407be', 'hotels/tCd1TIqauWRL8zSsQRgk5Gmz9o2XRiiN4LUT25PE.jpg', '447787318.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-13 14:27:09', '2024-12-13 14:27:09'),
('3ab78286-0064-44f1-bdb6-904b916bf74a', 'images/V0lP8QdImFbtobsoqq2mCcykWwKDqGlcYkh1igVc.webp', NULL, '0067ed50-9594-4d8a-8606-7256eb97710c', NULL, '2024-12-17 15:37:17', '2024-12-17 15:37:17'),
('41eb4f31-3eb1-4258-a66b-dae7ffd39d43', 'hotels/jPyXpjdLDZcJxFUTLMfNAplP3MvNCyB4pxyF01yf.jpg', '230191899.jpg', '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, '2024-12-08 14:13:04', '2024-12-08 14:13:04'),
('4777a292-8700-4a68-b408-8e659900806c', 'images/AHJkRWuTPxRpaM5WlBwenfY62owiJfv9xK0ActuY.jpg', NULL, '47231d1b-ed88-441f-b12c-2c811879c614', NULL, '2024-12-06 09:17:58', '2024-12-06 09:17:58'),
('488fa199-b261-49c3-b013-1a22c221d354', 'images/2B7aiIT3HaD6BFBUZ6CrgZqd0mDwsvdRIt1YkPsl.jpg', NULL, '8869254d-94cd-4fd4-b8ef-b274af58565e', NULL, '2024-12-11 15:35:29', '2024-12-11 15:35:29'),
('54757aef-5f4c-43df-a5a1-bf395efd4b1c', 'hotels/xAhM76XxzQVoE382jtr9qGqUkb1V4lcUSUZuCRse.jpg', '513905893.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:28:28', '2024-12-06 01:28:28'),
('55775e50-2789-4e55-9c82-f9027e149250', 'hotels/2JEIcndjm5Fvh6bs60SycjFdSEPUBJzVUIwmSMs8.jpg', '385233120.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-13 14:27:09', '2024-12-13 14:27:09'),
('58bd3d90-8e7e-44c3-9270-724ff9c5b3dd', 'hotels/tFSASOYbK9fswytOKG9fyn12ZOoqaH9zoCRPlC2q.jpg', '230190606.jpg', '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, '2024-12-08 14:13:04', '2024-12-08 14:13:04'),
('6c3856e3-aa0c-4e2f-9cc7-004c168a9ab0', 'hotels/iptiz5TLYyKA0vNvbbIpX7NPQXWingR2rPhosPZb.jpg', '447787447.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-13 14:27:09', '2024-12-13 14:27:09'),
('71da110a-1d15-4cb2-8a25-72252975d0ba', 'images/JDDMJvihxLx7Qmxc288Wv9ctc5Iz9HOADOTf6OdS.jpg', NULL, '60682aa5-c3d9-4482-bd87-ad66ea64b012', NULL, '2024-12-11 14:33:28', '2024-12-11 14:33:28'),
('72abf2d3-7e0f-4d87-b122-3d7d7a388efb', 'hotels/jI7AaSHTeYzeLkHGCaesWlkKckKecRyftiwTh4E8.jpg', '618249593.jpg', 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, '2024-12-08 14:19:27', '2024-12-08 14:19:27'),
('769f81d3-7bbe-4fdc-a52a-f451e7c4d5d8', 'hotels/6M1kxCXHh7Zq0FwzW0nIDi6fxheaHfGLsupYfmFF.jpg', '513905890.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:27:41', '2024-12-06 01:27:41'),
('7ef761ed-5a68-4172-948a-0f9711006aa2', 'hotels/DMcpX1jvTrKS0ekZDgPcenv8hpntPGVHV3t4ZzZW.jpg', '513905888.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:27:41', '2024-12-06 01:27:41'),
('8272be78-b408-4818-81b1-02f795f9aa3b', 'images/d1q8UVmnVh2YQAGu0VTXVJmDPes7gve9HgD0XBhY.jpg', NULL, '60682aa5-c3d9-4482-bd87-ad66ea64b012', NULL, '2024-12-11 14:33:28', '2024-12-11 14:33:28'),
('836dd91c-60d0-47b7-aca4-8c58e6c4943a', 'hotels/jcynOOLrkgnokK5Rrh1Zwav1M2u750Jdm3gGtiEo.jpg', '230191914.jpg', '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, '2024-12-08 14:13:04', '2024-12-08 14:13:04'),
('8400b3ee-a15a-4985-a53c-0d0e72857fa3', 'hotels/zUoAUkaxzWjUUm2zM5JJyOy0AGY1iQgqkHUU4GDU.jpg', '513905888.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:27:41', '2024-12-06 01:27:41'),
('90cfb40b-82a2-47b8-ac44-93cc2b83544f', 'hotels/BFszkWVrKkmksGkb8KgOQ4snsEFqoT6xebtbglPR.jpg', '618249592.jpg', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', NULL, '2024-12-18 03:56:01', '2024-12-18 03:56:01'),
('97204a28-8667-4c63-84f4-8b866a8bfaf8', 'images/QHAd4hRMr5y4liZKeHix1Ea5VARQe75CoRlCSbqF.jpg', NULL, '8869254d-94cd-4fd4-b8ef-b274af58565e', NULL, '2024-12-11 15:35:29', '2024-12-11 15:35:29'),
('972d7ea6-dbbe-448a-9fbb-1b928cb6263e', 'images/HszIL7Yp2WNEHwVgrDwedePh7zOhNncZqqjWqGHg.jpg', NULL, '0067ed50-9594-4d8a-8606-7256eb97710c', NULL, '2024-12-18 16:01:50', '2024-12-18 16:01:50'),
('9a7f2422-e896-434b-ba3f-b50502206093', 'hotels/MKsrJnQR8oh3pmQrga6fOxUxHZv3d58tKnMRxw6l.jpg', '513905904.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:28:41', '2024-12-06 01:28:41'),
('9f0d8bb7-a98a-45c6-bbc2-a59ab74193a8', 'images/0wfqEB57sR8gg7XVBV7tSViBvRjs0Q2cBmCaWbFw.jpg', NULL, '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12'),
('a6804a55-26b9-435c-812e-202c5b4cfc88', 'hotels/svaqdfvC2qJBIbkwkqSwozwRuzj6yUPJSqF5z4GV.jpg', '513905887.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:10:31', '2024-12-06 01:10:31'),
('b0161e90-f9bd-49e7-914a-cb66e87f60ef', 'images/y6hf2qt9LU2Rln3GZS4hHbA1qbql1ewcu8meT18S.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-18 03:52:24', '2024-12-18 03:52:24'),
('b1aa8f4e-8b0c-4eeb-abca-afeea2754075', 'images/nMDLVYs7SA0xjDW4iliRChbPYhHdrErpmXNOmses.jpg', NULL, '0067ed50-9594-4d8a-8606-7256eb97710c', NULL, '2024-12-17 15:37:17', '2024-12-17 15:37:17'),
('b1e76a20-de09-4b54-85e7-34bb59a6f89e', 'hotels/QqVdzHuqEZ1zNQUCZ0aN0c8HfehtiJMrMKYO0O50.jpg', '227562986.jpg', '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, '2024-12-08 14:13:04', '2024-12-08 14:13:04'),
('b2204bce-c4a6-4424-a8fd-7d5891acd270', 'images/hsRW6mrsAcEVszI26bNUdQBIfnkRWTq5736SZ41V.webp', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('b9cf1b40-7c0b-4f2b-842a-917c7bb771ef', 'images/lvUhCtLv3aT9XcZ6kP4p0Y0Tnzi5jowtDxuGcuAr.jpg', NULL, '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12'),
('bab82cf0-db50-44a8-a8e7-38ee5fe62e67', 'hotels/IIq6Gdld31yxOn2ZNvHJgTgLjMDNj6c8jIJGXkOx.jpg', '513905886.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:10:31', '2024-12-06 01:10:31'),
('bce2a2c3-2671-4c6d-aff1-162c497ce772', 'images/diwGRfis5K0u4nt1uUDcIsU9nYP8lBnyRFyCz5nb.webp', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('c122d45a-ef0d-4406-996b-c58758a50de3', 'hotels/VecCq5HWZZgxYnOEkqP8LECREZBliReVF9MlSbSn.jpg', '618249591.jpg', 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, '2024-12-08 14:19:27', '2024-12-08 14:19:27'),
('cbe98bf2-6079-4a4b-bc72-147f7d104c9f', 'hotels/H2YSTwYXZ06dB7DPsovR0K7Cc1F0kMP8tilFHnFu.jpg', '618249592.jpg', 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, '2024-12-08 14:19:27', '2024-12-08 14:19:27'),
('cd0698ef-0f99-4aa2-85af-c91d0a2ee610', 'images/X2yEpD0xMwvUQuRHtzqVw8SZcoyNXjSjeKGsvjh9.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('cd2b73a2-6c6a-4378-8f2a-34893eb5d8c2', 'hotels/U0eFhkrFtA76fbgTSRhsyUQZucZERM1Dax0hAXA6.jpg', '513905893.jpg', '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, '2024-12-06 01:28:28', '2024-12-06 01:28:28'),
('d3d9511a-298f-423c-89c7-9b13ad1713bb', 'hotels/c1TjZvhC1mroreYutWMPZVVsplnsyKnF4kWli4OK.jpg', '227562983.jpg', '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, '2024-12-08 14:13:04', '2024-12-08 14:13:04'),
('d9ba9ea7-3e84-42ad-813f-dc08ac33b88f', 'images/GU5qLz3ZPupkbw4rI2eoBoRMjzdcFgebcK4dgV3o.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-18 03:52:24', '2024-12-18 03:52:24'),
('d9e2175a-0f53-41ce-bb52-4b33b21992aa', 'images/68Dy9IntVVB64XBfkkZfkMo8jPsbrOGDZQg9pJ1x.jpg', NULL, '60682aa5-c3d9-4482-bd87-ad66ea64b012', NULL, '2024-12-11 14:33:28', '2024-12-11 14:33:28'),
('e0b22115-943f-4054-8ef2-4ae69303304e', 'images/zidluKyljnJPrrqynwfjLfyIxtIGFNOygLCmlHs7.jpg', NULL, '84d8b1b5-0eec-4302-a45a-aed60eb5cb0a', NULL, '2024-12-19 02:12:12', '2024-12-19 02:12:12'),
('e331fb13-8ce8-4ed3-ad07-3aa8007bcbd7', 'images/Q32hhZMCTJeyMEtEv7wnIJi464eH7pPXhSvRDewP.jpg', NULL, '8869254d-94cd-4fd4-b8ef-b274af58565e', NULL, '2024-12-11 15:35:29', '2024-12-11 15:35:29'),
('e48feab3-f187-46da-9ed3-6a05a9433d84', 'images/ttbpj5HCMK7s7a2YxanUdtinaMUiew8UWjNMV8hh.jpg', NULL, 'b819008c-b16a-460a-a381-e4f6252ccd8a', NULL, '2024-12-16 15:36:06', '2024-12-16 15:36:06'),
('e57bd73c-6a5a-416b-9463-272937057d6b', 'images/ReHkvT6R4QwH0hTLR0ih3kOWG9sT6nuJQrnezUM4.jpg', NULL, '8869254d-94cd-4fd4-b8ef-b274af58565e', NULL, '2024-12-11 15:35:29', '2024-12-11 15:35:29'),
('e5c4d5d4-84c2-4ea7-b30d-58a33535e3de', 'hotels/jgxXtG8Jg2jpuO2ctC2FrChcejlOseXu9fksL7jG.jpg', 'thumbnail.jpg', 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, '2024-12-08 14:19:27', '2024-12-08 14:19:27'),
('edab4ddb-3367-4046-9985-fd4247beca36', 'images/8EGFxFc0Zrz38yDS05TopjpcTCGQAmeTZ6hGEiyw.jpg', NULL, '0067ed50-9594-4d8a-8606-7256eb97710c', NULL, '2024-12-18 16:01:50', '2024-12-18 16:01:50'),
('f0cebfa2-9ac6-40f3-9f13-13b9d858e1a4', 'images/JXVifNKvs5qdl0ZqgcHYVDF5mL8w8LjKSVBEcQqU.jpg', NULL, '47231d1b-ed88-441f-b12c-2c811879c614', NULL, '2024-12-06 09:17:58', '2024-12-06 09:17:58'),
('f78f9577-b2a7-41a3-8882-3bf11f73e750', 'images/Ietk5KNyWo2uZzLSZX2cLPuCVPuNg0rjqhFGgElp.jpg', NULL, '47231d1b-ed88-441f-b12c-2c811879c614', NULL, '2024-12-06 09:17:58', '2024-12-06 09:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `incidental_costs`
--

CREATE TABLE `incidental_costs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` double NOT NULL COMMENT 'chi phí phát sinh',
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'id bảng order',
  `room_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id bảng room'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(11, 'default', '{\"uuid\":\"0125aaba-bf16-49bd-bb2d-befc311b0111\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"91f12cb0-0d97-4097-91fe-2ef8ad00f6d6\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734170644, 1734170644),
(12, 'default', '{\"uuid\":\"58d05d91-a85e-4204-a8bb-6b5a95280692\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"8162cc49-4414-47e6-9408-dc7b9435df37\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734279497, 1734279497),
(13, 'default', '{\"uuid\":\"40d34a05-c5b2-49b1-94a7-f5fad3c489ab\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"ba46bd74-2f8e-4079-bca9-424a1174a38b\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734361141, 1734361141),
(14, 'default', '{\"uuid\":\"d43997c2-38ae-45f5-b8ae-448930883751\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"ba46bd74-2f8e-4079-bca9-424a1174a38b\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734361244, 1734361244),
(15, 'default', '{\"uuid\":\"a33eb98b-bc00-424d-a4ee-1f343366c72d\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"82da1298-d29a-4c61-9fd4-b7387912293d\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734361497, 1734361497),
(16, 'default', '{\"uuid\":\"4decb571-e9cf-455c-833d-cbbaae0310d3\",\"displayName\":\"App\\\\Listeners\\\\OrderSuccessNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:38:\\\"App\\\\Listeners\\\\OrderSuccessNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\OrderSuccess\\\":1:{s:14:\\\"bookingDetails\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";s:36:\\\"54b97b60-7bfc-43d2-b484-7415f4f0e0e9\\\";s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734541696, 1734541696);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_06_171429_create_catalogue_rooms_table', 1),
(6, '2024_10_06_171534_create_attributes_table', 1),
(7, '2024_10_06_171605_create_attribute_values_table', 1),
(8, '2024_10_06_171737_create_catalogue_room_attribute_table', 1),
(9, '2024_10_06_171836_create_rooms_table', 1),
(10, '2024_10_06_171910_create_hotels_table', 1),
(11, '2024_10_06_172024_create_cities_table', 1),
(12, '2024_10_06_172101_create_regions_table', 1),
(13, '2024_10_06_172225_create_ranks_table', 1),
(14, '2024_10_06_172315_create_orders_table', 1),
(15, '2024_10_06_172505_create_vouchers_table', 1),
(16, '2024_10_06_175502_create_order_items_table', 1),
(17, '2024_10_06_175631_create_services_table', 1),
(18, '2024_10_06_175704_create_hotel_service_table', 1),
(19, '2024_10_06_175811_create_bookings_service_table', 1),
(20, '2024_10_06_175857_create_rates_table', 1),
(21, '2024_10_06_175948_create_common_key_codes_table', 1),
(23, '2024_10_29_125845_create_image_table', 2),
(24, '2024_11_27_214707_create_comments_table', 3),
(25, '2024_11_16_143527_create_jobs_table', 4),
(26, '2024_12_03_204033_create_banners_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `title`, `created_at`, `updated_at`) VALUES
('1', 'categories', 'Danh mục phòng', NULL, NULL),
('10', 'hotel', 'Quản lí Khách sạn', NULL, NULL),
('11', 'region', 'Quản lí miền', NULL, NULL),
('12', 'city', 'Quản lí thành phố', NULL, NULL),
('13', 'banners', 'Quản lý Banner', NULL, NULL),
('2', 'rooms', 'Phòng', NULL, NULL),
('3', 'users', 'Người dùng', NULL, NULL),
('4', 'overview', 'Tổng quan', NULL, NULL),
('5', 'services', 'Quản lí dịch Vụ', NULL, NULL),
('6', 'amenities', 'Quản lí tiện Nghi', NULL, NULL),
('7', 'vouchers', 'Quản lí Voucher', NULL, NULL),
('8', 'orders', 'Quản lí Đơn hàng', NULL, NULL),
('9', 'reviews', 'Quản lí Đánh giá', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_fee` double NOT NULL COMMENT 'tiền đặt phòng',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL COMMENT '1. đang chờ, 2. đã xác nhận, 3. hoàn thành, 4. đã hủy, 5. yêu cầu hủy',
  `status_payment` tinyint NOT NULL COMMENT '1. chưa thanh toán, 2.đã thanh toán, 3. đã hoàn tiền, 4. chưa hoàn tiền',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `org_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'id giao dịch',
  `incidental_costs` double(10,2) DEFAULT NULL COMMENT 'chi phí phát sinh',
  `total_amount` double NOT NULL COMMENT 'tổng tiền của đơn hàng',
  `net_amount` double(10,2) DEFAULT NULL COMMENT 'tiền thực nhận',
  `is_requried_cancel` tinyint DEFAULT NULL COMMENT 'đã từng yêu cầu hủy',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_rating` tinyint DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `voucher_id`, `booking_fee`, `phone`, `email`, `name`, `code`, `qr_code`, `status`, `status_payment`, `start_date`, `end_date`, `check_in`, `check_out`, `note`, `org_id`, `transaction_id`, `incidental_costs`, `total_amount`, `net_amount`, `is_requried_cancel`, `created_at`, `updated_at`, `deleted_at`, `is_rating`) VALUES
('09748215-d3c4-4e58-a898-ed25329a43e0', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 1999999, '0987654321', 'hi@gmail.com', 'hi', 'LHO-000003', NULL, 3, 2, '2024-12-11 07:00:00', '2024-12-12 05:00:00', NULL, NULL, NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD2004', 0.00, 2079999, 2079999.00, NULL, '2024-12-11 14:38:25', '2024-12-13 08:46:08', NULL, 2),
('197c531c-66ba-31fa-b2d8-7aa3db09d5e6', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 170, '(804) 818-4361', 'beatty.fausto@renner.info', 'Prof. Maddison Marvin II', '18362', NULL, 3, 2, '1985-06-09 01:03:09', '1976-01-05 12:44:27', '1982-03-19 19:07:26', '2004-08-19 17:01:05', NULL, 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, 1.00, 8013282, 9666863.00, NULL, '2024-12-06 00:27:54', '2024-12-12 14:59:01', NULL, 2),
('2c6740b3-6fe2-3ef3-b165-4a921c8602e0', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 982, '1-580-746-6823', 'guadalupe.corkery@gmail.com', 'Dr. Zachary Kuhic', '73295-2249', NULL, 3, 2, '2020-03-08 19:11:49', '1994-03-06 06:53:00', '1992-11-22 01:00:17', '1984-01-09 09:28:37', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 7509740, 8979255.00, NULL, '2024-08-08 04:48:36', '2024-12-12 14:59:01', NULL, 2),
('343a7c2b-6904-3add-935d-81e84b040407', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 875, '734-590-6582', 'kayley.mcclure@vandervort.info', 'Kenny Sipes', '90546-6050', NULL, 3, 2, '1982-02-02 19:21:24', '1984-04-23 20:37:44', '1992-09-16 20:41:27', '1992-09-05 09:29:03', NULL, 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, 1.00, 4236732, 6411381.00, NULL, '2024-08-21 23:40:12', '2024-12-12 14:59:01', NULL, 2),
('437e0f8e-6037-46cf-a995-2ee5b28e30ad', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', '0', 3000000, '0937654321', 'user1@gmail.com', 'user1', 'LHO-000002', NULL, 2, 2, '2024-12-12 07:00:00', '2024-12-13 05:00:00', NULL, NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD8597', 0.00, 3000000, NULL, NULL, '2024-12-12 09:06:33', '2024-12-12 09:06:57', NULL, 2),
('46b70221-7996-33b3-b5be-ad90b8737435', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 338, '+1-251-901-5676', 'vbernhard@gmail.com', 'Noe Casper DVM', '01232-0015', NULL, 3, 2, '1978-04-30 13:59:50', '1990-02-18 18:21:43', '1994-08-03 05:09:32', '2015-03-20 04:50:57', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 7310944, 2676245.00, NULL, '2024-01-16 12:01:06', '2024-12-12 14:59:01', NULL, 2),
('472e1286-0e90-316d-b8a2-00f08b7e7e9b', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 605, '(480) 344-8003', 'pbeatty@gmail.com', 'Bridie Koepp', '45749', NULL, 3, 2, '1995-10-22 15:16:50', '2012-12-03 18:57:16', '1985-11-30 19:42:59', '2004-11-10 23:02:25', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 9437024, 4226814.00, NULL, '2024-04-09 20:39:25', '2024-12-12 14:59:01', NULL, 2),
('47bdd19a-d2ac-3be3-8b01-4ab0187452ca', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 237, '1-704-432-4148', 'delilah68@hotmail.com', 'Neil Green', '31417-4685', NULL, 5, 2, '1975-05-04 13:46:11', '1975-01-07 13:26:43', '1991-12-14 09:53:37', '2017-03-01 05:38:54', NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, 1.00, 0, NULL, NULL, '2024-12-27 21:26:06', '2024-12-13 08:39:46', NULL, 2),
('4c157fc4-0b78-3334-a3fd-83c6d6032638', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 784, '(743) 338-9546', 'eveline54@hotmail.com', 'Melisa Koepp', '41946', NULL, 3, 2, '2003-02-14 13:42:42', '1999-10-22 18:50:59', '2006-03-17 15:03:06', '1995-04-01 19:34:04', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 8030386, 2341705.00, NULL, '2024-01-17 12:37:12', '2024-12-12 14:59:01', NULL, 2),
('4c95aad5-9e8f-3c7c-81d7-4d4e982c9130', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 812, '(347) 484-6415', 'bobby.hilpert@hotmail.com', 'Adeline Gutmann', '80915-1527', NULL, 5, 2, '1984-01-30 05:40:05', '2021-05-30 08:16:57', '2024-01-24 19:52:36', '1995-05-28 19:55:28', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 8730730, NULL, NULL, '2024-01-19 18:58:17', '2024-12-12 15:04:35', NULL, 2),
('5112c39d-d25b-31c0-81e1-215d2c189263', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 430, '929-544-2969', 'tremayne80@gmail.com', 'Dr. Camilla Runolfsdottir', '98619-0774', NULL, 3, 2, '1984-06-27 22:17:08', '1996-09-26 23:19:35', '2014-09-04 09:29:20', '1974-12-03 13:55:42', NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, 1.00, 4561496, 2436770.00, NULL, '2024-09-02 23:25:09', '2024-12-12 14:59:01', NULL, 2),
('54b97b60-7bfc-43d2-b484-7415f4f0e0e9', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', 'a5bdf6e2-3d08-4a08-b049-d9d732fc4f69', 3000000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000011', NULL, 2, 2, '2024-12-19 07:00:00', '2024-12-20 05:00:00', NULL, NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD2748', 0.00, 3100000, NULL, NULL, '2024-12-18 17:07:51', '2024-12-18 17:08:15', NULL, 2),
('70bbc27e-36ea-341d-a9eb-afd281f5f258', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 392, '936.762.0112', 'urohan@hotmail.com', 'Jermain Smith', '00308-1027', NULL, 3, 2, '2002-12-10 20:51:56', '2012-02-09 08:38:30', '2003-01-10 02:29:40', '2000-08-29 18:30:21', NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', NULL, 1.00, 6772388, 4966136.00, NULL, '2024-11-24 18:59:18', '2024-12-12 14:59:01', NULL, 2),
('72d0a2ba-1cb2-3e75-b8cf-907007bb522c', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 796, '+1-785-939-2760', 'schaefer.scottie@yahoo.com', 'Jaclyn Funk', '33947-7364', NULL, 5, 2, '2022-01-11 02:07:19', '2012-06-13 17:28:59', '1981-07-16 10:54:25', '2001-12-24 04:35:05', NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, 1.00, 2990294, NULL, NULL, '2024-08-10 23:49:35', '2024-12-12 15:04:35', NULL, 2),
('74a0176d-3dff-4f6b-9111-0b02cf0b189d', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 2500000, '0375343564', 'user2@gmai.com', 'user2', 'LHO-000008', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD7724', 0.00, 2500000, NULL, NULL, '2024-12-17 15:53:14', '2024-12-17 15:53:14', NULL, 2),
('7e7c2a2f-b867-11ef-9bc0-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', NULL, 1000000, '0987654321', 'email@gmail.com', 'user 1', 'code', NULL, 3, 2, '2024-10-24 01:37:53', '2024-10-26 14:37:53', '2024-10-24 01:00:00', '2024-10-26 13:37:53', NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, 0.00, 3000000, 3000000.00, NULL, '2024-10-11 17:00:00', NULL, NULL, 2),
('80640737-29e7-45c7-baaf-bd2c9fa456ce', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 2500000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000007', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD2601', 0.00, 2500000, NULL, NULL, '2024-12-17 15:52:06', '2024-12-17 15:52:06', NULL, 2),
('8162cc49-4414-47e6-9408-dc7b9435df37', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 1500000, '0375343564', 'user2@gmai.com', 'user2', 'LHO-000007', NULL, 4, 3, '2024-12-16 07:00:00', '2024-12-17 05:00:00', NULL, NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD7378', 0.00, 1830000, 0.00, 1, '2024-12-15 16:17:40', '2024-12-15 16:34:58', NULL, 2),
('82da1298-d29a-4c61-9fd4-b7387912293d', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 4069999, '0375343564', 'user2@gmai.com', 'user2', 'LHO-000010', NULL, 2, 2, '2024-12-16 07:00:00', '2024-12-17 05:00:00', NULL, NULL, 'eeeee', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD4580', 0.00, 4629999, NULL, NULL, '2024-12-16 15:04:33', '2024-12-16 15:05:55', NULL, 2),
('8c2cffc5-e03d-4d53-a297-3a2ff3b33cda', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 2500000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000005', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD4111', 0.00, 2500000, NULL, NULL, '2024-12-17 15:51:11', '2024-12-17 15:51:11', NULL, 2),
('91f12cb0-0d97-4097-91fe-2ef8ad00f6d6', '1d19d9f0-7e83-4b1f-9e92-216553434a60', 'a5bdf6e2-3d08-4a08-b049-d9d732fc4f69', 1500000, '0987654321', 'nguyenvana@gmail.com', 'kiennm', 'LHO-000004', NULL, 2, 2, '2024-12-14 07:00:00', '2024-12-15 05:00:00', NULL, NULL, 'note', '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD1586', 0.00, 1000000, NULL, NULL, '2024-12-14 10:03:29', '2024-12-15 16:35:50', NULL, 2),
('93687ea2-e43a-4220-a080-ff7627fc9691', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '0', 2070000, '0987654321', 'nguyenvana@gmail.com', 'Nguyễn Ngọc Ngạn', 'LHO-000001', NULL, 3, 2, '2024-12-09 07:00:00', '2024-12-10 05:00:00', NULL, NULL, NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD2814', 0.00, 2170000, 2170000.00, NULL, '2024-04-09 16:52:39', '2024-12-11 09:22:52', NULL, 2),
('9970adc8-7edc-4681-8f5c-b5a90d51a354', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 2500000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000009', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD4106', 0.00, 2500000, NULL, NULL, '2024-12-17 15:54:13', '2024-12-17 15:54:13', NULL, 2),
('9a2548b4-d82f-4001-ab26-94d894f33a2d', '76fddf47-f976-4840-9ce1-5f38aee722ba', '0', 4140000, '0987654311', 'kiennmph41026@fpt.edu.vn', 'kiennmph41026', 'LHO-000004', NULL, 2, 2, '2024-12-13 07:00:00', '2024-12-14 05:00:00', NULL, NULL, NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD7358', 0.00, 4220000, NULL, NULL, '2024-12-13 16:04:39', '2024-12-13 16:05:08', NULL, 2),
('9d89e2af-6ffe-3182-a9aa-18b3ff2a8c5a', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 453, '(904) 825-1488', 'mayer.zita@kshlerin.com', 'Isaac Kessler DDS', '14188', NULL, 3, 2, '2001-05-21 04:12:49', '2020-02-07 00:24:32', '2023-11-09 22:57:11', '1985-09-01 14:07:22', NULL, 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, 1.00, 3585125, 8997693.00, NULL, '2024-06-30 19:00:30', '2024-12-12 14:59:01', NULL, 2),
('a2d77782-6cad-44e1-9778-f00fbb07b2a7', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 3000000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000009', NULL, 1, 1, '2024-12-19 07:00:00', '2024-12-20 05:00:00', NULL, NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD6933', 0.00, 3100000, NULL, NULL, '2024-12-18 17:06:01', '2024-12-18 17:06:01', NULL, 2),
('ae2c59d6-28da-385c-a32f-9eccbe524e21', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 645, '847.319.3066', 'elinore.rogahn@hotmail.com', 'Susan Hagenes', '31977-3911', NULL, 5, 2, '1983-01-28 11:38:09', '1976-11-02 10:48:30', '1983-01-04 17:05:26', '2014-08-30 02:42:53', NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', NULL, 1.00, 3923223, NULL, NULL, '2024-07-25 16:40:43', '2024-12-12 15:04:35', NULL, 2),
('b555e799-a4d2-44fa-8981-8e53f0c04ba4', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 2500000, '0375343564', 'user2@gmai.com', 'user2', 'LHO-000013', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD8825', 0.00, 2500000, NULL, NULL, '2024-12-17 15:54:45', '2024-12-17 15:54:45', NULL, 2),
('b89af90f-da09-4328-881d-c33856845500', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', 'abdc18c7-cb38-4882-9201-2cbe14c49570', 2500000, '0819444446', 'user1@gmail.com', 'user 1', 'VQN63UJ4QV', NULL, 2, 2, '2024-12-19 07:00:00', '2024-12-20 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD9850', 0.00, 3000000, NULL, NULL, '2024-12-19 05:15:01', '2024-12-19 05:15:28', NULL, 2),
('ba46bd74-2f8e-4079-bca9-424a1174a38b', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 6210000, '0375343564', 'user2@gmai.com', 'user2', 'LHO-000009', NULL, 2, 2, '2024-12-16 07:00:00', '2024-12-17 05:00:00', NULL, NULL, NULL, '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD7171', 0.00, 6390000, NULL, NULL, '2024-12-16 14:58:00', '2024-12-16 15:00:44', NULL, 2),
('bb688690-dc5a-4eaa-856d-9c74774e86d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '0', 4140000, '0987654321', 'hello@gmail.com', 'hello', 'LHO-000002', NULL, 3, 2, '2024-12-11 07:00:00', '2024-12-12 05:00:00', NULL, NULL, 'hello', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'MRD4928', 0.00, 4220000, 4220000.00, NULL, '2024-03-11 14:13:21', '2024-12-11 14:13:57', NULL, 2),
('c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', '0', 7500000, '0819571811', 'user1@gmail.com', 'user1', 'LHO-000003', NULL, 2, 2, '2024-12-16 07:00:00', '2024-12-17 05:00:00', '2024-12-17 09:28:32', NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD1538', 0.00, 7500000, NULL, NULL, '2024-12-12 09:26:39', '2024-12-17 09:28:32', NULL, 2),
('e5a43052-03cf-4b37-8630-fdcaa45e338d', '76fddf47-f976-4840-9ce1-5f38aee722ba', '0', 3000000, '0976543212', 'xinchao@gmail.com', 'xinchao', 'LHO-000001', NULL, 3, 2, '2024-12-11 07:00:00', '2024-12-12 05:00:00', NULL, NULL, NULL, '7ac7513c-9f14-473c-947c-5d6422522faf', 'MRD4345', 0.00, 3050000, 3050000.00, NULL, '2024-12-11 15:39:16', '2024-12-11 15:40:47', NULL, 2),
('e98fe146-cc57-49ad-8c77-105c93fa8335', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 2500000, '0819444446', 'user1@gmail.com', 'user 1', 'LHO-000002', NULL, 1, 1, '2024-12-17 07:00:00', '2024-12-18 05:00:00', NULL, NULL, NULL, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'MRD1680', 0.00, 2500000, NULL, NULL, '2024-12-17 15:44:18', '2024-12-17 15:44:18', NULL, 2),
('f3249e45-415e-315b-b8eb-f233dfbba375', '1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 522, '+1-740-341-9876', 'ward.josefa@yahoo.com', 'Dr. Oswald Nitzsche', '93227', NULL, 5, 2, '1982-01-06 14:05:59', '2015-09-09 23:34:36', '2017-05-27 14:22:44', '1980-12-13 20:43:22', NULL, 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, 1.00, 2709255, NULL, NULL, '2024-09-21 00:04:53', '2024-12-12 15:04:35', NULL, 2),
('f61f36a1-ef44-362e-953b-77a0dc1431a0', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 897, '+1-283-649-8656', 'pouros.kamille@hotmail.com', 'Akeem Nicolas', '76306-6624', NULL, 3, 2, '1987-07-23 22:37:12', '1994-07-21 01:12:52', '1987-10-11 13:35:46', '2020-06-09 02:53:01', NULL, 'b99fad74-7cd9-4d77-b016-367f177cbd58', NULL, 1.00, 6089071, 6889863.00, NULL, '2024-12-15 09:13:23', '2024-12-12 14:59:01', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `room_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_codes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `quantity`, `room_id`, `room_codes`, `created_at`, `updated_at`, `deleted_at`) VALUES
('06a0dc38-9034-4092-b318-118db7f7874b', '9970adc8-7edc-4681-8f5c-b5a90d51a354', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:54:13', '2024-12-17 15:54:13', NULL),
('18fda34b-3983-488d-9ad0-c7c3d1a719cc', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 1, '3e1dc98b-0ca3-4166-b8c4-21d4115605d0', NULL, '2024-12-12 09:26:39', '2024-12-12 09:26:39', NULL),
('1a7a9abe-5f7f-406d-b2cc-76417bf7a8f3', '54b97b60-7bfc-43d2-b484-7415f4f0e0e9', 1, '3aecf66c-f53a-414e-9177-03b88ee55a72', NULL, '2024-12-18 17:07:51', '2024-12-18 17:07:51', NULL),
('1eceb575-d8df-49c2-92ac-8325b0a383a1', '8162cc49-4414-47e6-9408-dc7b9435df37', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-15 16:17:40', '2024-12-15 16:17:40', NULL),
('45bd9c72-4865-4a40-bd41-84dbefbe056f', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', 1, '2e5e671c-f44b-4dd7-bd6e-608bfd85b600', NULL, '2024-12-16 14:58:00', '2024-12-16 14:58:00', NULL),
('4cd77231-be15-4e8c-9eb3-dffb5093f5ca', 'bb688690-dc5a-4eaa-856d-9c74774e86d3', 1, '4e4fc5a4-36c5-4adf-9d63-1cf650875ca6', NULL, '2024-12-11 14:13:21', '2024-12-11 14:13:21', NULL),
('55219d86-c924-4711-a512-f277fd76564e', 'e98fe146-cc57-49ad-8c77-105c93fa8335', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:44:18', '2024-12-17 15:44:18', NULL),
('62cea693-6865-4184-a1fc-e31007d84a8c', 'e5a43052-03cf-4b37-8630-fdcaa45e338d', 1, '3aecf66c-f53a-414e-9177-03b88ee55a72', NULL, '2024-12-11 15:39:16', '2024-12-11 15:39:16', NULL),
('6afb87d3-4f8d-453b-a1c2-28f842fbd975', '9a2548b4-d82f-4001-ab26-94d894f33a2d', 1, '333a163d-322e-45ec-afe1-303f53a3cd89', NULL, '2024-12-13 16:04:39', '2024-12-13 16:04:39', NULL),
('6c8e0591-1be3-41f4-b0f3-22f6997d9b19', '80640737-29e7-45c7-baaf-bd2c9fa456ce', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:52:06', '2024-12-17 15:52:06', NULL),
('6e2050cf-4ee8-47e0-9d52-c5502d9bc32d', '74a0176d-3dff-4f6b-9111-0b02cf0b189d', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:53:14', '2024-12-17 15:53:14', NULL),
('8810bfd0-f754-4971-bf0e-6f33dcce05ce', 'e5a43052-03cf-4b37-8630-fdcaa45e338d', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-11 15:39:16', '2024-12-11 15:39:16', NULL),
('8906734c-9469-422b-a306-1a3f485cba2a', '93687ea2-e43a-4220-a080-ff7627fc9691', 1, '333a163d-322e-45ec-afe1-303f53a3cd89', NULL, '2024-12-09 16:52:39', '2024-12-09 16:52:39', NULL),
('8a93b2e0-2e74-44b0-ae93-14b0d6768c4a', '8c2cffc5-e03d-4d53-a297-3a2ff3b33cda', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:51:11', '2024-12-17 15:51:11', NULL),
('92f67204-4bc8-4900-b730-d73cbb5b32c4', '82da1298-d29a-4c61-9fd4-b7387912293d', 1, '3755b6ec-9793-40bb-a750-981b718c7c3b', NULL, '2024-12-16 15:04:33', '2024-12-16 15:04:33', NULL),
('a4a949ea-50f8-4269-8d40-d52ac88cf31a', '82da1298-d29a-4c61-9fd4-b7387912293d', 1, '0e74b0bb-b3e8-4b09-88cb-d2a36ca0567d', NULL, '2024-12-16 15:04:33', '2024-12-16 15:04:33', NULL),
('a6c2e790-9dd9-4341-9370-bd596adb6a75', '437e0f8e-6037-46cf-a995-2ee5b28e30ad', 1, '3aecf66c-f53a-414e-9177-03b88ee55a72', NULL, '2024-12-12 09:06:33', '2024-12-12 09:06:33', NULL),
('a8d25835-41e5-417f-b15f-895668f3e9b9', 'a2d77782-6cad-44e1-9778-f00fbb07b2a7', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-18 17:06:01', '2024-12-18 17:06:01', NULL),
('c1781dc6-db43-449d-abd6-dfcc2dd7ac1f', 'b555e799-a4d2-44fa-8981-8e53f0c04ba4', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-17 15:54:45', '2024-12-17 15:54:45', NULL),
('c351911a-3984-42d3-b39f-57e442b9c360', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', 1, '1455f123-7a1b-4baa-b28e-1b98f5886956', NULL, '2024-12-16 14:58:00', '2024-12-16 14:58:00', NULL),
('c82fc643-d891-4a34-8fe2-63f1b5c7f38b', 'ba46bd74-2f8e-4079-bca9-424a1174a38b', 1, '333a163d-322e-45ec-afe1-303f53a3cd89', NULL, '2024-12-16 14:58:00', '2024-12-16 14:58:00', NULL),
('ca7c9c56-6bb1-4c5c-8656-8c293b5f458c', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 1, '3aecf66c-f53a-414e-9177-03b88ee55a72', NULL, '2024-12-12 09:26:39', '2024-12-12 09:26:39', NULL),
('d1b03cb2-4c4f-4857-b900-a7bde790ca9f', '54b97b60-7bfc-43d2-b484-7415f4f0e0e9', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-18 17:07:51', '2024-12-18 17:07:51', NULL),
('d35506ec-c00c-464b-bb51-173ef9210e61', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 1, '45895d9d-cbe2-43f2-99cb-02653377b904', NULL, '2024-12-12 09:26:39', '2024-12-12 09:26:39', NULL),
('d3caf58c-1311-4788-ac97-66e498d9028d', '09748215-d3c4-4e58-a898-ed25329a43e0', 1, '0e74b0bb-b3e8-4b09-88cb-d2a36ca0567d', NULL, '2024-12-11 14:38:25', '2024-12-11 14:38:25', NULL),
('d4730e3b-b2cb-4dcd-be96-2a63872fbac3', 'a2d77782-6cad-44e1-9778-f00fbb07b2a7', 1, '3aecf66c-f53a-414e-9177-03b88ee55a72', NULL, '2024-12-18 17:06:01', '2024-12-18 17:06:01', NULL),
('e3045fe5-238d-4922-b893-a036ceea0aa4', '9a2548b4-d82f-4001-ab26-94d894f33a2d', 1, '2e5e671c-f44b-4dd7-bd6e-608bfd85b600', NULL, '2024-12-13 16:04:39', '2024-12-13 16:04:39', NULL),
('e3d24109-fcf4-4178-8831-d5fe352cbc27', 'bb688690-dc5a-4eaa-856d-9c74774e86d3', 1, '333a163d-322e-45ec-afe1-303f53a3cd89', NULL, '2024-12-11 14:13:21', '2024-12-11 14:13:21', NULL),
('eaf743ce-9cc2-491d-b20b-1610714dc5ca', 'b89af90f-da09-4328-881d-c33856845500', 1, '30e49371-a6b3-4086-baef-167c33900a4e', NULL, '2024-12-19 05:15:01', '2024-12-19 05:15:01', NULL),
('efc5171c-0882-4174-a592-1ecf12dd4636', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-12 09:26:39', '2024-12-12 09:26:39', NULL),
('f23bb195-0d63-4845-82b0-246e10e1abae', 'c3ba9af7-680c-4d15-88ce-3823b0ff6bf9', 1, '9f5d2dc9-27f2-4d67-83d6-cc594fe55e7e', NULL, '2024-12-12 09:26:39', '2024-12-12 09:26:39', NULL),
('f7e7b2a4-28b8-463c-962d-36d6f237e218', '91f12cb0-0d97-4097-91fe-2ef8ad00f6d6', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-14 10:03:29', '2024-12-14 10:03:29', NULL),
('fa64f490-4217-4ca8-97e2-191e72bf48ce', '437e0f8e-6037-46cf-a995-2ee5b28e30ad', 1, '124ec569-b36e-4734-af3f-2a9c9ec959f9', NULL, '2024-12-12 09:06:33', '2024-12-12 09:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `expires_at`) VALUES
(1, 'App\\Models\\User', '0', 'API Token', 'b1c8dd733209393f63668ffd62fdb8a623755eed493b6c91afc9271db068aed9', '[\"*\"]', NULL, '2024-10-07 14:47:10', '2024-10-07 14:47:10', NULL),
(2, 'App\\Models\\User', '0', 'API Token', 'ecef670de9f7cea6385536e9061ae2d67c7f59722f267eb20e756748f7839136', '[\"*\"]', NULL, '2024-10-07 14:47:48', '2024-10-07 14:47:48', NULL),
(3, 'App\\Models\\User', '0', 'API Token', '6b11f7f91db0c10c00e2d0f3901d29d9827253a75e94393d9b3011e078031016', '[\"*\"]', NULL, '2024-10-07 14:48:01', '2024-10-07 14:48:01', NULL),
(4, 'App\\Models\\User', '0', 'API Token', 'f5fdb78b789ecae99aa56b2ca0cadff041503e1cff80460fdc1fcbef6b8ccdc8', '[\"*\"]', NULL, '2024-10-07 14:48:25', '2024-10-07 14:48:25', NULL),
(5, 'App\\Models\\User', '0', 'API Token', 'fd7c62f5b802720cf26a513b4fbf845e1a509060994db726835ba7842647e928', '[\"*\"]', NULL, '2024-10-07 14:49:14', '2024-10-07 14:49:14', NULL),
(6, 'App\\Models\\User', '0', 'API Token', '67d0538647d94a2e1e8bbdeb0cb7cb8d10b2b2c4a80fe6c4a27a9663d01f4613', '[\"*\"]', NULL, '2024-10-07 14:50:12', '2024-10-07 14:50:12', NULL),
(7, 'App\\Models\\User', '0', 'API Token', '376953d2418833b5ebe5ec0af66fadaf0be82253cd2f33edb4bb52ffbfe217de', '[\"*\"]', NULL, '2024-10-07 14:50:22', '2024-10-07 14:50:22', NULL),
(8, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '7a2431628a523887276a48b025375c7305775e32317e9c65a39f8baa594de88b', '[\"*\"]', NULL, '2024-10-07 15:03:40', '2024-10-07 15:03:40', NULL),
(9, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '5acdc9f796f176f554b72ab64ef868dce34136dc6d794bbcdedf93a5bb90b48e', '[\"*\"]', NULL, '2024-10-07 15:03:53', '2024-10-07 15:03:53', NULL),
(11, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '0d97cbf96ee21d23a7e2466c75b329fd533739a5ddb6e14130ed74588c03b6d0', '[\"*\"]', NULL, '2024-10-14 15:53:38', '2024-10-14 15:53:38', NULL),
(12, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '3027a62dac4d3bf323a5215a9a8999f48ca28d21be9dc56f0eaa1766e5173bb1', '[\"*\"]', NULL, '2024-10-14 16:05:20', '2024-10-14 16:05:20', NULL),
(13, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '72cf528676969daae7744493184c8e8f22c0fab8310e54970585e9cb931837fd', '[\"*\"]', NULL, '2024-10-14 19:14:32', '2024-10-14 19:14:32', NULL),
(14, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '0eeff8e15ccaf55718ab94eca623d3edb068af810abe781f370f3ccfe96589c8', '[\"*\"]', NULL, '2024-10-14 19:39:20', '2024-10-14 19:39:20', NULL),
(15, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '315d6b32b79a7c6786d25d78a92e69e6bc490407eb4148e8d693071873a1a87a', '[\"*\"]', NULL, '2024-10-14 19:52:38', '2024-10-14 19:52:38', NULL),
(16, 'App\\Models\\User', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'API Token', '243f2e3ce213b495a042bd2e0d70dc079eea2840072b649d06c211c96d522777', '[\"*\"]', NULL, '2024-10-15 09:33:02', '2024-10-15 09:33:02', NULL),
(17, 'App\\Models\\User', '3db5b92c-ccb1-4b08-be66-33be4d19f26c', 'API Token', 'aa054312c4a9cf5ebecfaf60f5e5f819f168a8692647abe73c1c62bf40133c39', '[\"*\"]', '2024-10-29 11:27:17', '2024-10-29 10:55:04', '2024-10-29 11:27:17', NULL),
(18, 'App\\Models\\User', '3db5b92c-ccb1-4b08-be66-33be4d19f26c', 'API Token', '1edea92a6c505e1fb9757b68e00064b122573a0f0758fb89faaaf2315c6f7a3e', '[\"*\"]', NULL, '2024-11-01 02:02:58', '2024-11-01 02:02:58', NULL),
(19, 'App\\Models\\User', '3db5b92c-ccb1-4b08-be66-33be4d19f26c', 'API Token', '26e5a4c00620c5cd7e2505f8b13006f384613f4bd185b0e17cd0ead6c60bb01f', '[\"*\"]', NULL, '2024-11-24 11:37:04', '2024-11-24 11:37:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `hotel_id`, `rate`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
('2e03690e-b577-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 5, 'Sạch sẽ ,nhân viên thân thiện.vị trí Sạch sẽ ,nhân viên thân thiện.vị trí tiện cho việc đi lạiSạch sẽ ,nhân viên thân thiện.vị trí tiện cho việc đi lạitiện cho việc đi lại', '2024-12-01 15:25:34', '2024-12-11 09:15:44', NULL),
('2e03759f-b577-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 4, 'Nhân viên thân thiện\r\n', '2024-12-03 17:00:00', NULL, NULL),
('50763f98-b578-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, 'Hmm đồ ăn ko ngon', '2023-12-21 15:26:07', NULL, NULL),
('56a4ddce-b577-11ef-90b5-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 5, 'Đây là một lựa chọn lý tưởng cho chuyến công tác của tôi.', '2023-12-29 17:00:00', NULL, NULL),
('56a4e80c-b577-11ef-90b5-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 4, 'Phòng rất sạch sẽ, nhân viên thân thiện\r\n\r\n', '2024-12-24 15:26:31', NULL, NULL),
('67fd6ad8-b578-11ef-90b5-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 3, 'Cũng tạm được, nhà vệ sinh có chút bẩn', '2024-12-12 17:00:00', NULL, NULL),
('7b423070-b578-11ef-90b5-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 5, 'tuyệt vời', '2024-12-23 15:26:40', '2024-12-11 09:15:45', NULL),
('7c03b9b2-b577-11ef-90b5-f4ee08c6e7d3', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 3, 'Phòng tạm được so với giá. Đồ ăn sáng ko đa dạng, ngày nào cũng giống nhau.', '2024-12-04 15:26:58', NULL, NULL),
('7c03c0e0-b577-11ef-90b5-f4ee08c6e7d3', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 5, 'Khách sạn có bầu không khí thư giãn, bữa sáng ngon miệng\r\n', '2024-12-13 17:00:00', NULL, NULL),
('d2db3256-b577-11ef-90b5-f4ee08c6e7d3', '76fddf47-f976-4840-9ce1-5f38aee722ba', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 2, 'Khá tệ, an ninh ở đây ko tốt', '2024-12-19 17:00:00', '2024-12-17 09:57:12', NULL),
('d2db392b-b577-11ef-90b5-f4ee08c6e7d3', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 5, 'Khách sạn có vị trí hoàn hảo để tham quan, với nhiều nhà hàng', '2024-12-19 15:26:50', '2024-12-11 09:15:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('6ab50647-1650-4866-8da7-934154dabe39', 'Miền Bắc', '2024-12-05 17:04:05', '2024-12-17 09:40:50', NULL),
('b628f22b-c5c7-4fb7-a451-3a76999c97af', 'Miền Nam', '2024-12-05 17:04:12', '2024-12-05 17:04:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalogue_room_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `hotel_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `catalogue_room_id`, `status`, `hotel_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03b83710-e6ce-4d6b-a7a4-503309ec593c', 'LHR-000006', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:10', '2024-12-19 05:21:10', NULL),
('0cb231a8-06a6-40be-ab4a-e1acbec3dcb2', 'LHR-000004', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 2, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-17 09:50:06', '2024-12-17 09:50:06', NULL),
('0e74b0bb-b3e8-4b09-88cb-d2a36ca0567d', 'LHR-000012', '60682aa5-c3d9-4482-bd87-ad66ea64b012', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:36:28', '2024-12-11 14:36:28', NULL),
('124ec569-b36e-4734-af3f-2a9c9ec959f9', 'LHR-000002', '8869254d-94cd-4fd4-b8ef-b274af58565e', 4, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-11 15:35:47', '2024-12-11 15:35:47', NULL),
('1455f123-7a1b-4baa-b28e-1b98f5886956', 'LHR-000018', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-16 14:05:44', '2024-12-16 14:06:29', NULL),
('2e5e671c-f44b-4dd7-bd6e-608bfd85b600', 'LHR-000015', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:36:51', '2024-12-11 14:36:51', NULL),
('30e49371-a6b3-4086-baef-167c33900a4e', 'LHR-000003', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 3, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-17 09:50:02', '2024-12-17 09:50:02', NULL),
('333a163d-322e-45ec-afe1-303f53a3cd89', 'LHR-000011', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:45', '2024-12-08 15:04:45', NULL),
('3755b6ec-9793-40bb-a750-981b718c7c3b', 'LHR-000013', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:36:38', '2024-12-11 14:36:38', NULL),
('3aecf66c-f53a-414e-9177-03b88ee55a72', 'LHR-000004', '8869254d-94cd-4fd4-b8ef-b274af58565e', 4, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-11 15:35:53', '2024-12-11 15:35:53', NULL),
('3e1dc98b-0ca3-4166-b8c4-21d4115605d0', 'LHR-000003', '8869254d-94cd-4fd4-b8ef-b274af58565e', 4, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-11 15:35:49', '2024-12-11 15:35:49', NULL),
('45895d9d-cbe2-43f2-99cb-02653377b904', 'LHR-000005', '8869254d-94cd-4fd4-b8ef-b274af58565e', 4, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-11 15:36:13', '2024-12-13 16:01:11', NULL),
('47736b8e-9d33-42a1-9f92-20995a0f4098', 'LHR-000010', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:23', '2024-12-19 05:21:23', NULL),
('4e4fc5a4-36c5-4adf-9d63-1cf650875ca6', 'LHR-000007', '47231d1b-ed88-441f-b12c-2c811879c614', 3, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:30', '2024-12-08 15:04:30', NULL),
('595fa67c-a644-4158-a7b5-ed85684cc00b', 'LHR-000007', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:13', '2024-12-19 05:21:13', NULL),
('5e32d5c4-810e-4a2a-b605-561ad928fe85', 'LHR-000008', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:34', '2024-12-08 15:04:34', NULL),
('615247b1-ce9b-4133-aedb-47189c46728a', 'LHR-000011', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:26', '2024-12-19 05:21:26', NULL),
('6c4d23a8-2857-4bc0-a531-a9d8d65132e7', 'LHR-000005', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 1, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-17 09:50:12', '2024-12-17 09:50:12', NULL),
('7474130d-12bc-42a4-9fc7-eb4eccf74109', 'LHR-000001', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-16 15:36:59', '2024-12-16 15:36:59', NULL),
('96d1300e-8013-4771-9a84-5ca5c6a6ad11', 'LHR-000002', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-06 09:23:58', '2024-12-06 09:23:58', NULL),
('9f5d2dc9-27f2-4d67-83d6-cc594fe55e7e', 'LHR-000001', '8869254d-94cd-4fd4-b8ef-b274af58565e', 4, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-11 15:35:44', '2024-12-11 15:35:44', NULL),
('a6d16946-7e65-4f12-89cb-7b5801a8e929', 'LHR-000017', '60682aa5-c3d9-4482-bd87-ad66ea64b012', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:37:31', '2024-12-11 14:37:31', NULL),
('aa0702a9-e59e-484a-ad2a-ff91aed27b12', 'LHR-000006', '8869254d-94cd-4fd4-b8ef-b274af58565e', 1, '7ac7513c-9f14-473c-947c-5d6422522faf', '2024-12-17 09:50:51', '2024-12-17 09:50:51', NULL),
('b040fe93-b9a7-481f-b656-43182d586486', 'LHR-000008', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:17', '2024-12-19 05:21:17', NULL),
('bc126b57-61a0-4338-8bc1-39626b5c1f86', 'LHR-000019', '60682aa5-c3d9-4482-bd87-ad66ea64b012', 2, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-17 09:51:05', '2024-12-17 09:51:12', NULL),
('bc338764-5fe9-4a95-b1f1-91a3e2cf6b79', 'LHR-000005', '47231d1b-ed88-441f-b12c-2c811879c614', 1, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:14', '2024-12-08 15:04:14', NULL),
('beec2469-a925-4095-b620-0fffbac8006b', 'LHR-000001', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-06 09:23:53', '2024-12-06 09:23:53', NULL),
('cad10450-e00b-4e86-aec4-18451f0f0ca2', 'LHR-000006', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:24', '2024-12-08 15:04:24', NULL),
('cde7c30a-aa97-47ca-b64f-ba5304082ed6', 'LHR-000009', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-19 05:21:20', '2024-12-19 05:21:20', NULL),
('d121cb5d-02a8-4b99-bdb8-c71f90e423e3', 'LHR-000014', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:36:41', '2024-12-11 14:36:41', NULL),
('d20242c0-6e19-4df4-a394-ee9a86c1b8bf', 'LHR-000002', 'b819008c-b16a-460a-a381-e4f6252ccd8a', 4, 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', '2024-12-16 15:37:03', '2024-12-16 15:37:03', NULL),
('d3e9b51c-3a55-4ed9-beaa-4846c933f24c', 'LHR-000016', '60682aa5-c3d9-4482-bd87-ad66ea64b012', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-11 14:37:20', '2024-12-11 14:37:20', NULL),
('fbd3bd07-b4e0-47aa-884b-6fd491f6a16d', 'LHR-000003', '47231d1b-ed88-441f-b12c-2c811879c614', 2, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:04', '2024-12-08 15:04:04', NULL),
('fbeabda5-bf78-4b6e-9a9d-05d5d435cf9f', 'LHR-000009', '47231d1b-ed88-441f-b12c-2c811879c614', 4, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:37', '2024-12-08 15:04:37', NULL),
('fd889fce-69bb-47d0-9107-4e2abcd85624', 'LHR-000004', '47231d1b-ed88-441f-b12c-2c811879c614', 3, '1ea03be9-58d8-422b-b20c-4f6493d9d066', '2024-12-08 15:04:11', '2024-12-08 15:04:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `type` tinyint(1) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hotel_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `type`, `description`, `hotel_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('9da90c64-2a87-4b2b-a778-c04a8fbcf651', 'Đồ vệ sinh cá nhân miễn phí', 0, 1, 'Đồ vệ sinh cá nhân miễn phí', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-06 14:03:49', '2024-12-06 14:03:49', NULL),
('9da90f6b-b038-4f8f-8f8c-01960c89dd9d', 'Dịch vụ streaming (như là Netflix)', 50000, 2, 'Dịch vụ streaming (như là Netflix)', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 2, '2024-12-06 14:12:17', '2024-12-17 08:12:08', NULL),
('9da91537-6fb5-4b1e-8bb6-f050beb9a21a', 'WiFi miễn phí', 0, 2, 'WiFi miễn phí', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-06 14:28:29', '2024-12-18 16:05:12', NULL),
('9dad233f-7212-4e91-b46b-9f23cb2ae341', 'Dịch vụ báo thức', 0, 2, 'Dịch vụ báo thức', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:51:02', '2024-12-08 14:51:02', NULL),
('9dad23c8-14c2-4747-a210-f0310fd21da1', 'Dọn phòng', 0, 2, 'Dọn phòng', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:52:32', '2024-12-08 14:52:32', NULL),
('9dad23e1-690e-4d02-86e6-0feef00cc1e6', 'Nhà hàng và quán bar', 100000, 1, 'Nhà hàng và quán bar', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:52:48', '2024-12-08 14:52:48', NULL),
('9dad23fb-e22d-4eac-8315-62f7ef16ce4e', 'Phòng gym', 50000, 1, 'Phòng gym', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:53:06', '2024-12-08 14:53:06', NULL),
('9dad241d-7bd0-49e2-ba01-f26869f0c37a', 'Dịch vụ đưa đón', 80000, 1, 'Dịch vụ đưa đón', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:53:28', '2024-12-08 14:53:28', NULL),
('9dad2432-fdba-4adc-a429-df97bdd92efc', 'Hồ bơi', 0, 2, 'Hồ bơi', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:53:42', '2024-12-18 16:05:04', NULL),
('9dad245d-1fec-4b25-b6ff-c91c58dc2386', 'Spa và chăm sóc sức khỏe', 200000, 1, 'Spa và chăm sóc sức khỏe', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 1, '2024-12-08 14:54:09', '2024-12-08 14:54:09', NULL),
('9db33ce8-814e-46e4-8bcb-db0df3ab3d35', 'Đưa đón', 50000, 1, 'Đưa đón', '7ac7513c-9f14-473c-947c-5d6422522faf', 1, '2024-12-11 15:37:45', '2024-12-11 15:38:40', NULL),
('9dbd480d-e9ac-49a2-bdad-976765c3feb7', 'Massage', 500000, 1, 'massage', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 1, '2024-12-16 15:27:12', '2024-12-18 16:06:08', NULL),
('9dbd7836-ac36-4890-bd7e-fc623671ed81', 'Massage', 100000, 1, 'massage', 'b99fad74-7cd9-4d77-b016-367f177cbd58', 1, '2024-12-16 17:41:52', '2024-12-18 16:06:00', NULL),
('9dbf2bba-1a07-4644-981e-3e4c5741b122', 'Wifi miễn phí', 0, 2, 'Wifi miễn phí', '7ac7513c-9f14-473c-947c-5d6422522faf', 1, '2024-12-17 13:59:39', '2024-12-18 16:05:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cccd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `rank` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default-avatar.png',
  `type` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `total_amount_ordered` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `org_id`, `name`, `email`, `phone`, `address`, `password`, `cccd`, `is_active`, `rank`, `remember_token`, `email_verified_at`, `avatar`, `type`, `created_at`, `updated_at`, `deleted_at`, `group_id`, `total_amount_ordered`) VALUES
('05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', NULL, 'user2', 'user2@gmai.com', '0375343564', NULL, '$2y$10$Mwm8OTNXRaazH1qhz2GqXuac2gLedfIR8kMxhoy3EOHLGLDZ4dR/u', NULL, 1, 0, NULL, NULL, 'users/egDTeiJKSGAZqI4h7mRI74Mh2bey31ydtFFRAMpP.png', 1, '2024-12-12 09:21:18', '2024-12-18 08:46:35', NULL, 1, 0),
('1d19d9f0-7e83-4b1f-9e92-216553434a60', NULL, 'Quách Hoàng Nam', 'adminminha@gmail.com1111', '0819571811', NULL, '$2y$10$9W/oWfz6ySfMVSFC3.v41e37g12rfIz9g9GmcmveCfPHIQytc/Pvq', NULL, 1, 0, '9FlkzOt93jPGkcnb7EtTnuftBoMmxChmKrGo77Zp2m2DXxHRt0nYqeb6vpuM', NULL, NULL, 2, '2024-10-29 14:21:25', '2024-12-18 08:18:03', NULL, 2, 0),
('2c3d4b99-cda5-4783-9c25-3fb75ff57fca', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'nhân viên 1', 'staff1@gmail.com', '01222333444', 'HN', '$2y$10$968T9t9LDVOXMMQKxNICSOoZJzZAmV58ZowQm0BcLxKBgnGl.0PBi', NULL, 1, 0, NULL, NULL, 'users/NeiJxuVmsQTfMvmXo1hkxEh0hELzmfkhjcOYefP9.png', 4, '2024-12-16 08:05:04', '2024-12-16 08:06:12', NULL, 4, 0),
('76fddf47-f976-4840-9ce1-5f38aee722ba', '7ac7513c-9f14-473c-947c-5d6422522faf', 'kiendz', 'kiennmph41026@fpt.edu.vn', '0987654321', 'Hà Nội', '$2y$10$l6BMzrlcZERmHRE2DVTWyeG2tuKa8GH53GT8te9HQ1DAxksN/PUme', NULL, 1, 0, NULL, NULL, 'users/UwDoxq2yxRuCBGOuKFvLPXHODsihiN8hd6sw1ZNS.jpg', 3, '2024-12-07 15:11:09', '2024-12-17 14:44:46', NULL, 3, 0),
('914de2a3-dadf-4d40-9c2e-8d9ee56c1e0c', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'user 2', 'user2@gmail.com', '01234111222', 'HN', '$2y$10$bgO5ul5h02XtWMAoqp6ZUuEhAx.3eELfikY3BJzTK4ANrmZXtZKW.', NULL, 0, 0, NULL, NULL, 'users/erowFzhEn3bFhd2Y8fg46OKDQZH1ei99pPfx4U1V.jpg', 4, '2024-12-17 14:54:32', '2024-12-18 08:46:55', NULL, 4, 0),
('a8c61ac1-c342-4c17-bde4-a516c69e9f17', '1ea03be9-58d8-422b-b20c-4f6493d9d066', 'namhotelier', 'nam@gmail.com', '0819444441', 'dsfdfsdfdsf', '$2a$12$E4lDvQVbeHHpit9VYoesGOTCHrlF3dubijw7iucDP.ncZk8Vb5Vl.', NULL, 1, 0, NULL, NULL, 'users/7pWXdPcoqyC8RbNoMCbNm59KHx2ySpwuyEqcBn21.jpg', 3, '2024-10-07 14:41:15', '2024-12-18 08:54:30', NULL, 3, 0),
('b9ad78ea-ee44-49b0-a131-e3a94c372a17', NULL, 'user 1', 'user1@gmail.com', '0819444446', 'Hà nội', '$2a$12$E4lDvQVbeHHpit9VYoesGOTCHrlF3dubijw7iucDP.ncZk8Vb5Vl.', '001203045678', 1, 2, NULL, NULL, 'users/Vq7uBkgTzTa1QRNdICFbrTOY8eZXNk3e5nN8pWn3.png', 1, '2024-12-08 13:55:45', '2024-12-12 09:22:56', NULL, 1, 6500000),
('c396f295-54df-4dae-9fad-f4c0116e86f9', 'd613f689-af3a-48c1-889a-7e80b3a1a9ce', 'hotelier1', 'hotelier1@gmail.com', '02333444555', 'Hà nội', '$2y$10$GYIIt2VkIY6JgsUl8Cv3o.SlgAjIDY/.Qji6clGgtputYi3dIRlD6', NULL, 1, 0, NULL, NULL, 'users/dlolje01vhcsQnHT2bRTw5cbMBXAU68LDPkDX8UR.jpg', 3, '2024-12-16 15:25:09', '2024-12-18 08:46:47', NULL, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `discount_type` tinyint NOT NULL,
  `discount_value` double NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `conditional_total_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hotel_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `description`, `status`, `thumbnail`, `quantity`, `discount_type`, `discount_value`, `start_date`, `end_date`, `max_price`, `conditional_total_amount`, `created_at`, `updated_at`, `deleted_at`, `hotel_id`) VALUES
('58b829c8-9e54-46f5-9cc6-67b1867d28ee', 'UVMM8PWFUS', 'sfdsfds', 1, 'images/1734584894.png', 1000, 0, 10000, '2024-12-19', '2024-12-26', 100000, 1000, '2024-12-19 05:08:18', '2024-12-19 05:08:18', NULL, NULL),
('a5bdf6e2-3d08-4a08-b049-d9d732fc4f69', 'DYVWPNLT3U', 'ko có', 1, 'images/1733564113.PNG', 0, 0, 500000, '2024-12-18', '2024-12-21', 500000, 2000000, '2024-12-07 09:35:14', '2024-12-18 17:08:15', NULL, NULL),
('abdc18c7-cb38-4882-9201-2cbe14c49570', 'OVZY2DFYZK', '0000', 1, 'images/1734585174.png', 1110, 1, 10, '2024-12-19', '2024-12-27', 100000, 100, '2024-12-19 05:12:54', '2024-12-19 05:15:28', NULL, NULL),
('e6d14474-2c9a-43ac-ab0a-3421e920af8e', 'JGGDOCSJA8', '333', 1, 'images/1734489398.jpg', 3, 0, 50000, '2024-12-18', NULL, 3333, 3333, '2024-12-18 02:36:38', '2024-12-18 09:56:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `voucher_id`) VALUES
('067a422a-3f4d-4b1d-ac48-9525de6d2f95', '1d19d9f0-7e83-4b1f-9e92-216553434a60', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('24ad0cca-f3c1-4385-805a-27aed0f58de4', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('35f7f2f1-ccc1-4839-aa4d-3b37e27e109a', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('381568b5-2d1a-4940-acbb-8f5851ce4af4', 'c396f295-54df-4dae-9fad-f4c0116e86f9', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('3e67495b-8526-4336-98c8-34c8acf21985', 'c396f295-54df-4dae-9fad-f4c0116e86f9', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('6bfccc5a-a767-49c9-a55c-27c1124cf112', '2c3d4b99-cda5-4783-9c25-3fb75ff57fca', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('7463a188-18e7-4bc7-a56d-9c3a2ad09ea2', '2c3d4b99-cda5-4783-9c25-3fb75ff57fca', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('8ec3a0e1-1621-4ebf-827f-4c3c22341fbc', 'c396f295-54df-4dae-9fad-f4c0116e86f9', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('8fde0463-d86b-4d4e-92b8-1f4411683b38', '1d19d9f0-7e83-4b1f-9e92-216553434a60', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('988e406f-22cc-44de-b57b-e122e80384b5', '76fddf47-f976-4840-9ce1-5f38aee722ba', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('9a489d14-382f-4eac-a947-c27ace894389', '914de2a3-dadf-4d40-9c2e-8d9ee56c1e0c', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('a71e0c17-1809-4540-87fb-96ba52fc53b2', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('a7f42078-5ed4-4cf2-af28-80e3ad6bee6c', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('b277ab81-3191-41cd-b58c-1de22ec6449f', '1d19d9f0-7e83-4b1f-9e92-216553434a60', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('bbe91c66-d9e5-45cc-b485-8dc21e364446', '914de2a3-dadf-4d40-9c2e-8d9ee56c1e0c', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('bcede35b-03fa-4f9b-b679-12ceb9d8abc9', '05f96c45-cec9-49a9-b7e6-f5168b8ca4c4', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('d439fd32-fce3-4789-8da6-4836d915acc8', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e'),
('deaa760f-4697-499a-a162-8ffa51f8d881', '914de2a3-dadf-4d40-9c2e-8d9ee56c1e0c', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('df850c91-5795-4c46-90a0-362ff3214797', '76fddf47-f976-4840-9ce1-5f38aee722ba', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('e0361b51-de33-49ce-b59d-6df3fec8c29b', '2c3d4b99-cda5-4783-9c25-3fb75ff57fca', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('e3ee18a4-3484-4eec-b5c1-e34459c93808', 'b9ad78ea-ee44-49b0-a131-e3a94c372a17', '58b829c8-9e54-46f5-9cc6-67b1867d28ee'),
('eb4510a0-32f9-4be4-9d34-1812673667f6', '76fddf47-f976-4840-9ce1-5f38aee722ba', 'abdc18c7-cb38-4882-9201-2cbe14c49570'),
('eb674226-f699-4441-87f7-33cc37bfe226', 'a8c61ac1-c342-4c17-bde4-a516c69e9f17', 'e6d14474-2c9a-43ac-ab0a-3421e920af8e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_services`
--
ALTER TABLE `booking_services`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `catalogue_rooms`
--
ALTER TABLE `catalogue_rooms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `catalogue_room_attribute`
--
ALTER TABLE `catalogue_room_attribute`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_key_codes`
--
ALTER TABLE `common_key_codes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groups_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `incidental_costs`
--
ALTER TABLE `incidental_costs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`phone`) USING BTREE;

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
