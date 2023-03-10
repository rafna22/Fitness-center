-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 06:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_db`
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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add admintab', 7, 'add_admintab'),
(26, 'Can change admintab', 7, 'change_admintab'),
(27, 'Can delete admintab', 7, 'delete_admintab'),
(28, 'Can view admintab', 7, 'view_admintab'),
(29, 'Can add serv_tab', 8, 'add_serv_tab'),
(30, 'Can change serv_tab', 8, 'change_serv_tab'),
(31, 'Can delete serv_tab', 8, 'delete_serv_tab'),
(32, 'Can view serv_tab', 8, 'view_serv_tab'),
(33, 'Can add cont_tb', 9, 'add_cont_tb'),
(34, 'Can change cont_tb', 9, 'change_cont_tb'),
(35, 'Can delete cont_tb', 9, 'delete_cont_tb'),
(36, 'Can view cont_tb', 9, 'view_cont_tb'),
(37, 'Can add user_details', 10, 'add_user_details'),
(38, 'Can change user_details', 10, 'change_user_details'),
(39, 'Can delete user_details', 10, 'delete_user_details'),
(40, 'Can view user_details', 10, 'view_user_details');

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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(7, 'fit_app', 'admintab'),
(9, 'fit_app', 'cont_tb'),
(8, 'fit_app', 'serv_tab'),
(10, 'fit_app', 'user_details'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-24 05:44:16.889313'),
(2, 'auth', '0001_initial', '2023-02-24 05:44:21.967755'),
(3, 'admin', '0001_initial', '2023-02-24 05:44:23.427619'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-24 05:44:23.505948'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-24 05:44:23.552592'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-24 05:44:24.036988'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-24 05:44:24.594992'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-24 05:44:24.735578'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-24 05:44:24.829342'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-24 05:44:25.160887'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-24 05:44:25.182924'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-24 05:44:25.245418'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-24 05:44:25.386191'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-24 05:44:25.761615'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-24 05:44:26.143697'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-24 05:44:26.253057'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-24 05:44:26.347005'),
(18, 'fit_app', '0001_initial', '2023-02-24 05:44:26.440735'),
(19, 'sessions', '0001_initial', '2023-02-24 05:44:26.784435'),
(20, 'fit_app', '0002_serv_tab', '2023-02-27 05:46:42.258002'),
(21, 'fit_app', '0003_serv_tab_desc', '2023-03-02 04:40:35.205831'),
(22, 'fit_app', '0004_cont_tb', '2023-03-02 05:44:49.381917'),
(23, 'fit_app', '0005_user_details', '2023-03-03 06:18:26.402030');

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
('istg2ngg1cmmc5keuaw8lut3wqdpwilh', 'eyJteWlkIjoxfQ:1pa7l8:ezwtFdAbBVGIUN7JRya4RgpbigvG-o080z6sHoEjmW4', '2023-03-23 04:20:06.559228');

-- --------------------------------------------------------

--
-- Table structure for table `fit_app_admintab`
--

CREATE TABLE `fit_app_admintab` (
  `id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fit_app_admintab`
--

INSERT INTO `fit_app_admintab` (`id`, `email`, `password`) VALUES
(1, 'rafna@123', 'asd123'),
(2, 'abc@def', '12345'),
(3, 'asdf@12', '0987');

-- --------------------------------------------------------

--
-- Table structure for table `fit_app_cont_tb`
--

CREATE TABLE `fit_app_cont_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fit_app_cont_tb`
--

INSERT INTO `fit_app_cont_tb` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Rafna', 'rafna@abc', '12345678', 'etretrtr', 'weettrtrtrtrtgs'),
(2, 'Rafna', 'scew@d.pl', '12345', 'fwryyet', 'shyrtdkyjdgb'),
(3, 'abc', 'abc123@def', '12345678', 'assddfghj', 'qweyuoigjsag'),
(4, 'abc', 'rafna0808@gmail.com', '12345678', 'asdfghj', 'afadsgfgf'),
(5, 'Rafna', 'rafna2523@gmail.com', '12345678', 'workout', 'join gym');

-- --------------------------------------------------------

--
-- Table structure for table `fit_app_serv_tab`
--

CREATE TABLE `fit_app_serv_tab` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fit_app_serv_tab`
--

INSERT INTO `fit_app_serv_tab` (`id`, `image`, `name`, `desc`) VALUES
(15, 'product/image_1920_8_KtFgIig.png', 'Gym', 'We are open 5.30 am to 10 pm. Ladies 10 am to 11:30 am, Evening 3:30 pm to 4:30 pm'),
(16, 'product/image_1920_rk7ADGi.png', 'Kalaripayattu', 'Kalaripayattu is one of the most ancient martial arts in the world. It improves body strength, flexibility, speed and reflex to the core. It also provides benefits like self defense, mental and spiritual developement. We provide classes on Monday, Wednesday and Friday from 5.30 am to 7.00 am , Tuesday and Thursday from 6.30 pm to 8.00 pm and on Sunday from 7.00 am to 8.30 am.'),
(17, 'product/image_1920_2_yYr1Z1d.png', 'Musical Instruments', 'We provide classes on popoular musical instruments like Chenda, Tabla, Keyboard, Violin and Guitar.Music has the power to help students to express creatively.'),
(18, 'product/image_1920_1_tXQgurW.png', 'Classical Dance', 'Classical dance is great way to get your mind and body working together in harmony.It improves strength and stability of your body.Classes are on Saturday from 4.00 pm to 5.30 pm and Sunday from 10.00am to 11.30 am.'),
(19, 'product/image_1920_3_wVb3tg8.png', 'Karate & Self Defence', 'Karate is a martial art developed in the Ryukyu Kingdom. Karate has both mental and physical benefits. It can improve self confidence, coordination, balance, stamina and overall health. We provide classes on monday and thursday from 5:00 pm to 7:00 pm.'),
(20, 'product/image_1920_5_M9YcwhL.png', 'Yoga', 'Yoga is a mind and body practice. Various styles of yoga combines physical postures, breathing techniques and meditation or relaxation. We provide 20 classes per month, that is from monday to friday from 6:00 am to 7:00 am.'),
(21, 'product/image_1920_6_WlIlwdF.png', 'Zumba', 'Monday, Wednesday, Friday, 7.30 pm to 8.30 pm, Tuesday, Thursday, Saturday 6.00 am to 7.00 am.'),
(22, 'product/image_1920_7_9S4MaAs.png', 'Western Dance', 'Saturday 4.00 pm to 5.30 pm, Sunday 10.00 am to 11.30 am.');

-- --------------------------------------------------------

--
-- Table structure for table `fit_app_user_details`
--

CREATE TABLE `fit_app_user_details` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `fit_app_admintab`
--
ALTER TABLE `fit_app_admintab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fit_app_cont_tb`
--
ALTER TABLE `fit_app_cont_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fit_app_serv_tab`
--
ALTER TABLE `fit_app_serv_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fit_app_user_details`
--
ALTER TABLE `fit_app_user_details`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fit_app_admintab`
--
ALTER TABLE `fit_app_admintab`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fit_app_cont_tb`
--
ALTER TABLE `fit_app_cont_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fit_app_serv_tab`
--
ALTER TABLE `fit_app_serv_tab`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fit_app_user_details`
--
ALTER TABLE `fit_app_user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
