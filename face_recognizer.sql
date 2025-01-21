-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 20, 2022 lúc 02:12 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `face_recognizer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Account`, `Password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `IdAuttendance` varchar(45) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Lesson_id` int(11) DEFAULT NULL,
  `AttendanceStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`IdAuttendance`, `Student_id`, `Name`, `Class`, `Time_in`, `Time_out`, `Date`, `Lesson_id`, `AttendanceStatus`) VALUES
('SV10180520223', 10, 'Lê Văn Thắng', 'KTPM03', '10:20:02', NULL, '18/05/2022', 3, 'Đi muộn 20 phút'),
('SV11180520223', 11, 'Trần Văn Tuấn', 'KTPM03', '10:31:53', NULL, '18/05/2022', 3, 'Đi muộn 31 phút'),
('SV1180520223', 1, 'Lê Văn Hùng', 'KTPM03', '15:52:48', NULL, '18/05/2022', 3, 'Vắng'),
('SV1180520224', 1, 'Lê Văn Hùng', 'KTPM03', '15:54:29', NULL, '18/05/2022', 4, 'Có mặt'),
('SV12180520223', 12, 'Trịnh Văn Linh', 'KTPM03', '10:04:55', NULL, '18/05/2022', 3, 'Đi muộn 4 phút'),
('SV12180520224', 12, 'Trịnh Văn Linh', 'KTPM03', '15:54:22', NULL, '18/05/2022', 4, 'Có mặt'),
('SV2180520223', 2, 'Nguyễn Đình Tùng Lâm', 'KTPM03', '09:58:34', NULL, '18/05/2022', 3, 'Có mặt'),
('SV3180520223', 3, 'Nguyễn Thị Thùy Linh', 'HTTT01', '10:07:23', NULL, '18/05/2022', 3, 'Đi muộn 7 phút'),
('SV6180520223', 6, 'Nguyễn Xuân Anh', 'KHMT01', '10:01:10', NULL, '18/05/2022', 3, 'Đi muộn 1 phút'),
('SV7180520223', 7, 'Lê Việt Đức', 'KTCK06', '10:31:05', NULL, '18/05/2022', 3, 'Đi muộn 31 phút'),
('SV8180520223', 8, 'Vũ Thị Vân', 'HTTT01', '10:06:31', NULL, '18/05/2022', 3, 'Đi muộn 6 phút'),
('SV9180520223', 9, 'Nguyễn Xuân Trường', 'HTTT01', '10:07:23', NULL, '18/05/2022', 3, 'Đi muộn 7 phút');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `Class` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`Class`, `Name`) VALUES
('HTTT01', 'Hệ thống thông tin 1'),
('KHMT01', 'Khoa học máy tính 1'),
('KTCK06', 'Cơ khí 6'),
('KTPM03', 'Kỹ thuật phần mềm 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(11) NOT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Time_start`, `Time_end`, `Date`, `Teacher_id`, `Subject_id`) VALUES
(2, '07:00:00', '08:00:00', '13/05/2022', 1, 1),
(3, '10:00:00', '11:00:00', '18/05/2022', 2, 3),
(4, '16:00:00', '17:00:00', '18/05/2022', 2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Dep` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) NOT NULL,
  `Roll` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhotoSample` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`Student_id`, `Dep`, `course`, `Year`, `Semester`, `Name`, `Class`, `Roll`, `Gender`, `Dob`, `Email`, `Phone`, `Address`, `PhotoSample`) VALUES
(1, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Lê Văn Hùng', 'KTPM03', '216483959', 'Nam', '22/05/2021', 'hungle123@gmail.com', '217492334', 'Thanh Hóa', 'Yes'),
(2, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Đình Tùng Lâm', 'KTPM03', '216483959', 'Nam', '22/05/2021', 'tunglam123@gmail.com', '217492334', 'Hà Nội', 'Yes'),
(3, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Thị Thùy Linh', 'HTTT01', '216483959', 'Nữ', '22/05/2021', 'thuylinh123@gmail.com', '217492334', 'Hà Nội', 'Yes'),
(4, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Trần Minh Thắng', 'KHMT01', '216483959', 'Nam', '22/05/2021', 'minhthang123@gmail.com', '217492334', 'Nam Định', 'No'),
(5, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Lương Nam Anh', 'KHMT01', '216483959', 'Nam', '22/05/2021', 'namanh123@gmail.com', '217492334', 'Nam Định', 'No'),
(6, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Xuân Anh', 'KHMT01', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(7, 'Cơ khí', 'Chính quy', '2022-2023', 'Học kì I', 'Lê Việt Đức', 'KTCK06', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(8, 'Điện', 'Chính quy', '2022-2023', 'Học kì I', 'Vũ Thị Vân', 'HTTT01', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(9, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Xuân Trường', 'HTTT01', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(10, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Lê Văn Thắng', 'KTPM03', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(11, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Trần Văn Tuấn', 'KTPM03', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(12, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Trịnh Văn Linh', 'KTPM03', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(13, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Nguyễn Mạnh Hùng', 'KTPM03', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes'),
(14, 'Công nghệ thông tin', 'Chính quy', '2022-2023', 'Học kì I', 'Lê Minh Hiếu', 'KTPM03', '123456', 'Nam', '18/05/2022', 'abc123@gmail.com', '83621732', 'Nghệ An', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_has_subject`
--

CREATE TABLE `student_has_subject` (
  `Student_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `student_has_subject`
--

INSERT INTO `student_has_subject` (`Student_id`, `Subject_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `Subject_name` varchar(45) NOT NULL,
  `Class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`Subject_id`, `Subject_name`, `Class`) VALUES
(1, 'Lập trình Java', 'KTPM03'),
(2, 'Lập trình PHP', 'HTTT01'),
(3, 'Thực tập cơ sở ngành', 'HTTT01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SecurityQ` varchar(45) NOT NULL,
  `SecurityA` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`Teacher_id`, `Name`, `Phone`, `Email`, `SecurityQ`, `SecurityA`, `Password`) VALUES
(1, 'Trần Hùng Cường', '0217389243', 'cuongth@gmail.com', 'Sở thích của bạn', 'aaa', '123'),
(2, 'Trần Nhật Hoàng', '0142739264', 'hoangtn@gmail.com', 'Bạn thích ăn gì', 'com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_has_subject`
--

CREATE TABLE `teacher_has_subject` (
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher_has_subject`
--

INSERT INTO `teacher_has_subject` (`Teacher_id`, `Subject_id`) VALUES
(1, 1),
(2, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Account`);

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`IdAuttendance`),
  ADD KEY `Student_id` (`Student_id`) USING BTREE,
  ADD KEY `Lesson_id` (`Lesson_id`) USING BTREE;

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class`);

--
-- Chỉ mục cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`),
  ADD KEY `Subject_id` (`Subject_id`) USING BTREE,
  ADD KEY `Teacher_id` (`Teacher_id`) USING BTREE;

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class` (`Class`);

--
-- Chỉ mục cho bảng `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD KEY `Student_id_2` (`Student_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`),
  ADD KEY `Class` (`Class`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- Chỉ mục cho bảng `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD KEY `Teacher_id` (`Teacher_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`);

--
-- Các ràng buộc cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `lesson_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Các ràng buộc cho bảng `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD CONSTRAINT `student_has_subject_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `student_has_subject_ibfk_4` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`);

--
-- Các ràng buộc cho bảng `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Các ràng buộc cho bảng `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD CONSTRAINT `teacher_has_subject_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `teacher_has_subject_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
