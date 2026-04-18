-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2026 pada 09.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `de_parking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'updated', 'App\\Models\\ParkingRate', 'updated', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"vehicle_type\":\"motorcycle\",\"updated_at\":\"2026-04-16T00:39:53.000000Z\"},\"old\":{\"vehicle_type\":\"car\",\"updated_at\":\"2026-04-15T03:15:53.000000Z\"}}', NULL, '2026-04-15 17:39:54', '2026-04-15 17:39:54'),
(2, 'default', 'created', 'App\\Models\\ParkingArea', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":4,\"code\":\"SF\",\"name\":\"Second Floor\",\"capacity\":25,\"used_slots\":5,\"is_active\":1,\"created_at\":\"2026-04-16T00:57:43.000000Z\",\"updated_at\":\"2026-04-16T00:57:43.000000Z\"}}', NULL, '2026-04-15 17:57:44', '2026-04-15 17:57:44'),
(3, 'default', 'created', 'App\\Models\\User', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"name\":\"uhuy\",\"email\":\"uhuy@de.id\",\"email_verified_at\":null,\"password\":\"$2y$12$1yIbztqIAcThth57rcxRsutUkUbIfdQDGQQR3I3tuaLmA.MAp72iu\",\"remember_token\":null,\"created_at\":\"2026-04-16T01:54:53.000000Z\",\"updated_at\":\"2026-04-16T01:54:53.000000Z\"}}', NULL, '2026-04-15 18:54:53', '2026-04-15 18:54:53'),
(4, 'default', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"remember_token\":\"cTLou8RaBpNpWmyuLIv3N9FfxFWyFQopFZ38YwqZanl2jEAu9CA3gKD5JcQa\"},\"old\":{\"remember_token\":\"93HkdRisn9znnpfppyyOAH7HCawL7GQFHZ0ld7Bhb27csWEhwb7wBYVFdtdQ\"}}', NULL, '2026-04-15 18:55:24', '2026-04-15 18:55:24'),
(5, 'default', 'created', 'App\\Models\\ParkingArea', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":5,\"code\":\"BP\",\"name\":\"Basement Premium\",\"capacity\":100,\"used_slots\":15,\"is_active\":1,\"created_at\":\"2026-04-16T03:22:38.000000Z\",\"updated_at\":\"2026-04-16T03:22:38.000000Z\",\"image\":\"01KPA4ZT5HEVG1ZXJSERH855TP.jpg\"}}', NULL, '2026-04-15 20:22:40', '2026-04-15 20:22:40'),
(6, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"updated_at\":\"2026-04-16T03:53:27.000000Z\",\"image\":\"01KPA6R810W5TPD4JC6A3VPA30.jpg\"},\"old\":{\"updated_at\":\"2026-04-14T08:00:28.000000Z\",\"image\":null}}', NULL, '2026-04-15 20:53:28', '2026-04-15 20:53:28'),
(7, 'default', 'created', 'App\\Models\\Transaction', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":5,\"user_id\":2,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":null,\"time_out\":\"2026-04-17 17:49:20\",\"duration_time\":8,\"total_rate\":\"19000\",\"status\":\"in\",\"created_at\":\"2026-04-17T05:49:30.000000Z\",\"updated_at\":\"2026-04-17T05:49:30.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 22:49:31', '2026-04-16 22:49:31'),
(8, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"id\":5,\"user_id\":2,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":null,\"time_out\":\"2026-04-17 17:49:20\",\"duration_time\":8,\"total_rate\":\"19000\",\"status\":\"in\",\"created_at\":\"2026-04-17T05:49:30.000000Z\",\"updated_at\":\"2026-04-17T05:49:30.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 22:51:08', '2026-04-16 22:51:08'),
(9, 'default', 'created', 'App\\Models\\Transaction', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"user_id\":2,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":3,\"time_out\":\"2026-04-17 12:52:20\",\"duration_time\":3,\"total_rate\":\"9000\",\"status\":\"in\",\"created_at\":\"2026-04-17T05:52:23.000000Z\",\"updated_at\":\"2026-04-17T05:52:23.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 22:52:24', '2026-04-16 22:52:24'),
(10, 'default', 'created', 'App\\Models\\User', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"name\":\"dada\",\"email\":\"dada@de.id\",\"email_verified_at\":null,\"password\":\"$2y$12$9mEZL8QsWaCuDEF3n0FgZezwPhusYAhgxXr14X3jmalMZrIH3LvNa\",\"remember_token\":null,\"created_at\":\"2026-04-17T05:55:23.000000Z\",\"updated_at\":\"2026-04-17T05:55:23.000000Z\"}}', NULL, '2026-04-16 22:55:23', '2026-04-16 22:55:23'),
(11, 'default', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"remember_token\":\"ZzGnQEYZ43VsCbqACQvyYYfmHUliy7MtFMxjGH5B47X82vTgzYPmhF7ykhPE\"},\"old\":{\"remember_token\":\"cTLou8RaBpNpWmyuLIv3N9FfxFWyFQopFZ38YwqZanl2jEAu9CA3gKD5JcQa\"}}', NULL, '2026-04-16 22:55:35', '2026-04-16 22:55:35'),
(12, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\":{\"id\":4,\"user_id\":3,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":null,\"time_out\":\"2026-04-17 16:21:12\",\"duration_time\":6,\"total_rate\":\"15000\",\"status\":\"in\",\"created_at\":\"2026-04-17T04:21:19.000000Z\",\"updated_at\":\"2026-04-17T04:21:19.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:09:55', '2026-04-16 23:09:55'),
(13, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\":{\"id\":3,\"user_id\":6,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":null,\"time_out\":\"2026-04-17 15:20:19\",\"duration_time\":5,\"total_rate\":\"13000\",\"status\":\"in\",\"created_at\":\"2026-04-17T04:20:31.000000Z\",\"updated_at\":\"2026-04-17T04:20:31.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:10:02', '2026-04-16 23:10:02'),
(14, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"id\":2,\"user_id\":4,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":null,\"time_out\":\"2026-04-28 14:18:19\",\"duration_time\":268,\"total_rate\":\"539000\",\"status\":\"in\",\"created_at\":\"2026-04-17T04:18:26.000000Z\",\"updated_at\":\"2026-04-17T04:18:26.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:10:10', '2026-04-16 23:10:10'),
(15, 'default', 'created', 'App\\Models\\Transaction', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"user_id\":2,\"parking_rate_id\":2,\"parking_area_id\":5,\"vehicle_id\":3,\"time_out\":\"2026-04-17 18:23:27\",\"duration_time\":8,\"total_rate\":\"19000\",\"status\":\"in\",\"created_at\":\"2026-04-17T06:18:47.000000Z\",\"updated_at\":\"2026-04-17T06:18:47.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:18:47', '2026-04-16 23:18:47'),
(16, 'default', 'created', 'App\\Models\\Ticket', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"vehicle_id\":2,\"parking_area_id\":1,\"parking_rate_id\":1,\"time_in\":\"2026-04-17 13:31:04\",\"created_at\":\"2026-04-17T06:31:09.000000Z\",\"updated_at\":\"2026-04-17T06:31:09.000000Z\",\"ticket_code\":\"KMS-0809\"}}', NULL, '2026-04-16 23:31:09', '2026-04-16 23:31:09'),
(17, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":79,\"updated_at\":\"2026-04-17T06:31:09.000000Z\"},\"old\":{\"capacity\":80,\"updated_at\":\"2026-04-16T03:53:27.000000Z\"}}', NULL, '2026-04-16 23:31:09', '2026-04-16 23:31:09'),
(18, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":1,\"updated_at\":\"2026-04-17T06:31:09.000000Z\"},\"old\":{\"used_slots\":0,\"updated_at\":\"2026-04-16T03:53:27.000000Z\"}}', NULL, '2026-04-16 23:31:09', '2026-04-16 23:31:09'),
(19, 'default', 'created', 'App\\Models\\Transaction', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":8,\"user_id\":6,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":2,\"time_out\":\"2026-04-17 17:37:25\",\"duration_time\":5,\"total_rate\":\"13000\",\"status\":\"in\",\"created_at\":\"2026-04-17T06:32:28.000000Z\",\"updated_at\":\"2026-04-17T06:32:28.000000Z\",\"ticket_id\":6}}', NULL, '2026-04-16 23:32:28', '2026-04-16 23:32:28'),
(20, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\":{\"id\":8,\"user_id\":6,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":2,\"time_out\":\"2026-04-17 17:37:25\",\"duration_time\":5,\"total_rate\":\"13000\",\"status\":\"in\",\"created_at\":\"2026-04-17T06:32:28.000000Z\",\"updated_at\":\"2026-04-17T06:32:28.000000Z\",\"ticket_id\":6}}', NULL, '2026-04-16 23:40:10', '2026-04-16 23:40:10'),
(21, 'default', 'created', 'App\\Models\\Transaction', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":9,\"user_id\":4,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":2,\"time_out\":\"2026-04-18 13:40:40\",\"duration_time\":25,\"total_rate\":\"53000\",\"status\":null,\"created_at\":\"2026-04-17T06:40:50.000000Z\",\"updated_at\":\"2026-04-17T06:40:50.000000Z\",\"ticket_id\":6}}', NULL, '2026-04-16 23:40:50', '2026-04-16 23:40:50'),
(22, 'default', 'deleted', 'App\\Models\\Ticket', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"id\":6,\"vehicle_id\":2,\"parking_area_id\":1,\"parking_rate_id\":1,\"time_in\":\"2026-04-17 13:31:04\",\"created_at\":\"2026-04-17T06:31:09.000000Z\",\"updated_at\":\"2026-04-17T06:31:09.000000Z\",\"ticket_code\":\"KMS-0809\"}}', NULL, '2026-04-16 23:49:45', '2026-04-16 23:49:45'),
(23, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"id\":7,\"user_id\":2,\"parking_rate_id\":2,\"parking_area_id\":5,\"vehicle_id\":3,\"time_out\":\"2026-04-17 18:23:27\",\"duration_time\":8,\"total_rate\":\"19000\",\"status\":\"in\",\"created_at\":\"2026-04-17T06:18:47.000000Z\",\"updated_at\":\"2026-04-17T06:18:47.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:50:25', '2026-04-16 23:50:25'),
(24, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"id\":6,\"user_id\":2,\"parking_rate_id\":null,\"parking_area_id\":null,\"vehicle_id\":3,\"time_out\":\"2026-04-17 12:52:20\",\"duration_time\":3,\"total_rate\":\"9000\",\"status\":\"in\",\"created_at\":\"2026-04-17T05:52:23.000000Z\",\"updated_at\":\"2026-04-17T05:52:23.000000Z\",\"ticket_id\":5}}', NULL, '2026-04-16 23:50:33', '2026-04-16 23:50:33'),
(25, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"id\":1,\"user_id\":2,\"parking_rate_id\":2,\"parking_area_id\":5,\"vehicle_id\":1,\"time_out\":\"2026-04-17 11:17:51\",\"duration_time\":2,\"total_rate\":\"10000\",\"status\":\"in\",\"created_at\":\"2026-04-17T02:15:29.000000Z\",\"updated_at\":\"2026-04-17T02:15:29.000000Z\",\"ticket_id\":null}}', NULL, '2026-04-16 23:50:40', '2026-04-16 23:50:40'),
(26, 'default', 'deleted', 'App\\Models\\Ticket', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"id\":5,\"vehicle_id\":3,\"parking_area_id\":5,\"parking_rate_id\":2,\"time_in\":\"2026-04-17 10:35:44\",\"created_at\":\"2026-04-17T03:35:48.000000Z\",\"updated_at\":\"2026-04-17T03:35:48.000000Z\",\"ticket_code\":\"JMT-0147\"}}', NULL, '2026-04-16 23:58:19', '2026-04-16 23:58:19'),
(27, 'default', 'deleted', 'App\\Models\\Ticket', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\":{\"id\":4,\"vehicle_id\":1,\"parking_area_id\":3,\"parking_rate_id\":2,\"time_in\":\"2026-04-17 10:24:55\",\"created_at\":\"2026-04-17T03:25:01.000000Z\",\"updated_at\":\"2026-04-17T03:25:01.000000Z\",\"ticket_code\":\"BBB\"}}', NULL, '2026-04-16 23:58:26', '2026-04-16 23:58:26'),
(28, 'default', 'created', 'App\\Models\\Ticket', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"vehicle_id\":3,\"parking_area_id\":1,\"parking_rate_id\":1,\"time_in\":\"2026-04-17 13:58:50\",\"created_at\":\"2026-04-17T06:58:56.000000Z\",\"updated_at\":\"2026-04-17T06:58:56.000000Z\",\"ticket_code\":\"SNS-0000\"}}', NULL, '2026-04-16 23:58:56', '2026-04-16 23:58:56'),
(29, 'default', 'created', 'App\\Models\\Transaction', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":10,\"user_id\":1,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":3,\"time_out\":\"2026-05-02 13:59:26\",\"duration_time\":361,\"total_rate\":\"725000\",\"status\":null,\"created_at\":\"2026-04-17T06:59:36.000000Z\",\"updated_at\":\"2026-04-17T06:59:36.000000Z\",\"ticket_id\":7}}', NULL, '2026-04-16 23:59:36', '2026-04-16 23:59:36'),
(30, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 10, 'App\\Models\\User', 1, '{\"old\":{\"id\":10,\"user_id\":1,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":3,\"time_out\":\"2026-05-02 13:59:26\",\"duration_time\":361,\"total_rate\":\"725000\",\"status\":null,\"created_at\":\"2026-04-17T06:59:36.000000Z\",\"updated_at\":\"2026-04-17T06:59:36.000000Z\",\"ticket_id\":7}}', NULL, '2026-04-17 00:04:03', '2026-04-17 00:04:03'),
(31, 'default', 'created', 'App\\Models\\Transaction', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":11,\"user_id\":1,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":3,\"time_out\":\"2026-04-17 19:10:57\",\"duration_time\":6,\"total_rate\":\"15000\",\"status\":\"in\",\"created_at\":\"2026-04-17T07:05:01.000000Z\",\"updated_at\":\"2026-04-17T07:05:01.000000Z\",\"ticket_id\":7}}', NULL, '2026-04-17 00:05:01', '2026-04-17 00:05:01'),
(32, 'default', 'deleted', 'App\\Models\\Transaction', 'deleted', 11, 'App\\Models\\User', 1, '{\"old\":{\"id\":11,\"user_id\":1,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":3,\"time_out\":\"2026-04-17 19:10:57\",\"duration_time\":6,\"total_rate\":\"15000\",\"status\":\"in\",\"created_at\":\"2026-04-17T07:05:01.000000Z\",\"updated_at\":\"2026-04-17T07:05:01.000000Z\",\"ticket_id\":7}}', NULL, '2026-04-17 00:07:09', '2026-04-17 00:07:09'),
(33, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":80,\"updated_at\":\"2026-04-17T07:07:09.000000Z\"},\"old\":{\"capacity\":79,\"updated_at\":\"2026-04-17T06:31:09.000000Z\"}}', NULL, '2026-04-17 00:07:09', '2026-04-17 00:07:09'),
(34, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":0,\"updated_at\":\"2026-04-17T07:07:09.000000Z\"},\"old\":{\"used_slots\":1,\"updated_at\":\"2026-04-17T06:31:09.000000Z\"}}', NULL, '2026-04-17 00:07:09', '2026-04-17 00:07:09'),
(35, 'default', 'created', 'App\\Models\\Transaction', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":12,\"user_id\":1,\"parking_rate_id\":1,\"parking_area_id\":1,\"vehicle_id\":3,\"time_out\":\"2026-04-17 18:07:23\",\"duration_time\":5,\"total_rate\":\"13000\",\"status\":\"in\",\"created_at\":\"2026-04-17T07:07:30.000000Z\",\"updated_at\":\"2026-04-17T07:07:30.000000Z\",\"ticket_id\":7}}', NULL, '2026-04-17 00:07:31', '2026-04-17 00:07:31'),
(36, 'default', 'deleted', 'App\\Models\\ParkingArea', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"id\":5,\"code\":\"BP\",\"name\":\"Basement Premium\",\"capacity\":100,\"used_slots\":15,\"is_active\":1,\"created_at\":\"2026-04-16T03:22:38.000000Z\",\"updated_at\":\"2026-04-16T03:22:38.000000Z\",\"image\":\"01KPA4ZT5HEVG1ZXJSERH855TP.jpg\"}}', NULL, '2026-04-17 21:19:51', '2026-04-17 21:19:51'),
(37, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"id\":1,\"parking_area_id\":3,\"vehicle_type\":\"car\",\"rate_per_hour\":2000,\"is_active\":1,\"created_at\":\"2026-04-14T08:22:45.000000Z\",\"updated_at\":\"2026-04-14T08:22:45.000000Z\"}}', NULL, '2026-04-17 21:21:14', '2026-04-17 21:21:14'),
(38, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"id\":2,\"parking_area_id\":1,\"vehicle_type\":\"car\",\"rate_per_hour\":2000,\"is_active\":1,\"created_at\":\"2026-04-14T08:23:00.000000Z\",\"updated_at\":\"2026-04-14T08:23:00.000000Z\"}}', NULL, '2026-04-17 21:21:21', '2026-04-17 21:21:21'),
(39, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\":{\"id\":3,\"parking_area_id\":2,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":4000,\"is_active\":1,\"created_at\":\"2026-04-14T08:23:25.000000Z\",\"updated_at\":\"2026-04-14T08:23:25.000000Z\"}}', NULL, '2026-04-17 21:21:28', '2026-04-17 21:21:28'),
(40, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\":{\"id\":4,\"parking_area_id\":3,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":1000,\"is_active\":1,\"created_at\":\"2026-04-15T03:15:53.000000Z\",\"updated_at\":\"2026-04-16T00:39:53.000000Z\"}}', NULL, '2026-04-17 21:21:34', '2026-04-17 21:21:34'),
(41, 'default', 'deleted', 'App\\Models\\ParkingArea', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"id\":1,\"code\":\"B1\",\"name\":\"Basement\",\"capacity\":80,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-14T08:00:28.000000Z\",\"updated_at\":\"2026-04-17T07:07:09.000000Z\",\"image\":\"01KPA6R810W5TPD4JC6A3VPA30.jpg\"}}', NULL, '2026-04-17 21:21:42', '2026-04-17 21:21:42'),
(42, 'default', 'deleted', 'App\\Models\\ParkingArea', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"id\":2,\"code\":\"GF\",\"name\":\"Grand Floor\",\"capacity\":20,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-14T08:00:50.000000Z\",\"updated_at\":\"2026-04-14T08:00:50.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:21:49', '2026-04-17 21:21:49'),
(43, 'default', 'deleted', 'App\\Models\\ParkingArea', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\":{\"id\":3,\"code\":\"B2\",\"name\":\"Basement 2\",\"capacity\":40,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-14T08:01:17.000000Z\",\"updated_at\":\"2026-04-14T08:01:17.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:21:54', '2026-04-17 21:21:54'),
(44, 'default', 'deleted', 'App\\Models\\ParkingArea', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\":{\"id\":4,\"code\":\"SF\",\"name\":\"Second Floor\",\"capacity\":25,\"used_slots\":5,\"is_active\":1,\"created_at\":\"2026-04-16T00:57:43.000000Z\",\"updated_at\":\"2026-04-16T00:57:43.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:21:59', '2026-04-17 21:21:59'),
(45, 'default', 'created', 'App\\Models\\ParkingArea', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"code\":\"B1\",\"name\":\"Basement\",\"capacity\":80,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-18T04:23:36.000000Z\",\"updated_at\":\"2026-04-18T04:23:36.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:23:36', '2026-04-17 21:23:36'),
(46, 'default', 'created', 'App\\Models\\ParkingArea', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"code\":\"B2\",\"name\":\"Basement 2\",\"capacity\":80,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-18T04:24:06.000000Z\",\"updated_at\":\"2026-04-18T04:24:06.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:24:06', '2026-04-17 21:24:06'),
(47, 'default', 'created', 'App\\Models\\ParkingArea', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":8,\"code\":\"B3\",\"name\":\"Basement 3\",\"capacity\":50,\"used_slots\":0,\"is_active\":1,\"created_at\":\"2026-04-18T04:24:21.000000Z\",\"updated_at\":\"2026-04-18T04:24:21.000000Z\",\"image\":null}}', NULL, '2026-04-17 21:24:21', '2026-04-17 21:24:21'),
(48, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":5,\"parking_area_id\":6,\"vehicle_type\":\"car\",\"rate_per_hour\":5000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:31.000000Z\",\"updated_at\":\"2026-04-18T04:30:31.000000Z\"}}', NULL, '2026-04-17 21:30:31', '2026-04-17 21:30:31'),
(49, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":6,\"parking_area_id\":6,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":2000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:43.000000Z\",\"updated_at\":\"2026-04-18T04:30:43.000000Z\"}}', NULL, '2026-04-17 21:30:43', '2026-04-17 21:30:43'),
(50, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"parking_area_id\":7,\"vehicle_type\":\"car\",\"rate_per_hour\":6000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:53.000000Z\",\"updated_at\":\"2026-04-18T04:30:53.000000Z\"}}', NULL, '2026-04-17 21:30:53', '2026-04-17 21:30:53'),
(51, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":8,\"parking_area_id\":7,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":4000,\"is_active\":1,\"created_at\":\"2026-04-18T04:31:08.000000Z\",\"updated_at\":\"2026-04-18T04:31:08.000000Z\"}}', NULL, '2026-04-17 21:31:08', '2026-04-17 21:31:08'),
(52, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"id\":5,\"parking_area_id\":6,\"vehicle_type\":\"car\",\"rate_per_hour\":5000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:31.000000Z\",\"updated_at\":\"2026-04-18T04:30:31.000000Z\"}}', NULL, '2026-04-17 21:36:19', '2026-04-17 21:36:19'),
(53, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"id\":6,\"parking_area_id\":6,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":2000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:43.000000Z\",\"updated_at\":\"2026-04-18T04:30:43.000000Z\"}}', NULL, '2026-04-17 21:36:39', '2026-04-17 21:36:39'),
(54, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"id\":7,\"parking_area_id\":7,\"vehicle_type\":\"car\",\"rate_per_hour\":6000,\"is_active\":1,\"created_at\":\"2026-04-18T04:30:53.000000Z\",\"updated_at\":\"2026-04-18T04:30:53.000000Z\"}}', NULL, '2026-04-17 21:36:46', '2026-04-17 21:36:46'),
(55, 'default', 'deleted', 'App\\Models\\ParkingRate', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\":{\"id\":8,\"parking_area_id\":7,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":4000,\"is_active\":1,\"created_at\":\"2026-04-18T04:31:08.000000Z\",\"updated_at\":\"2026-04-18T04:31:08.000000Z\"}}', NULL, '2026-04-17 21:36:57', '2026-04-17 21:36:57'),
(56, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":9,\"parking_area_id\":6,\"vehicle_type\":\"motorcycle\",\"rate_per_hour\":2000,\"is_active\":1,\"created_at\":\"2026-04-18T04:38:37.000000Z\",\"updated_at\":\"2026-04-18T04:38:37.000000Z\"}}', NULL, '2026-04-17 21:38:37', '2026-04-17 21:38:37'),
(57, 'default', 'created', 'App\\Models\\ParkingRate', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":10,\"parking_area_id\":6,\"vehicle_type\":\"car\",\"rate_per_hour\":5000,\"is_active\":1,\"created_at\":\"2026-04-18T04:38:54.000000Z\",\"updated_at\":\"2026-04-18T04:38:54.000000Z\"}}', NULL, '2026-04-17 21:38:54', '2026-04-17 21:38:54'),
(58, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T05:04:07.000000Z\"},\"old\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T04:23:36.000000Z\"}}', NULL, '2026-04-17 22:04:07', '2026-04-17 22:04:07'),
(59, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":79,\"updated_at\":\"2026-04-18T05:04:07.000000Z\"},\"old\":{\"capacity\":80,\"updated_at\":\"2026-04-18T04:23:36.000000Z\"}}', NULL, '2026-04-17 22:04:07', '2026-04-17 22:04:07'),
(60, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":2,\"updated_at\":\"2026-04-18T05:15:55.000000Z\"},\"old\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T05:04:07.000000Z\"}}', NULL, '2026-04-17 22:15:55', '2026-04-17 22:15:55'),
(61, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":78,\"updated_at\":\"2026-04-18T05:15:55.000000Z\"},\"old\":{\"capacity\":79,\"updated_at\":\"2026-04-18T05:04:07.000000Z\"}}', NULL, '2026-04-17 22:15:55', '2026-04-17 22:15:55'),
(62, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":3,\"updated_at\":\"2026-04-18T06:09:55.000000Z\"},\"old\":{\"used_slots\":2,\"updated_at\":\"2026-04-18T05:15:55.000000Z\"}}', NULL, '2026-04-17 23:09:55', '2026-04-17 23:09:55'),
(63, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":77,\"updated_at\":\"2026-04-18T06:09:55.000000Z\"},\"old\":{\"capacity\":78,\"updated_at\":\"2026-04-18T05:15:55.000000Z\"}}', NULL, '2026-04-17 23:09:55', '2026-04-17 23:09:55'),
(64, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":4,\"updated_at\":\"2026-04-18T06:36:51.000000Z\"},\"old\":{\"used_slots\":3,\"updated_at\":\"2026-04-18T06:09:55.000000Z\"}}', NULL, '2026-04-17 23:36:51', '2026-04-17 23:36:51'),
(65, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":76,\"updated_at\":\"2026-04-18T06:36:51.000000Z\"},\"old\":{\"capacity\":77,\"updated_at\":\"2026-04-18T06:09:55.000000Z\"}}', NULL, '2026-04-17 23:36:51', '2026-04-17 23:36:51'),
(66, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":3,\"updated_at\":\"2026-04-18T06:45:28.000000Z\"},\"old\":{\"used_slots\":4,\"updated_at\":\"2026-04-18T06:36:51.000000Z\"}}', NULL, '2026-04-17 23:45:28', '2026-04-17 23:45:28'),
(67, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":77,\"updated_at\":\"2026-04-18T06:45:28.000000Z\"},\"old\":{\"capacity\":76,\"updated_at\":\"2026-04-18T06:36:51.000000Z\"}}', NULL, '2026-04-17 23:45:28', '2026-04-17 23:45:28'),
(68, 'default', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"remember_token\":\"GVcN4yhoS5cMoxcFwSSZumycMOyVJlO9PfAJU8yMUIndBYPE0UHCtntB3HvS\"},\"old\":{\"remember_token\":\"ZzGnQEYZ43VsCbqACQvyYYfmHUliy7MtFMxjGH5B47X82vTgzYPmhF7ykhPE\"}}', NULL, '2026-04-17 23:53:29', '2026-04-17 23:53:29'),
(69, 'default', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"remember_token\":\"v6unjbmg11WHheXjF7Z3tpWxYTmwNgmJuhweytE1tUt8PHbQfaMcCPbip0IW\"},\"old\":{\"remember_token\":\"GVcN4yhoS5cMoxcFwSSZumycMOyVJlO9PfAJU8yMUIndBYPE0UHCtntB3HvS\"}}', NULL, '2026-04-17 23:54:59', '2026-04-17 23:54:59'),
(70, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":2,\"updated_at\":\"2026-04-18T06:58:54.000000Z\"},\"old\":{\"used_slots\":3,\"updated_at\":\"2026-04-18T06:45:28.000000Z\"}}', NULL, '2026-04-17 23:58:54', '2026-04-17 23:58:54'),
(71, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":78,\"updated_at\":\"2026-04-18T06:58:54.000000Z\"},\"old\":{\"capacity\":77,\"updated_at\":\"2026-04-18T06:45:28.000000Z\"}}', NULL, '2026-04-17 23:58:54', '2026-04-17 23:58:54'),
(72, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T06:58:58.000000Z\"},\"old\":{\"used_slots\":2,\"updated_at\":\"2026-04-18T06:58:54.000000Z\"}}', NULL, '2026-04-17 23:58:58', '2026-04-17 23:58:58'),
(73, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":79,\"updated_at\":\"2026-04-18T06:58:58.000000Z\"},\"old\":{\"capacity\":78,\"updated_at\":\"2026-04-18T06:58:54.000000Z\"}}', NULL, '2026-04-17 23:58:58', '2026-04-17 23:58:58'),
(74, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T06:59:05.000000Z\"},\"old\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T06:58:58.000000Z\"}}', NULL, '2026-04-17 23:59:05', '2026-04-17 23:59:05'),
(75, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":80,\"updated_at\":\"2026-04-18T06:59:05.000000Z\"},\"old\":{\"capacity\":79,\"updated_at\":\"2026-04-18T06:58:58.000000Z\"}}', NULL, '2026-04-17 23:59:05', '2026-04-17 23:59:05'),
(76, 'default', 'updated', 'App\\Models\\User', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"remember_token\":\"aJvggEzIFkSzz9w2f4x9xCOXjZNQATbS4LwxdrHuHsKKejZBUpPhRVh99ae6\"},\"old\":{\"remember_token\":\"v6unjbmg11WHheXjF7Z3tpWxYTmwNgmJuhweytE1tUt8PHbQfaMcCPbip0IW\"}}', NULL, '2026-04-18 00:09:47', '2026-04-18 00:09:47'),
(77, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T07:12:39.000000Z\"},\"old\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T06:59:05.000000Z\"}}', NULL, '2026-04-18 00:12:39', '2026-04-18 00:12:39'),
(78, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":79,\"updated_at\":\"2026-04-18T07:12:39.000000Z\"},\"old\":{\"capacity\":80,\"updated_at\":\"2026-04-18T06:59:05.000000Z\"}}', NULL, '2026-04-18 00:12:39', '2026-04-18 00:12:39'),
(79, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T07:13:00.000000Z\"},\"old\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T07:12:39.000000Z\"}}', NULL, '2026-04-18 00:13:00', '2026-04-18 00:13:00'),
(80, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":80,\"updated_at\":\"2026-04-18T07:13:00.000000Z\"},\"old\":{\"capacity\":79,\"updated_at\":\"2026-04-18T07:12:39.000000Z\"}}', NULL, '2026-04-18 00:13:00', '2026-04-18 00:13:00'),
(81, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T07:37:20.000000Z\"},\"old\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T07:13:00.000000Z\"}}', NULL, '2026-04-18 00:37:20', '2026-04-18 00:37:20'),
(82, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":79,\"updated_at\":\"2026-04-18T07:37:20.000000Z\"},\"old\":{\"capacity\":80,\"updated_at\":\"2026-04-18T07:13:00.000000Z\"}}', NULL, '2026-04-18 00:37:20', '2026-04-18 00:37:20'),
(83, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"used_slots\":0,\"updated_at\":\"2026-04-18T07:44:50.000000Z\"},\"old\":{\"used_slots\":1,\"updated_at\":\"2026-04-18T07:37:20.000000Z\"}}', NULL, '2026-04-18 00:44:50', '2026-04-18 00:44:50'),
(84, 'default', 'updated', 'App\\Models\\ParkingArea', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"capacity\":80,\"updated_at\":\"2026-04-18T07:44:50.000000Z\"},\"old\":{\"capacity\":79,\"updated_at\":\"2026-04-18T07:37:20.000000Z\"}}', NULL, '2026-04-18 00:44:50', '2026-04-18 00:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1776311659),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1776311658;', 1776311658),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:2;', 1776496258),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1776496258;', 1776496258),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:96:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:16:\"ViewAny:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"View:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:15:\"Create:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"Update:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"Delete:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:18:\"DeleteAny:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:16:\"Restore:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:20:\"ForceDelete:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:23:\"ForceDeleteAny:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:19:\"RestoreAny:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:18:\"Replicate:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:16:\"Reorder:Activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:19:\"ViewAny:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"View:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:18:\"Create:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:18:\"Update:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"Delete:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:21:\"DeleteAny:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:19:\"Restore:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:23:\"ForceDelete:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:26:\"ForceDeleteAny:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:22:\"RestoreAny:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:21:\"Replicate:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:19:\"Reorder:ParkingArea\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:19:\"ViewAny:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:16:\"View:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"Create:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:18:\"Update:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:18:\"Delete:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:21:\"DeleteAny:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:19:\"Restore:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:23:\"ForceDelete:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:26:\"ForceDeleteAny:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:22:\"RestoreAny:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:21:\"Replicate:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:19:\"Reorder:ParkingRate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"ViewAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:9:\"View:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"Create:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"Update:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"Delete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"DeleteAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"Restore:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:16:\"ForceDelete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:19:\"ForceDeleteAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:15:\"RestoreAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:14:\"Replicate:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:12:\"Reorder:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"ViewAny:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:12:\"View:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:14:\"Create:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:14:\"Update:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:14:\"Delete:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:17:\"DeleteAny:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:15:\"Restore:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:19:\"ForceDelete:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:22:\"ForceDeleteAny:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:18:\"RestoreAny:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:17:\"Replicate:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:15:\"Reorder:Vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:12:\"ViewAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:9:\"View:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:11:\"Create:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:11:\"Update:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:11:\"Delete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:14:\"DeleteAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:12:\"Restore:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:16:\"ForceDelete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:19:\"ForceDeleteAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:15:\"RestoreAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:14:\"Replicate:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:12:\"Reorder:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:19:\"ViewAny:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:16:\"View:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:18:\"Create:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"Update:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:18:\"Delete:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:21:\"DeleteAny:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:19:\"Restore:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:23:\"ForceDelete:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:26:\"ForceDeleteAny:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:22:\"RestoreAny:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:21:\"Replicate:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:19:\"Reorder:Transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:14:\"ViewAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:11:\"View:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:13:\"Create:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:13:\"Update:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:13:\"Delete:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:16:\"DeleteAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:14:\"Restore:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:18:\"ForceDelete:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:21:\"ForceDeleteAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:17:\"RestoreAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:16:\"Replicate:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:14:\"Reorder:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Staff\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"Owner\";s:1:\"c\";s:3:\"web\";}}}', 1776582573);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_14_065044_create_parking_areas_table', 2),
(5, '2026_04_14_080339_create_parking_rates_table', 3),
(6, '2026_04_15_032249_create_vehicles_table', 4),
(7, '2026_04_15_043605_create_activity_log_table', 5),
(8, '2026_04_15_043606_add_event_column_to_activity_log_table', 5),
(9, '2026_04_15_043607_add_batch_uuid_column_to_activity_log_table', 5),
(11, '2026_04_16_011631_create_permission_tables', 6),
(12, '2026_04_16_021447_add_column_to_parking_areas_table', 7),
(13, '2026_04_16_021700_add_column_to_vehicle_table', 8),
(14, '2026_04_16_021715_add_column_to_vehicles_table', 8),
(15, '2026_04_17_014900_create_transactions_table', 9),
(16, '2026_04_17_021553_create_tickets_table', 10),
(17, '2026_04_17_022505_delete_column_to_transaction_table', 11),
(18, '2026_04_17_022639_delete_column_to_transactions_table', 12),
(19, '2026_04_17_022822_add_column_to_transaction_table', 13),
(20, '2026_04_17_023008_add_column_to_transactions_table', 13),
(21, '2026_04_17_024245_create_recaps_table', 14),
(22, '2026_04_17_030526_add_column_to_tickets_table', 15),
(23, '2026_04_17_040902_delete_column_to_transactions_table', 15),
(24, '2026_04_17_040951_drop_time_in_column_from_transactions_table', 15),
(25, '2026_04_17_063733_change_status_nullable_on_transactions_table', 16),
(26, '2026_04_17_063738_change_status_nullable_on_transactions_table', 17),
(27, '2026_04_17_064842_update_fk_ticket_id_on_transactions_table', 18),
(28, '2026_04_17_070052_change_status_nullable_on_transactions_table', 19),
(29, '2026_04_18_011913_drop_transactions_and_tickets_tables', 20),
(30, '2026_04_18_031256_create_tickets_table', 21),
(31, '2026_04_18_040243_update_parking_rates_table', 22),
(32, '2026_04_18_051812_create_transactions_table', 23),
(33, '2026_04_18_055120_add_column_to_transaction_table', 24),
(34, '2026_04_18_055319_add_time_in_to_transactions_table', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `parking_areas`
--

CREATE TABLE `parking_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `used_slots` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `parking_areas`
--

INSERT INTO `parking_areas` (`id`, `code`, `name`, `capacity`, `used_slots`, `is_active`, `created_at`, `updated_at`, `image`) VALUES
(6, 'B1', 'Basement', 80, 0, 1, '2026-04-17 21:23:36', '2026-04-18 00:44:50', NULL),
(7, 'B2', 'Basement 2', 80, 0, 1, '2026-04-17 21:24:06', '2026-04-17 21:24:06', NULL),
(8, 'B3', 'Basement 3', 50, 0, 1, '2026-04-17 21:24:21', '2026-04-17 21:24:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `parking_rates`
--

CREATE TABLE `parking_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parking_area_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `rate_per_hour` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `parking_rates`
--

INSERT INTO `parking_rates` (`id`, `parking_area_id`, `vehicle_type`, `rate_per_hour`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 6, 'motorcycle', 2000, 1, '2026-04-17 21:38:37', '2026-04-17 21:38:37'),
(10, 6, 'car', 5000, 1, '2026-04-17 21:38:54', '2026-04-17 21:38:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ViewAny:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(2, 'View:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(3, 'Create:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(4, 'Update:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(5, 'Delete:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(6, 'DeleteAny:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(7, 'Restore:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(8, 'ForceDelete:Activity', 'web', '2026-04-15 18:21:57', '2026-04-15 18:21:57'),
(9, 'ForceDeleteAny:Activity', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(10, 'RestoreAny:Activity', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(11, 'Replicate:Activity', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(12, 'Reorder:Activity', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(13, 'ViewAny:ParkingArea', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(14, 'View:ParkingArea', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(15, 'Create:ParkingArea', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(16, 'Update:ParkingArea', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(17, 'Delete:ParkingArea', 'web', '2026-04-15 18:21:58', '2026-04-15 18:21:58'),
(18, 'DeleteAny:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(19, 'Restore:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(20, 'ForceDelete:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(21, 'ForceDeleteAny:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(22, 'RestoreAny:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(23, 'Replicate:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(24, 'Reorder:ParkingArea', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(25, 'ViewAny:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(26, 'View:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(27, 'Create:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(28, 'Update:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(29, 'Delete:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(30, 'DeleteAny:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(31, 'Restore:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(32, 'ForceDelete:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(33, 'ForceDeleteAny:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(34, 'RestoreAny:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(35, 'Replicate:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(36, 'Reorder:ParkingRate', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(37, 'ViewAny:User', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(38, 'View:User', 'web', '2026-04-15 18:21:59', '2026-04-15 18:21:59'),
(39, 'Create:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(40, 'Update:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(41, 'Delete:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(42, 'DeleteAny:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(43, 'Restore:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(44, 'ForceDelete:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(45, 'ForceDeleteAny:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(46, 'RestoreAny:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(47, 'Replicate:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(48, 'Reorder:User', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(49, 'ViewAny:Vehicle', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(50, 'View:Vehicle', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(51, 'Create:Vehicle', 'web', '2026-04-15 18:22:00', '2026-04-15 18:22:00'),
(52, 'Update:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(53, 'Delete:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(54, 'DeleteAny:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(55, 'Restore:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(56, 'ForceDelete:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(57, 'ForceDeleteAny:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(58, 'RestoreAny:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(59, 'Replicate:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(60, 'Reorder:Vehicle', 'web', '2026-04-15 18:22:01', '2026-04-15 18:22:01'),
(61, 'ViewAny:Role', 'web', '2026-04-15 18:43:15', '2026-04-15 18:43:15'),
(62, 'View:Role', 'web', '2026-04-15 18:43:15', '2026-04-15 18:43:15'),
(63, 'Create:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(64, 'Update:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(65, 'Delete:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(66, 'DeleteAny:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(67, 'Restore:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(68, 'ForceDelete:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(69, 'ForceDeleteAny:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(70, 'RestoreAny:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(71, 'Replicate:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(72, 'Reorder:Role', 'web', '2026-04-15 18:43:16', '2026-04-15 18:43:16'),
(73, 'ViewAny:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(74, 'View:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(75, 'Create:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(76, 'Update:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(77, 'Delete:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(78, 'DeleteAny:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(79, 'Restore:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(80, 'ForceDelete:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(81, 'ForceDeleteAny:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(82, 'RestoreAny:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(83, 'Replicate:Transaction', 'web', '2026-04-16 21:24:04', '2026-04-16 21:24:04'),
(84, 'Reorder:Transaction', 'web', '2026-04-16 21:24:05', '2026-04-16 21:24:05'),
(85, 'ViewAny:Ticket', 'web', '2026-04-17 23:50:39', '2026-04-17 23:50:39'),
(86, 'View:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(87, 'Create:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(88, 'Update:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(89, 'Delete:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(90, 'DeleteAny:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(91, 'Restore:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(92, 'ForceDelete:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(93, 'ForceDeleteAny:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(94, 'RestoreAny:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(95, 'Replicate:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40'),
(96, 'Reorder:Ticket', 'web', '2026-04-17 23:50:40', '2026-04-17 23:50:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recaps`
--

CREATE TABLE `recaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2026-04-15 18:21:58', '2026-04-18 00:09:28'),
(2, 'Staff', 'web', '2026-04-15 18:44:42', '2026-04-15 18:44:42'),
(3, 'Owner', 'web', '2026-04-16 21:24:03', '2026-04-16 21:24:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(49, 2),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(73, 2),
(73, 3),
(74, 1),
(74, 2),
(74, 3),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sVmplTl2lL98WFWQEl8lWo85Lt6okv6cJSKRHten', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiOXJmV2NkbDcyY3ZhN3VOY2F0WHZZZjZqR3d1QTlDV0g4c1FLOWlRYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90aWNrZXRzIjtzOjU6InJvdXRlIjtzOjM4OiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMudGlja2V0cy5pbmRleCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjQ6IjA3YWEzODQ4YjlmMGRjNWJkNGMwMDAyMTVkZjc0MDNiMDc2MTdhNDZhMmJiNDYyY2ExYWRlOGRmNDdjNDYzMmMiO3M6NjoidGFibGVzIjthOjQ6e3M6NDA6IjRjOWQ1MDBkYmE3YjQ3YjkyMjcwOGExNGU5M2RlYmE5X2NvbHVtbnMiO2E6MTA6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToidGlja2V0X2NvZGUiO3M6NToibGFiZWwiO3M6MTE6IlRpY2tldCBjb2RlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo3OiJ1c2VyX2lkIjtzOjU6ImxhYmVsIjtzOjc6IlVzZXIgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ2ZWhpY2xlX2lkIjtzOjU6ImxhYmVsIjtzOjEwOiJWZWhpY2xlIGlkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNToicGFya2luZ19yYXRlX2lkIjtzOjU6ImxhYmVsIjtzOjE1OiJQYXJraW5nIHJhdGUgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE1OiJwYXJraW5nX2FyZWFfaWQiO3M6NToibGFiZWwiO3M6MTU6IlBhcmtpbmcgYXJlYSBpZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NzoidGltZV9pbiI7czo1OiJsYWJlbCI7czo3OiJUaW1lIGluIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo4OiJ0aW1lX291dCI7czo1OiJsYWJlbCI7czo4OiJUaW1lIG91dCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjc7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6Njoic3RhdHVzIjtzOjU6ImxhYmVsIjtzOjY6IlN0YXR1cyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjg7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiYjUyODJiNTRhZDNkYmI0ZDcwYmY2NWM0NTI4MjdiOTVfY29sdW1ucyI7YTo4OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiaW1hZ2UiO3M6NToibGFiZWwiO3M6NToiSW1hZ2UiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6OToiQXJlYSBOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJjb2RlIjtzOjU6ImxhYmVsIjtzOjQ6IkNvZGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6ImNhcGFjaXR5IjtzOjU6ImxhYmVsIjtzOjg6IkNhcGFjaXR5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXNlZF9zbG90cyI7czo1OiJsYWJlbCI7czo0OiJVc2VkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJpc19hY3RpdmUiO3M6NToibGFiZWwiO3M6OToiSXMgYWN0aXZlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiIxNjQ2ZWVmNTU0OGQ1MjIwZTM3MDg4YzkwYjcyOWRkNF9jb2x1bW5zIjthOjExOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NzoidXNlcl9pZCI7czo1OiJsYWJlbCI7czo3OiJVc2VyIGlkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidmVoaWNsZV9pZCI7czo1OiJsYWJlbCI7czoxMDoiVmVoaWNsZSBpZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTU6InBhcmtpbmdfcmF0ZV9pZCI7czo1OiJsYWJlbCI7czoxNToiUGFya2luZyByYXRlIGlkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNToicGFya2luZ19hcmVhX2lkIjtzOjU6ImxhYmVsIjtzOjE1OiJQYXJraW5nIGFyZWEgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InRpY2tldF9pZCI7czo1OiJsYWJlbCI7czo5OiJUaWNrZXQgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6InRpbWVfb3V0IjtzOjU6ImxhYmVsIjtzOjg6IlRpbWUgb3V0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMzoiZHVyYXRpb25fdGltZSI7czo1OiJsYWJlbCI7czoxMzoiRHVyYXRpb24gdGltZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjc7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InRvdGFsX3JhdGUiO3M6NToibGFiZWwiO3M6MTA6IlRvdGFsIHJhdGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJ0aWNrZXQuc3RhdHVzIjtzOjU6ImxhYmVsIjtzOjY6InN0YXR1cyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjEwO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6ImZjOGM2YzNkNjA4OTIxMGRlOGI1OGNlMjRjODI0NDBjX2NvbHVtbnMiO2E6NTp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJjYXVzZXIubmFtZSI7czo1OiJsYWJlbCI7czo0OiJVc2VyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiZGVzY3JpcHRpb24iO3M6NToibGFiZWwiO3M6NjoiYWN0aW9uIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoic3ViamVjdF90eXBlIjtzOjU6ImxhYmVsIjtzOjU6Ik1vZGVsIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoic3ViamVjdF9pZCI7czo1OiJsYWJlbCI7czoyOiJJRCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1776498295);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `parking_rate_id` bigint(20) UNSIGNED NOT NULL,
  `parking_area_id` bigint(20) UNSIGNED NOT NULL,
  `time_in` datetime NOT NULL DEFAULT current_timestamp(),
  `time_out` datetime DEFAULT NULL,
  `status` enum('in','out') NOT NULL DEFAULT 'in',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_code`, `user_id`, `vehicle_id`, `parking_rate_id`, `parking_area_id`, `time_in`, `time_out`, `status`, `created_at`, `updated_at`) VALUES
(4, 'B1-0504-M', 1, 1, 9, 6, '2026-04-18 05:03:56', '2026-04-18 06:58:58', 'out', '2026-04-17 22:04:07', '2026-04-17 23:58:58'),
(5, 'B1-0515-C', 3, 2, 10, 6, '2026-04-18 05:15:41', '2026-04-18 06:45:28', 'out', '2026-04-17 22:15:55', '2026-04-17 23:45:28'),
(6, 'B1-0609-M', 2, 1, 9, 6, '2026-04-18 06:09:43', '2026-04-18 06:58:54', 'out', '2026-04-17 23:09:55', '2026-04-17 23:58:54'),
(7, 'B1-0636-C', 1, 2, 10, 6, '2026-04-18 06:36:41', '2026-04-18 06:59:05', 'out', '2026-04-17 23:36:51', '2026-04-17 23:59:05'),
(8, 'B1-0712-M', 1, 1, 9, 6, '2026-04-18 07:12:30', '2026-04-18 07:13:00', 'out', '2026-04-18 00:12:39', '2026-04-18 00:13:00'),
(9, 'B1-0737-C', 1, 2, 10, 6, '2026-04-18 07:37:02', '2026-04-18 07:44:50', 'out', '2026-04-18 00:37:20', '2026-04-18 00:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `parking_rate_id` bigint(20) UNSIGNED NOT NULL,
  `parking_area_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL DEFAULT current_timestamp(),
  `duration_time` int(11) NOT NULL,
  `total_rate` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `vehicle_id`, `parking_rate_id`, `parking_area_id`, `ticket_id`, `time_in`, `time_out`, `duration_time`, `total_rate`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 10, 6, 5, '2026-04-18 05:15:41', '2026-04-18 06:45:28', 2, 10000, '2026-04-17 23:45:28', '2026-04-17 23:45:28'),
(3, 1, 1, 9, 6, 6, '2026-04-18 06:09:43', '2026-04-18 06:58:54', 1, 2000, '2026-04-17 23:58:54', '2026-04-17 23:58:54'),
(4, 1, 1, 9, 6, 4, '2026-04-18 05:03:56', '2026-04-18 06:58:58', 2, 4000, '2026-04-17 23:58:58', '2026-04-17 23:58:58'),
(5, 1, 2, 10, 6, 7, '2026-04-18 06:36:41', '2026-04-18 06:59:05', 1, 5000, '2026-04-17 23:59:05', '2026-04-17 23:59:05'),
(6, 1, 1, 9, 6, 8, '2026-04-18 07:12:30', '2026-04-18 07:13:00', 1, 2000, '2026-04-18 00:13:00', '2026-04-18 00:13:00'),
(7, 1, 2, 10, 6, 9, '2026-04-18 07:37:02', '2026-04-18 07:44:50', 1, 5000, '2026-04-18 00:44:50', '2026-04-18 00:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@de.id', NULL, '$2y$12$UVMXhxWnyUxQKJtGd.Htn.66IEujZBU1CG.nsTNp.kWs.sZfT0Ubm', 'aJvggEzIFkSzz9w2f4x9xCOXjZNQATbS4LwxdrHuHsKKejZBUpPhRVh99ae6', '2026-04-13 23:47:40', '2026-04-13 23:47:40'),
(2, 'alama', 'alama@de.id', NULL, '$2y$12$2JaWLsA2m4igpIPE6yXdSePp6zmps.o1ZhAPuQs/1cuCaMt6oTG5G', NULL, '2026-04-14 20:03:48', '2026-04-14 20:03:48'),
(3, 'cilala', 'cila@de.id', NULL, '$2y$12$STmTNSFISUABfSw8NkiReOific1kGOIPbhB8QDjhl2izE/uvNZjj6', NULL, '2026-04-14 20:04:40', '2026-04-14 20:04:40'),
(4, 'Bagogo', 'bagogo@de.id', NULL, '$2y$12$WW0DQ9g.aurmGevHGK96yutHovs.PLoUBd6BouR37wPTx6cvcyXG.', NULL, '2026-04-14 20:05:10', '2026-04-14 20:05:10'),
(6, 'uhuy', 'uhuy@de.id', NULL, '$2y$12$1yIbztqIAcThth57rcxRsutUkUbIfdQDGQQR3I3tuaLmA.MAp72iu', NULL, '2026-04-15 18:54:53', '2026-04-15 18:54:53'),
(7, 'dada', 'dada@de.id', NULL, '$2y$12$9mEZL8QsWaCuDEF3n0FgZezwPhusYAhgxXr14X3jmalMZrIH3LvNa', NULL, '2026-04-16 22:55:23', '2026-04-16 22:55:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plat_number` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `plat_number`, `vehicle_type`, `color`, `owner_name`, `is_active`, `created_at`, `updated_at`, `image`) VALUES
(1, 2, 'N 001 GGO', 'motorcycle', 'red', 'Akew', 1, '2026-04-14 21:24:27', '2026-04-14 21:24:27', NULL),
(2, 3, 'D 8192 ALO', 'car', 'white', 'Dayat', 1, '2026-04-14 21:25:45', '2026-04-14 21:25:45', NULL),
(3, 4, 'G 91334 SAO', 'motorcycle', 'red', 'Cihuy', 1, '2026-04-14 21:26:04', '2026-04-14 21:26:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `parking_areas`
--
ALTER TABLE `parking_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `parking_rates`
--
ALTER TABLE `parking_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parking_rates_parking_area_id_foreign` (`parking_area_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `recaps`
--
ALTER TABLE `recaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recaps_transaction_id_foreign` (`transaction_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `tickets_parking_rate_id_foreign` (`parking_rate_id`),
  ADD KEY `tickets_parking_area_id_foreign` (`parking_area_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `transactions_parking_rate_id_foreign` (`parking_rate_id`),
  ADD KEY `transactions_parking_area_id_foreign` (`parking_area_id`),
  ADD KEY `transactions_ticket_id_foreign` (`ticket_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_plat_number_unique` (`plat_number`),
  ADD KEY `vehicles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `parking_areas`
--
ALTER TABLE `parking_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `parking_rates`
--
ALTER TABLE `parking_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `recaps`
--
ALTER TABLE `recaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `parking_rates`
--
ALTER TABLE `parking_rates`
  ADD CONSTRAINT `parking_rates_parking_area_id_foreign` FOREIGN KEY (`parking_area_id`) REFERENCES `parking_areas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `recaps`
--
ALTER TABLE `recaps`
  ADD CONSTRAINT `recaps_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_parking_area_id_foreign` FOREIGN KEY (`parking_area_id`) REFERENCES `parking_areas` (`id`),
  ADD CONSTRAINT `tickets_parking_rate_id_foreign` FOREIGN KEY (`parking_rate_id`) REFERENCES `parking_rates` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_parking_area_id_foreign` FOREIGN KEY (`parking_area_id`) REFERENCES `parking_areas` (`id`),
  ADD CONSTRAINT `transactions_parking_rate_id_foreign` FOREIGN KEY (`parking_rate_id`) REFERENCES `parking_rates` (`id`),
  ADD CONSTRAINT `transactions_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Ketidakleluasaan untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
