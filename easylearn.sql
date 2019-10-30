-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2019 at 09:44 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easylearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add comments', 8, 'add_comments'),
(30, 'Can change comments', 8, 'change_comments'),
(31, 'Can delete comments', 8, 'delete_comments'),
(32, 'Can view comments', 8, 'view_comments'),
(33, 'Can add course info', 9, 'add_courseinfo'),
(34, 'Can change course info', 9, 'change_courseinfo'),
(35, 'Can delete course info', 9, 'delete_courseinfo'),
(36, 'Can view course info', 9, 'view_courseinfo'),
(37, 'Can add courses', 10, 'add_courses'),
(38, 'Can change courses', 10, 'change_courses'),
(39, 'Can delete courses', 10, 'delete_courses'),
(40, 'Can view courses', 10, 'view_courses'),
(41, 'Can add login', 11, 'add_login'),
(42, 'Can change login', 11, 'change_login'),
(43, 'Can delete login', 11, 'delete_login'),
(44, 'Can view login', 11, 'view_login'),
(45, 'Can add login1', 12, 'add_login1'),
(46, 'Can change login1', 12, 'change_login1'),
(47, 'Can delete login1', 12, 'delete_login1'),
(48, 'Can view login1', 12, 'view_login1'),
(49, 'Can add student', 13, 'add_student'),
(50, 'Can change student', 13, 'change_student'),
(51, 'Can delete student', 13, 'delete_student'),
(52, 'Can view student', 13, 'view_student'),
(53, 'Can add subject', 14, 'add_subject'),
(54, 'Can change subject', 14, 'change_subject'),
(55, 'Can delete subject', 14, 'delete_subject'),
(56, 'Can view subject', 14, 'view_subject'),
(57, 'Can add subjectinfo', 15, 'add_subjectinfo'),
(58, 'Can change subjectinfo', 15, 'change_subjectinfo'),
(59, 'Can delete subjectinfo', 15, 'delete_subjectinfo'),
(60, 'Can view subjectinfo', 15, 'view_subjectinfo');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$120000$MQhYM38uMLDB$MzSCjINv1I0k5hnx2GlJ6R/naLZwi2ljcfUi0UQpKmw=', '2019-04-05 06:38:51.728877', 0, 's3', '', '', 'dad@gmail.com', 0, 1, '2019-04-05 06:30:18.421674'),
(6, 'pbkdf2_sha256$120000$wwqoE0pMYGX3$TVEROU52R3dA9v3thxX5TCYipDkyIb08o8ElDYy3rKU=', '2019-04-05 06:41:02.233955', 0, 'S1', '', '', 'avinavekariya61@gmail.com', 0, 1, '2019-04-05 06:41:01.778202'),
(8, 'pbkdf2_sha256$120000$iBXHGDEP4gfp$R5j9zQPB46z4iUmc7GkrANIoZZgCJGJuQnFY5TAdn74=', '2019-04-05 07:03:24.197067', 0, 'S4', '', '', 'acac@gmail.com', 0, 1, '2019-04-05 06:43:49.597912');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'EasyLearn', 'admin'),
(8, 'EasyLearn', 'comments'),
(9, 'EasyLearn', 'courseinfo'),
(10, 'EasyLearn', 'courses'),
(11, 'EasyLearn', 'login'),
(12, 'EasyLearn', 'login1'),
(13, 'EasyLearn', 'student'),
(14, 'EasyLearn', 'subject'),
(15, 'EasyLearn', 'subjectinfo'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'EasyLearn', '0001_initial', '2019-04-04 16:48:44.481857'),
(2, 'contenttypes', '0001_initial', '2019-04-04 16:48:45.251170'),
(3, 'auth', '0001_initial', '2019-04-04 16:48:57.994599'),
(4, 'admin', '0001_initial', '2019-04-04 16:49:00.682088'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-04 16:49:00.758032'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-04 16:49:00.960846'),
(7, 'contenttypes', '0002_remove_content_type_name', '2019-04-04 16:49:01.882965'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-04-04 16:49:02.629692'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-04-04 16:49:03.498428'),
(10, 'auth', '0004_alter_user_username_opts', '2019-04-04 16:49:03.571539'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-04-04 16:49:04.132544'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-04-04 16:49:04.175433'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-04-04 16:49:04.239258'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-04-04 16:49:05.141576'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-04-04 16:49:06.029480'),
(16, 'sessions', '0001_initial', '2019-04-04 16:49:06.621732');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('85gxah0ggalc1m84tw0nk2b8ftrlznnn', 'ZTZkNmM0NmExY2M5NzNiYjdiNmU1N2Q2MjA1MmE1MTZlOGRjNDgzZjp7InNlc3Npb24iOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNmM1ZWZkMWJkMWIyOTU0ZmZmNDVhZWRkNTExZWU0YjYzZTc0OTNhIn0=', '2019-04-19 06:14:09.569451'),
('9u2967n1n8dai4l7827hjtvpyhwiuuq2', 'YmYzNDdhMTI4NTE2NzIzYjlhZGYxZjRiNTE0ODViOWI2ZmQzNjIxODp7InNlc3Npb24iOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Y2QzZjNmYjhlNjM4YTc2NmE4OGJlZmUwOGNlYTVhNDAyZTA1MmJhIn0=', '2019-04-19 07:03:24.251777'),
('mc85365q8c61u7g7aej7kdtvvq0ofxc1', 'NzJlZGU2MmMxMjM1YWFmYTlmOTM4ZDlmMzMxYjMxNDIyMDJjYzUyYTp7InNlc3Npb24iOm51bGx9', '2019-04-19 07:03:19.280430');

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_admin`
--

CREATE TABLE `easylearn_admin` (
  `AdminId` varchar(5) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_comments`
--

CREATE TABLE `easylearn_comments` (
  `CommentId` varchar(5) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `SubjectID_id` varchar(5) NOT NULL,
  `UserID_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_courseinfo`
--

CREATE TABLE `easylearn_courseinfo` (
  `CourseName` varchar(40) NOT NULL,
  `Introduction` varchar(9000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easylearn_courseinfo`
--

INSERT INTO `easylearn_courseinfo` (`CourseName`, `Introduction`) VALUES
('Business', 'Business activity affects the daily lives of all people, as they work, spend, save, invest, travel, and play. Business in?uences jobs, incomes, and opportunities for personal enterprise and development.\r\nBusiness Studies is an academic subject taught in schools and at university level in many countries.\r\nIts study combines elements of accountancy, finance, marketing, organizational studies and economics.\r\nBusiness Studies is a broad subject in the Social Sciences, allowing the in-depth study of a range of specialties such as accountancy, finance, organisation, human resources management and marketing.\r\n'),
('Computer Science', 'Computer science is the study of processes that interact with data and that can be represented as data in the form of programs. It enables the use of algorithms to manipulate, store, and communicate digital information. A computer scientist studies the theory of computation and the practice of designing software systems.Its fields can be divided into theoretical and practical disciplines. Computational complexity theory is highly abstract, while computer graphics emphasizes real-world applications. Programming language theory considers approaches to the description of computational processes, while computer programming itself involves the use of programming languages and complex systems. Human–computer interaction considers the challenges in making computers useful, usable, and accessible.\r\n'),
('Math and Logic', 'Mathematics includes the study of such topics as quantity, structure, space, and change.\r\nMathematicians seek and use patterns to formulate new conjectures; they resolve the truth or falsity of conjectures by mathematical proof. When mathematical structures are good models of real phenomena, then mathematical reasoning can provide insight or predictions about nature. Through the use of abstraction and logic, mathematics developed from counting, calculation, measurement, and the systematic study of the shapes and motions of physical objects.\r\nPractical mathematics has been a human activity from as far back as written records exist.\r\nThe research required to solve mathematical problems can take years or even centuries of sustained inquiry.\r\nLogic is the science of formal principles of reasoning or correct inference. Historically, logic originated with the ancient Greek philosopher Aristotle. Logic was further developed and systematized by the Stoics and by the medieval scholastic philosophers.'),
('Social Science', 'In the United States education system, social studies is the integrated study of multiple fields of social science and the humanities, including history, geography, and political science.\r\nThe term was first coined by American educators around the turn of the twentieth century as a catch-all for these subjects, as well as others which did not fit into the traditional models of lower education in the United States, such as philosophy and psychology.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_courses`
--

CREATE TABLE `easylearn_courses` (
  `CourseId` varchar(12) NOT NULL,
  `CourseName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easylearn_courses`
--

INSERT INTO `easylearn_courses` (`CourseId`, `CourseName`) VALUES
('1', 'Computer Science'),
('2', 'Business'),
('3', 'Social Science'),
('4', 'Math and Logic');

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_login`
--

CREATE TABLE `easylearn_login` (
  `Username` varchar(5) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_login1`
--

CREATE TABLE `easylearn_login1` (
  `Username` varchar(5) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_student`
--

CREATE TABLE `easylearn_student` (
  `StudentId` varchar(5) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `EmailId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easylearn_student`
--

INSERT INTO `easylearn_student` (`StudentId`, `Password`, `Name`, `EmailId`) VALUES
('S1', 'avina', 'avina', 'avinavekariya61@gmail.com'),
('s3', '11', 'a', 'dad@gmail.com'),
('S4', 'avina', 'avina', 'acac@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_subject`
--

CREATE TABLE `easylearn_subject` (
  `SubjectID` varchar(5) NOT NULL,
  `SubjectName` varchar(40) NOT NULL,
  `Url` varchar(25) NOT NULL,
  `CourseId_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easylearn_subject`
--

INSERT INTO `easylearn_subject` (`SubjectID`, `SubjectName`, `Url`, `CourseId_id`) VALUES
('S1', 'python', '/static/pythonlogo.jpg', '1'),
('S2', 'java', '/static/javalogo.png', '1'),
('S3', 'C', '/static/clogo.png', '1'),
('S4', 'Management', '/static/manage.png', '2'),
('S5', 'Finance', '/static/finance.jpg', '2'),
('S6', 'Accountancy', '/static/acc.jpg', '2'),
('S7', 'Geography', '/static/geo.jpg', '3'),
('S8', 'History', '/static/history.jpg', '3');

-- --------------------------------------------------------

--
-- Table structure for table `easylearn_subjectinfo`
--

CREATE TABLE `easylearn_subjectinfo` (
  `Subjectname` varchar(12) NOT NULL,
  `Subjectinfo` varchar(8000) NOT NULL,
  `Videourl` varchar(40) NOT NULL,
  `Docurl` varchar(40) NOT NULL,
  `ImageUrl` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easylearn_subjectinfo`
--

INSERT INTO `easylearn_subjectinfo` (`Subjectname`, `Subjectinfo`, `Videourl`, `Docurl`, `ImageUrl`) VALUES
('java', 'Java is a popular programming language, created in 1995.  It is owned by Oracle, and more than 3 billion devices run Java.   It is used for:  Mobile applications (specially Android apps) Desktop applications Web applications Web servers and application servers Games Database connection And much, much more!It is open-source and free It is secure, fast and powerful It has a huge community support (tens of millions of developers)', 'https://youtu.be/_uQrJ0TkZlc', '/static/java.pdf', '/static/javabook.jpg'),
('python', 'Python is a high-level, interpreted, interactive and object-oriented scripting language. Python is designed to be highly readable. It uses English keywords frequently where as other languages use punctuation, and it has fewer syntactical constructions than other languages.   Python is Interpreted Python is processed at runtime by the interpreter.  You do not need to compile your program before executing it. This is similar to PERL and PHP.   Python is Interactive You can actually sit at a Python prompt and interact with the interpreter directly to write your programs.   Python is Object-Oriented Python supports Object-Oriented style or technique of programming that encapsulates code within objects. ', '/static/python.mp4', '/static/pythonbook.pdf', '/static/pythonBookLogo.jpg');

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
-- Indexes for table `easylearn_admin`
--
ALTER TABLE `easylearn_admin`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `easylearn_comments`
--
ALTER TABLE `easylearn_comments`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `EasyLearn_comments_SubjectID_id_0ea6951f_fk_EasyLearn` (`SubjectID_id`),
  ADD KEY `EasyLearn_comments_UserID_id_90d93a5f_fk_EasyLearn` (`UserID_id`);

--
-- Indexes for table `easylearn_courseinfo`
--
ALTER TABLE `easylearn_courseinfo`
  ADD PRIMARY KEY (`CourseName`);

--
-- Indexes for table `easylearn_courses`
--
ALTER TABLE `easylearn_courses`
  ADD PRIMARY KEY (`CourseId`);

--
-- Indexes for table `easylearn_login`
--
ALTER TABLE `easylearn_login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `easylearn_login1`
--
ALTER TABLE `easylearn_login1`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `easylearn_student`
--
ALTER TABLE `easylearn_student`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `easylearn_subject`
--
ALTER TABLE `easylearn_subject`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `EasyLearn_subject_CourseId_id_798f698e_fk_EasyLearn` (`CourseId_id`);

--
-- Indexes for table `easylearn_subjectinfo`
--
ALTER TABLE `easylearn_subjectinfo`
  ADD PRIMARY KEY (`Subjectname`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `easylearn_comments`
--
ALTER TABLE `easylearn_comments`
  ADD CONSTRAINT `EasyLearn_comments_SubjectID_id_0ea6951f_fk_EasyLearn` FOREIGN KEY (`SubjectID_id`) REFERENCES `easylearn_subject` (`SubjectID`),
  ADD CONSTRAINT `EasyLearn_comments_UserID_id_90d93a5f_fk_EasyLearn` FOREIGN KEY (`UserID_id`) REFERENCES `easylearn_student` (`StudentId`);

--
-- Constraints for table `easylearn_subject`
--
ALTER TABLE `easylearn_subject`
  ADD CONSTRAINT `EasyLearn_subject_CourseId_id_798f698e_fk_EasyLearn` FOREIGN KEY (`CourseId_id`) REFERENCES `easylearn_courses` (`CourseId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
