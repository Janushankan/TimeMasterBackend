-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 04:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timemaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add task', 8, 'add_task'),
(30, 'Can change task', 8, 'change_task'),
(31, 'Can delete task', 8, 'delete_task'),
(32, 'Can view task', 8, 'view_task'),
(33, 'Can add auth token', 9, 'add_authtoken'),
(34, 'Can change auth token', 9, 'change_authtoken'),
(35, 'Can delete auth token', 9, 'delete_authtoken'),
(36, 'Can view auth token', 9, 'view_authtoken');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$AQ2QJqXvBWgopj9UfbJ6vU$q/AS3mPA7AbxQ/Wxec+GgS/bBYIoXo4lXYw2ZQwTV1E=', '2024-01-30 14:44:13.527476', 0, 'janu', '', '', 'janu@gmail.com', 0, 1, '2024-01-23 11:39:50.777205'),
(2, 'pbkdf2_sha256$600000$CtZYlrS4iVMX417dpttbjs$I+K5QEXEme7OYPLc69h9hPthyhdRVzxUeQ7XyCGTyPA=', '2024-01-23 11:58:45.148343', 0, 'dilmi', '', '', 'dilmi@gmail.com', 0, 1, '2024-01-23 11:58:34.348225'),
(3, 'pbkdf2_sha256$600000$yXeTf2j6uFlWyMrthd7SaX$zlLF1EICx6Gmri61/b4HaySU4NDZS5UvXVZn9KhZ6Us=', '2024-01-27 13:53:34.159717', 0, 'dinuk', '', '', 'dinuk@gmail.com', 0, 1, '2024-01-27 10:38:02.459452'),
(4, 'pbkdf2_sha256$600000$WGudsQtibG76hS2wTpKW91$1VFio8kkTnOcFignLKpHnu2g1qmpaJyaH0ZzIW6JvrM=', '2024-01-30 03:05:54.318328', 0, 'user', '', '', 'user@gmail.com', 0, 1, '2024-01-30 03:05:42.090356'),
(5, 'pbkdf2_sha256$600000$JQaLOV6cwes8n7zwv8WoFG$OErf+GqFRJPLCC5FztJfyUeSKf4bs7cTvXB9cxNt3qE=', '2024-01-30 09:07:21.120683', 0, 'SharuCroos', '', '', 'dukesharu@gmail.com', 0, 1, '2024-01-30 08:58:25.579908'),
(6, 'pbkdf2_sha256$600000$EqeDzjoxGrtYPbbqxMROd2$pSqufUSJz/BzkWxlPsljTzIc1aOwIqcz29eyxIr5FJs=', '2024-01-30 09:09:01.571204', 0, 'cst20101', '', '', 'cst20101@std.uwu.ac.lk', 0, 1, '2024-01-30 09:08:36.066178'),
(7, 'pbkdf2_sha256$600000$fOVskatCDbumthIgRa6Dbf$8VA5/HKjwNWV9X9JvE0gC8pS5LJoms3wtXEYhkduItI=', '2024-01-30 10:34:33.057877', 0, 'Dil', '', '', 'dilmi@gmail.com', 0, 1, '2024-01-30 10:34:18.467651');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'knox', 'authtoken'),
(6, 'sessions', 'session'),
(7, 'TimeMaster', 'student'),
(8, 'TimeMaster', 'task');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'TimeMaster', '0001_initial', '2023-12-18 15:37:48.704745'),
(2, 'TimeMaster', '0002_task', '2023-12-18 15:37:48.738231'),
(3, 'contenttypes', '0001_initial', '2023-12-18 15:37:48.786137'),
(4, 'auth', '0001_initial', '2023-12-18 15:37:49.438959'),
(5, 'admin', '0001_initial', '2023-12-18 15:37:49.589765'),
(6, 'admin', '0002_logentry_remove_auto_add', '2023-12-18 15:37:49.597781'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-18 15:37:49.614124'),
(8, 'contenttypes', '0002_remove_content_type_name', '2023-12-18 15:37:49.699513'),
(9, 'auth', '0002_alter_permission_name_max_length', '2023-12-18 15:37:49.752654'),
(10, 'auth', '0003_alter_user_email_max_length', '2023-12-18 15:37:49.770422'),
(11, 'auth', '0004_alter_user_username_opts', '2023-12-18 15:37:49.775726'),
(12, 'auth', '0005_alter_user_last_login_null', '2023-12-18 15:37:49.833828'),
(13, 'auth', '0006_require_contenttypes_0002', '2023-12-18 15:37:49.838531'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2023-12-18 15:37:49.854476'),
(15, 'auth', '0008_alter_user_username_max_length', '2023-12-18 15:37:49.868281'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2023-12-18 15:37:49.882795'),
(17, 'auth', '0010_alter_group_name_max_length', '2023-12-18 15:37:49.899025'),
(18, 'auth', '0011_update_proxy_permissions', '2023-12-18 15:37:49.916574'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2023-12-18 15:37:49.934214'),
(20, 'sessions', '0001_initial', '2023-12-18 15:37:49.983280'),
(21, 'knox', '0001_initial', '2024-01-23 11:32:44.840045'),
(22, 'knox', '0002_auto_20150916_1425', '2024-01-23 11:32:44.983196'),
(23, 'knox', '0003_auto_20150916_1526', '2024-01-23 11:32:45.006103'),
(24, 'knox', '0004_authtoken_expires', '2024-01-23 11:32:45.006103'),
(25, 'knox', '0005_authtoken_token_key', '2024-01-23 11:32:45.042075'),
(26, 'knox', '0006_auto_20160818_0932', '2024-01-23 11:32:45.124970'),
(27, 'knox', '0007_auto_20190111_0542', '2024-01-23 11:32:45.141076'),
(28, 'knox', '0008_remove_authtoken_salt', '2024-01-23 11:32:45.158540'),
(29, 'TimeMaster', '0003_task_color', '2024-01-30 08:30:26.306512');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('05yogelh8zxshtzv44e6hi7yqt4x2z7p', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSy0o:hGvfoOBjyIuGNT4-TZVaURpPWoTuKwlsqIhKgxKeTxE', '2024-02-08 11:35:14.195772'),
('1aws8qj8v3cpzxxhialwg20qvgupvps2', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rTkrd:G5jQhnbfnB5pLfXZX3Bj2_I7W6h4VzwbWmsgJ5NchyM', '2024-02-10 15:45:01.659816'),
('1zd28sjipym2lj5iikgov381zy42mn8x', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwcs:5iqkvkMZ08Q-r7lMCNl-Z2QvYk_65Rp6MtFYujeb4hg', '2024-02-08 10:06:26.798321'),
('1zmle90mwotu8ffnyd87o75fz5wsmo75', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSJVZ:JQ5P1lXexH_eRvOIlemMgu2zCiYVifRDaOeWTyjXRHs', '2024-02-06 16:20:17.321878'),
('25qo6vudw72cfvb2xs9mrv7oveib91x3', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSx13:sHiBv1jPvxxh-lBFOSjAaAv3Ucs2mO_JxnJ6R61aPn4', '2024-02-08 10:31:25.198138'),
('2rx3e5phbhed61txm37jfb74zcg03fqa', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTf8z:kLgWgYLt2mXDCeDrT04GEx28Sg1TF3iseLkFcGsnngM', '2024-02-10 09:38:33.834972'),
('2u1wj8qeintltpla9g9qzy9fnr2bpu8h', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTg7f:dB-4vFuTE2nLzai-2maLDgc7t4jD-mWn96C8OUgFIB4', '2024-02-10 10:41:15.877439'),
('30rv3bccwt8cgpy9q2dlyt2f0sf2t2ow', '.eJxVjDsOwjAQBe_iGlmOjX-U9DmDtdld4wCypTipEHeHSCmgfTPzXiLBtpa0dV7STOIirDj9bhPgg-sO6A711iS2ui7zJHdFHrTLsRE_r4f7d1Cgl2_tsj3DFHUAhwRZu0DWKO89kXcRIqIeHDIRoc6KGbOOwRjrvEH2gxLvD_-WOHk:1rUjx3:BDPvB7Qyu5pFWG58h8xyLDMt5emNyMTdivYHi_950I0', '2024-02-13 08:58:41.230626'),
('3bf89lhj68vyo46ch0d02oha1xxluau4', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUlcv:PtrIiI5GG2V_DgHNVfH0QEl5unagnebWzTUvrzaaqAU', '2024-02-13 10:46:01.366214'),
('3p3ymscsm8siar33u631s9ygnkbl00iu', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSxGu:yhptvnZ8FuHHDDgzDdHt0-e4pvwc6Y8RkE_bmJpKpFU', '2024-02-08 10:47:48.748477'),
('50ror0zim0yw7a3pwwh8zfgoh42zl4pj', '.eJxVjEEOwiAQRe_C2hAYWhxcuu8ZyAwDUjVtUtqV8e7apAvd_vfef6lI21rj1vISR1EXZdXpd2NKjzztQO403Wad5mldRta7og_a9DBLfl4P9--gUqvf2icUcZkcmpIBkEIX2OQgvmdBjyhQGJmCA2t6cuAgFPTFYemA7Vm9P-8cN7c:1rTgv0:0DilNW3-0oCar6Ju-ZFhfjNlXsJkGESzpU_nsZ5Oo_M', '2024-02-10 11:32:14.828051'),
('5rqpp11406cr3o8j4hylgmwovihqcml9', '.eJxVjDsOwjAQBe_iGlkm_i4lfc5g7dpeHECOFCcV4u4QKQW0b2beS0Tc1hq3XpY4ZXERWpx-N8L0KG0H-Y7tNss0t3WZSO6KPGiX45zL83q4fwcVe_3Wtjj0CiB5g87bAORpMKyBMjADq8KWAmiTkk5OD4FVgBJsOHttHJN4fwDg7Tev:1rTgCd:PgYQ3J1gWPKTW44MXWXC1UQVC1R9O4SN2humhP-g7ek', '2024-02-10 10:46:23.667180'),
('62qz3wfi6kegjy3yplu1oq2fkvg215tn', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUm9t:UC8BeT9PxtVnm7px65bvWB4roIHTAJFD0ZiXn6LACEY', '2024-02-13 11:20:05.226056'),
('68rfu9o4e7qfs6f59o9wawfif0axfzzw', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTeyK:NztvYHCbnPnO7NOQAd_yqFhySccyzZAkX_XmbvpO5R0', '2024-02-10 09:27:32.596416'),
('6eboyo0f2wrau205lu9ygmvjmmps21g3', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUeQU:yQt1k8t8lAsDc6kZX4YmO0J5pxjEB2Xc24r6fVDfU2k', '2024-02-13 03:04:42.553573'),
('6nmbe9dtok4n77tk7glryib1k9vyjbep', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUmAN:X1vTvEf2VbVYwTcUStHRrsY5yGGf4hKU6fmllnBmAnY', '2024-02-13 11:20:35.996449'),
('6wrasz5weas6ps5h4gnhxr1qz2chfafg', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLhf:QG21KidqJzjvs-Vpqh9BRZL2mgWiXrlEtHIi4jLpWcw', '2024-02-06 18:40:55.741829'),
('7804q0fa0x9kehm8rokazx86b7ufp28b', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHxk:cy4LOFsGB_Tb2j5IM-EySb2ljvFcWoOcRFMOVTasX7E', '2024-02-06 14:41:16.514609'),
('7oa4g5sgc52oi1jz0a0cu3a8gj3e4xji', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTfi1:wMANpX6zF_vDtMtE5LHQceq7YDjnzv5WTOfQdVe4hU4', '2024-02-10 10:14:45.451165'),
('7pl72ujqk46f8va4jxnr8h1574xdhslg', '.eJxVjDsOwjAQBe_iGlkm_i4lfc5g7dpeHECOFCcV4u4QKQW0b2beS0Tc1hq3XpY4ZXERWpx-N8L0KG0H-Y7tNss0t3WZSO6KPGiX45zL83q4fwcVe_3Wtjj0CiB5g87bAORpMKyBMjADq8KWAmiTkk5OD4FVgBJsOHttHJN4fwDg7Tev:1rTgDM:o6yhnAbqD7yMqN-Eci2qWiEf7T0dNqf0_nRp9qpUVuw', '2024-02-10 10:47:08.677564'),
('7zw0d0glrdg7jgzfij0hwg3r2sdl2uxy', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUT8Y:G5SsbR9zkUEjxpr6jYhySQXbaVVY9zhlX80EEsAf_Ug', '2024-02-12 15:01:26.490725'),
('8g6o8hwc864j5disi0dwuil8vywgj7wi', '.eJxVjDsOwjAQBe_iGlnOruMPJT1niNbrNQ4gR8qnQtwdIqWA9s3Me6mBtrUO2yLzMGZ1VladfrdE_JC2g3yndps0T22dx6R3RR900dcpy_NyuH8HlZb6rSVnH0JgYPbM2BuMkMAilCDUGSAbvaDxDGJdic4hJlOwB0Mspe_U-wPjqjee:1rUeRe:X7iMLiaEVDjI44HLnYSowxnPZ46dnnwv9EwA7_7qz6M', '2024-02-13 03:05:54.318328'),
('97ny1rsu0x9qk8yh73khmjvt03ificgp', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSI1E:_BQtnzj2N8G4oOqJMUxiY6hz9XXi97vsz6P6RkF6vT4', '2024-02-06 14:44:52.566672'),
('9gtckrgv52r7ok0nqnst2s9skm0yfjcp', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSIIU:OdhA20srTezbtECwVwzh50_WGLHm4gEEcVtauWFRqw4', '2024-02-06 15:02:42.637949'),
('bfryfgn0jk6qe6ko1decycp0j1e84evr', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHuM:sieSYzlPUgMpf1sTXHwOvQELynPIOaV6OBX89nQ5TS0', '2024-02-06 14:37:46.946057'),
('bgmbeeu6pqad0g3b93px0urd9en1iv7h', '.eJxVjMsOwiAQAP-FsyFQWB4evfsNZBc2UjU0Ke3J-O9K0oNeZybzEgn3raa985rmIs7CidMvI8wPbkOUO7bbIvPStnUmORJ52C6vS-Hn5Wj_BhV7HdtJg0I2JrD3RdnoiYxGZXWcyISoA3rngIDJaRsNQobiQWcV6Ztk8f4AtTE2sQ:1rUk73:DEvwHVRWEARB1WaWrpak9Y_U3xlcq5JhdGn4Deeo1ro', '2024-02-13 09:09:01.577256'),
('byrwmlvoydrgg5ae7nhdrlazntf1pc8r', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUm9u:mhQlMMGksOLAVaCPUHHGGrm8FvLh9HZLh-4RKPe4RDI', '2024-02-13 11:20:06.425406'),
('c7cpsqxj62dxch89br2213agpusj738w', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUmFZ:GvfiQsL8rn0irC1MN4uMm47E7nZVZ4tUUNPlmbMUVEY', '2024-02-13 11:25:57.586963'),
('ck8yxwbuamzy37gwoebj2mzz2182dp6a', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUpLR:EE6GTVAmRGfkBmb_V_H465WzpW2s-76t2LA3hAQh4Fg', '2024-02-13 14:44:13.575152'),
('crppbxltoprvufuwac168073le4po3et', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUlST:vI-xgAYbglLAjMZey2mPtmOP5FNtA7E56ll2C104QoA', '2024-02-13 10:35:13.348602'),
('cynm2zvzi4sm1m55tbbugbbah14dt3ri', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSxhn:vF2ZvuVTHlVPxnpaZnhBY92jcvgVqt_TY1UXgPWEWfs', '2024-02-08 11:15:35.006785'),
('d028hnsd5idqez60ain6fcmiuk5wma3c', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLV2:DGfWHHcu2M8rSPi442h5RIq8aAqOsi8-06C973kpmRo', '2024-02-06 18:27:52.177998'),
('d3mrqv9kd7y67e2s4y8jcv13yz2c6xv3', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwdx:79CC7to7rUPPjkNrlS92J9b0N1ssfDKygwP8AhRXrVc', '2024-02-08 10:07:33.960986'),
('d7qeafqd8ccfraixsoxv33bjw1fue0q8', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rTkhS:8U5bw6UbkT6HYzxS4e8KZ2NbMJbC7NjkMJ_P4sDDXi8', '2024-02-10 15:34:30.192425'),
('dbqmtul2kttptzs1dqrcippohutajwu9', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSImR:LsOUDggVhpL8W8_h_GWflG-z0C5hVQto9DDPUYvrrw8', '2024-02-06 15:33:39.061141'),
('dnt15hriby4nawsxg8uwzbc50w3yhpo0', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSFPx:4-WERjnsepo9dPQjo94sxFehfoRuusSQEBHj-hCbuYA', '2024-02-06 11:58:13.143828'),
('dqe4jcyba24oqirarie1q5njn0gehsir', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLSq:xeLciUQazzBN9rM09KRMW8oljll2GU417u3_BkuLftg', '2024-02-06 18:25:36.619711'),
('ena73pyl9ntxhatbkgsm755uv93cfb5n', '.eJxVjDsOwyAQBe9CHSGz5rOkTO8zIGDXwUmEJWNXUe4eIblI2jcz7y1CPPYSjsZbWEhchROX3y3F_OTaAT1iva8yr3XfliS7Ik_a5LQSv26n-3dQYiu9Nk7nmcgal4DjaH3ipBGyZ-WNQjtopTwOGEdw6AFxJgANZJGYLYnPF993N2k:1rUlRp:SUKLaBk6oEpDm-HNxq6q_dv5ZW-t6BpNLPVjZKIysRM', '2024-02-13 10:34:33.121743'),
('et0kaa6aq6hr5588nym8slkwykdh2inm', '.eJxVjDsOwjAQBe_iGlnGiX-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIijDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5VsPVpPT4AONKkDmMDjNo1Uu-KCs1saCZ0qU0Kec0aACy2dQaCgYHpN4fwDY1jhD:1rUk1h:Pq_zXXb5yM0RLF8S4AQMOf2zeDOyxqdNRcyRuR9tZ5U', '2024-02-13 09:03:29.213594'),
('h69d3pdrkv5s4866k1w9v744k7nvzc5g', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLPP:VsdJmzbot7OBgWZg7inu7zlmaCTZmJhoQTuI-yOpxL4', '2024-02-06 18:22:03.063886'),
('i0mibju5ix2ifzvwy7o0ndpdhgmit2kz', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTg6Q:1R65YFO5qXy7FvqBX44U_nC1n3B6Edj7AijvMg2JxDM', '2024-02-10 10:39:58.098242'),
('ibo93oexkbdtfkn162a2whqu1k7e75y8', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwgx:2WK8WZj-Y6MlTZztkLuTrjgaMp5Z3vhUulUrATmJjjU', '2024-02-08 10:10:39.814613'),
('itnq7751ihh6vkpkcbcev5dbavxanjt2', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwqb:U5ZCMbDSrxa-y0QDY7IlatHsjnb7lBoRe6-drLHK7KU', '2024-02-08 10:20:37.182745'),
('jv3v98by8tponc41ahztliuny6hapjji', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSKen:kwJ9yaoKAQ5VEdSd7hM9nCyMaN2BagGGK_2_So3hiLs', '2024-02-06 17:33:53.953256'),
('k2o2wt733dt9x8q5q2njjwuhewuzzt68', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTeeh:Nn4o0uZrAbDm8VVcAgD75YI33jMe5QIP0VBVGL87-kk', '2024-02-10 09:07:15.420225'),
('k93xm06zxpmq62ydfbatu27x2lnbw350', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwqb:U5ZCMbDSrxa-y0QDY7IlatHsjnb7lBoRe6-drLHK7KU', '2024-02-08 10:20:37.375396'),
('kiv4ztuycwkk6m0kb4ydei5beg1ky3ui', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rTj7J:T7bOOEoSLHzOvXs9COAFCe8m33qHqbX0nhnyIay3Yqs', '2024-02-10 13:53:05.213002'),
('l0yeuln3ass2bg78445q80furk9rxzm8', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHv7:K5Zs94oSPAUNA3eANkMJBXkq76z8fvUBWqQRydyfiso', '2024-02-06 14:38:33.798041'),
('lcu9nkhoeecg31pl958ab7gwf5wha7vq', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rUKS0:s04JfjrLy3wECiL5CrfcFQmeHmNloUi0R0KpL-0KoMk', '2024-02-12 05:44:56.859488'),
('m3iq0flg59lrcyu9y1ww377q3q6h7783', '.eJxVjMsOwiAQRf-FtSG8cVy67zcQYAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQZ2YUpdvrdUswPajvAe2y3znNv6zInviv8oINPHel5Pdy_gxpH_dagsnVWS0OAQFI5Y6JUQkqIhCA8WARnZPZYUhGGiqViPBEiIGp9Zu8PxjA36w:1rSFQT:4IEoSPVUMYQpNQant5MtPWWQEtR-Pt4IHGP0emRphPY', '2024-02-06 11:58:45.148343'),
('mzg5rut4axepbdo2eglcw8nijh0ej56v', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLiJ:XeRtSLNchB1Hx0wCXsk_7Drp8m5eqxvx1yjFKnXi1Yg', '2024-02-06 18:41:35.854528'),
('p62t8mouk1ucyepnthpopv9r73t6f7ft', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSIWR:aEPCbXoi5JkLZjXvN9r9iePPWuDfY0k-eYlEASstGdg', '2024-02-06 15:17:07.183765'),
('peiq4f6wtg6ty22qlto4jxz2422ktwpi', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLX8:vQy2brh0OfmDh9ckMGJ-Jwgh0e4RV6iUrFm2p8cf2Jo', '2024-02-06 18:30:02.897274'),
('picq6co9ba999m6gin4xkrhse5nha0po', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLMx:etLbB7THDZAuCP45d-wa7s3tYDAicbdqSxd4u2ACa74', '2024-02-06 18:19:31.625332'),
('plrlxjxoy0zshkqbyun6mp5sp6zhjjo0', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwmk:PcjOxbSNGPJYm77fLgDqk5nbrahwcVg0cC603TTYWWw', '2024-02-08 10:16:38.928769'),
('pwoz23ctzxbe5v3ucx41yzj5wbeofble', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSweY:aKDcpQ4fbm5aVWrKMTQnJX-xf9YQ9BGUzPvnsIX8Jyk', '2024-02-08 10:08:10.101009'),
('q62yr77bizlntcre6uw121q4z23libi6', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHxO:GQ6ljD5Ta8AyPpW-li6I5QMX3AoSh8NpFiBSi5pVW5o', '2024-02-06 14:40:54.989206'),
('q96t5o09yddbgbsy2i2ms8zo1tg1vrbv', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLSS:TCAUvq5915xCf5DobBu5OvgcpzlQITAmzo4VlsW9cZE', '2024-02-06 18:25:12.377588'),
('qhlxoy2jhs4mwwryie5uxpijcls8qc9s', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLW3:g53nvyqkRDamCvnAz_FTYDWINQ-xn97hr7MCZds2tSI', '2024-02-06 18:28:55.808306'),
('qlhmoyg8olwvq7yr2ulv1y73vq8n76rl', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSFAp:BLL7ZiSj7u-rKz5D0ajsVFsEYckT0Oj1lZZ_iOs48HI', '2024-02-06 11:42:35.818554'),
('r07vmqopy4gp7uq8b5jso74if28cq3ur', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHvV:0BENftuDV_Z3s1VuIT0CTmhUvoY3faA6bqODm6SWekk', '2024-02-06 14:38:57.017747'),
('r8qv7bh02s7bk1pu5crae1uy0m8kmro0', '.eJxVjDsOwjAQBe_iGlnGiX-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIijDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5VsPVpPT4AONKkDmMDjNo1Uu-KCs1saCZ0qU0Kec0aACy2dQaCgYHpN4fwDY1jhD:1rUk5R:61W9hjd5NOVq4Bqid_tgsXHYO-4riZfEz4ZP7518fwI', '2024-02-13 09:07:21.120683'),
('rm600zh63oghfcmqlwixw2op01njhd92', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLNL:FgS3GCzfJGY09h0OM5Hr759IpPJ2WWF7f3T0F-7WYtE', '2024-02-06 18:19:55.926823'),
('tofgimlz23qk83k9vrkyetnzzzo65oea', '.eJxVjEEOwiAQAP_C2ZACa2U9evcNzS4sUjWQlPZk_LuS9KDXmcm81ETbmqetyTLNUZ2VUYdfxhQeUrqIdyq3qkMt6zKz7onebdPXGuV52du_QaaW-zaCB0JDLIhwtI7x5O3gIAgmSmCSA_FkGR19WxkHjxzFBCLnR8vq_QHa5TgC:1rTzGY:6ajNr4OSTf8sYo5Hz8FXCeg83JsKZSy0tAzj8aQDvIE', '2024-02-11 07:07:42.197510'),
('vdq4ltx1m2jdt78aqet24uqs57q7n1cv', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSxCR:Op_9fgmV3bA_V3Dor_jGqhK7OHz2V3UYwysQmJXaOjI', '2024-02-08 10:43:11.367353'),
('vnzs3n0fqq2h7owsi64ooli4ifmfwgvs', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSHum:_wDfCjchJ6Q8VS8s6hhRNq6QuUXcLSO79sjKYe6sVBM', '2024-02-06 14:38:12.103030'),
('vyb9q9bgmo9uz9nl56ssv3cqvuh5r0fy', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTfPz:49iVpHGd1JU_ti3Bxdhe1hsccC50Nff5452uG05C9EA', '2024-02-10 09:56:07.449969'),
('wl84ack72qzqkjgl0hkgsw2vjl8uzyvq', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSxi1:paXRTFIwIaKL7rL1Sd2BugXK18761bvn6XnsqFzvtBA', '2024-02-08 11:15:49.283748'),
('wryzkg2que6ojajhnemvpz7cj0lftyto', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSLa7:a_PjE5rbIKUfNXH7AvWEC-CFuwkJdhIxZiWRmrQAvSQ', '2024-02-06 18:33:07.892739'),
('xgfzlyu3evzpex8fte56so62c2od0hxu', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSFPf:aMZZdd1m0yS1aj3aF2t1kFm5eB2XEuRj17Zf1Br7Jys', '2024-02-06 11:57:55.913397'),
('y1mjanh0jkmz4aax1v4i71zfq64wf0ll', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSIJK:WM2tKQf_TwUBJvV57u74cIK9MNEMnw-Imskgl-rF2S0', '2024-02-06 15:03:34.800190'),
('y26tn2kihabvqctiz9628y6qayzwtmvo', '.eJxVjDsOwjAQBe_iGlkm_i4lfc5g7dpeHECOFCcV4u4QKQW0b2beS0Tc1hq3XpY4ZXERWpx-N8L0KG0H-Y7tNss0t3WZSO6KPGiX45zL83q4fwcVe_3Wtjj0CiB5g87bAORpMKyBMjADq8KWAmiTkk5OD4FVgBJsOHttHJN4fwDg7Tev:1rTj7m:TyGdn-FpJ3f3fVYpf9VCfLRl2Gn9exR6idQ_NmE_GzM', '2024-02-10 13:53:34.159717'),
('yxvshhrirphpjtefqplqe3by2qjglb5x', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSwqb:U5ZCMbDSrxa-y0QDY7IlatHsjnb7lBoRe6-drLHK7KU', '2024-02-08 10:20:37.414860'),
('zeew08h4oqz66sdiiifh2a4emyj7m3sf', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSJUt:0btbtP7FunWzp7DZnb3bCPwggXcJQyFj8wK2QUkMo0w', '2024-02-06 16:19:35.979196'),
('zuhf89zwtbt3qzviicmbwt5nnn6d2lme', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rTgXS:Bh2l5K85JhinmW7tRhzzqWe0mw_H86lqmMbbLrVd1Qo', '2024-02-10 11:07:54.198409'),
('zvuhpedgz4lkgp0014uvzfyc2qjye9nd', '.eJxVjM0OwiAQhN-FsyHL8lPw6N1nILCLUjU0Ke3J-O62SQ-azGm-b-YtYlqXGtde5jiyOAslTr9dTvQsbQf8SO0-SZraMo9Z7oo8aJfXicvrcrh_BzX1uq0do-cyGEVIN3DamwA-gWP26IIyGUkHpmzRaAtpAPZstwAiaOuM-HwByNk2qg:1rSI2h:ph5g4PVRrXdAMzP-Vdhto6OClYx7iul3Q00gma89090', '2024-02-06 14:46:23.313916');

-- --------------------------------------------------------

--
-- Table structure for table `knox_authtoken`
--

CREATE TABLE `knox_authtoken` (
  `digest` varchar(128) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `knox_authtoken`
--

INSERT INTO `knox_authtoken` (`digest`, `created`, `user_id`, `expiry`, `token_key`) VALUES
('478c01e5d622c74e5ee4c965d7ebd1ef5e1fef41a9e6ea71d5c39e16920841f8f157e20ccbccb944d15cdc54ea02a252a4396591ed106beac08bd4a6df5cf4cc', '2024-01-30 03:05:43.072013', 4, '2024-01-30 13:05:43.072013', '90c9d4a7'),
('5c792de21db34cdd4cdd69a23f880873719305d42af29064641a800d50ca55466ce6d5b29595b0b307101bfa66a49b0eba0e2e0fa4993c77defd34266faa84c9', '2024-01-30 11:20:04.805870', 1, '2024-01-30 21:20:04.805870', '27b1c2e7'),
('627efda2b7ecc076a411a5a8e2bbc9c3e6c8e7ecf519b6b8614f89ca92f3b06c2e8ce45233e7f8b9059ad785bcfd3c08b9a95f6ccb73b936d7b6bed939b6344c', '2024-01-23 11:58:35.415001', 2, '2024-01-23 21:58:35.415001', 'adfe5471'),
('8b295539c862b2121a504d786f843b26f09c4bc07f303654b11a127a81dedf741ededf9760ca2d18f4068151d7b407e7aa361da829a28dad2fa77f7de5ec4741', '2024-01-30 10:34:19.521382', 7, '2024-01-30 20:34:19.521382', 'dc273e71'),
('93458682418f2d72368a35af57b547b82ad1e769221cf631d451c6a596da3aedec4bfe9b5501eaaae6ee6c4e10cb2bd842faad153c5c3c75c837801a8247e43b', '2024-01-27 10:38:02.870287', 3, '2024-01-27 20:38:02.870287', 'c8863be9'),
('a8ddeabb1f7fdb1afb40b1a0caf4f34d2c683f690682d6eeea6f247f830bbf2b58d3b70da924e2436ed6849e195bb6a466b063d22c8742291b0510b70ceac5a3', '2024-01-30 10:46:01.360928', 1, '2024-01-30 20:46:01.360928', '46dfe157'),
('af124df22cd4f409c63960d2691a42735ccbf121cf9cd70b7eb3772d1a4bc17d839bb4d585bced9ae109a02dfda69cfe48a5c2f57f3a0dfdaf2be91cc494c28b', '2024-01-30 09:08:37.144747', 6, '2024-01-30 19:08:37.144747', '3989bbed'),
('af7a0d6eb1bff12a6052bc5a4fd681cf06db1193bd863d7509cd0f600a6ebeaf523666af9ef3297d08f5a210f335657c34cf2fed7e9a662b9991341bf8878e78', '2024-01-30 11:25:57.571036', 1, '2024-01-30 21:25:57.571036', 'a4007512'),
('d6032c9f6cc7763a4d42f4e356732a13ed4133b92d06b3b7be24189511e641fdc9a3925f9dafe485df3e67cd70f3e8b0d12b83c59f5aee981cfdea10b9018344', '2024-01-30 11:20:06.330215', 1, '2024-01-30 21:20:06.330215', 'c5ab82ae'),
('de580f119dd6d9ce975e11692b78cc9e1e178f0939e9db0972e1707a54cd4e790c7aced71a500eb89f7ac613f25c7c6799c5da2472bc2dbf32548dd89197f4ca', '2024-01-23 11:58:45.148343', 2, '2024-01-23 21:58:45.148343', '0c830316'),
('dfba42d9a736b4400c9f97e12b1ac95e3cb66e3f7597c9d8a770f519a147cff94cf1a9921658c968656c7db0fb8945562c39ab8fef1b89f55866f58db58fff8a', '2024-01-30 08:58:26.671547', 5, '2024-01-30 18:58:26.671547', 'c4ef72e7'),
('e61a59af44375017648e5e619dddbe87a2313f6d9a60ca64f57eee820555203e108141818770728e627e0408fff685c47eac9b3aa29fb4b36cf9574e4f49ae59', '2024-01-30 14:44:13.527476', 1, '2024-01-31 00:44:13.527476', 'e136e04c');

-- --------------------------------------------------------

--
-- Table structure for table `timemaster_student`
--

CREATE TABLE `timemaster_student` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timemaster_task`
--

CREATE TABLE `timemaster_task` (
  `id` bigint(20) NOT NULL,
  `taskName` varchar(255) NOT NULL,
  `startDate` date NOT NULL,
  `startTime` time(6) NOT NULL,
  `endDate` date NOT NULL,
  `endTime` time(6) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timemaster_task`
--

INSERT INTO `timemaster_task` (`id`, `taskName`, `startDate`, `startTime`, `endDate`, `endTime`, `category`, `status`, `description`, `color`) VALUES
(16, 'Task B', '2024-01-17', '23:44:00.000000', '2024-02-14', '16:44:00.000000', 'Personal', 'COMPLETED', 'Studying', '#FF0000FF'),
(17, 'Task C', '2024-01-06', '11:51:00.000000', '2024-01-06', '00:45:00.000000', 'Work', 'RUNNING', 'Cooking', '#0000FFFF'),
(18, 'Task D', '2024-01-02', '23:46:00.000000', '2024-01-02', '23:52:00.000000', 'Entertainment', 'FAILED', 'Movie', '#01452EFF'),
(19, 'Task E', '2023-12-31', '11:47:00.000000', '2023-12-31', '23:47:00.000000', 'Miscellaneous', 'FAILED', 'Sleep', '#01452EFF'),
(21, 'Task J', '2023-12-31', '12:22:00.000000', '2024-01-05', '12:22:00.000000', 'Health', 'FAILED', 'Singing', '#01452EFF'),
(22, 'Task G', '2023-12-31', '00:55:00.000000', '2023-12-31', '12:55:00.000000', 'Entertainment', 'FAILED', 'Dancing', '#FF0000FF'),
(23, 'Task 100', '2024-01-26', '23:17:00.000000', '2024-02-03', '23:17:00.000000', 'Personal', 'COMPLETED', 'fdgfg', '#01452EFF'),
(24, 'Task H', '2024-01-04', '16:14:00.000000', '2024-01-05', '16:14:00.000000', 'Health', 'COMPLETED', 'Project work...', '#BCBC07'),
(25, 'Task 1000', '2024-01-09', '18:18:00.000000', '2024-01-25', '18:18:00.000000', 'Personal', 'COMPLETED', 'Hifhadsf hjdf aldfkh dfkjh adfkh adff', '#800080FF'),
(28, 'Task K', '2024-02-12', '19:01:00.000000', '2024-02-14', '19:02:00.000000', 'Entertainment', 'COMPLETED', 'jhfjhgjkfsdg', '#015C6CFF'),
(29, 'Task Z', '2024-03-14', '19:16:00.000000', '2024-03-31', '19:16:00.000000', 'Work', 'COMPLETED', 'Hiji  aksasd', '#0000FFFF'),
(32, 'Task I', '2024-01-29', '12:32:00.000000', '2024-02-01', '12:33:00.000000', 'Entertainment', 'RUNNING', 'Dancing Time', '#0000FFFF'),
(35, 'Attend a meeting', '2024-01-31', '14:29:00.000000', '2024-02-01', '14:30:00.000000', 'Work', 'RUNNING', 'Go To Office &  Attend a meeting', '#800080FF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD PRIMARY KEY (`digest`),
  ADD KEY `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` (`user_id`),
  ADD KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`);

--
-- Indexes for table `timemaster_student`
--
ALTER TABLE `timemaster_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timemaster_task`
--
ALTER TABLE `timemaster_task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `timemaster_student`
--
ALTER TABLE `timemaster_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timemaster_task`
--
ALTER TABLE `timemaster_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
