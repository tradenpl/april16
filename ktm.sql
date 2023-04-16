-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2023 at 12:48 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u565095690_paid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int(10) UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'on',
  `file_size_allowed` int(11) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int(11) UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int(10) UNSIGNED NOT NULL,
  `max_subscription_amount` int(10) UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int(10) UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int(10) UNSIGNED NOT NULL,
  `days_process_withdrawals` int(10) UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint(3) UNSIGNED NOT NULL,
  `number_comments_show` tinyint(3) UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int(10) UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int(10) UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int(10) UNSIGNED NOT NULL,
  `max_tip_amount` int(10) UNSIGNED NOT NULL,
  `min_ppv_amount` int(10) UNSIGNED NOT NULL,
  `max_ppv_amount` int(10) UNSIGNED NOT NULL,
  `min_deposits_amount` int(10) UNSIGNED NOT NULL,
  `max_deposits_amount` int(10) UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `maximum_files_msg` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off',
  `type_announcement` char(10) NOT NULL DEFAULT 'primary',
  `referral_system` enum('on','off') NOT NULL DEFAULT 'off',
  `auto_approve_post` enum('on','off') NOT NULL DEFAULT 'on',
  `watermark_on_videos` enum('on','off') NOT NULL DEFAULT 'on',
  `percentage_referred` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `referral_transaction_limit` char(10) NOT NULL DEFAULT '1',
  `video_encoding` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_status` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `live_streaming_max_price` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `agora_app_id` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `limit_live_streaming_paid` int(10) UNSIGNED NOT NULL,
  `limit_live_streaming_free` int(10) UNSIGNED NOT NULL,
  `live_streaming_free` enum('0','1') NOT NULL DEFAULT '0',
  `type_withdrawals` char(50) NOT NULL DEFAULT 'custom',
  `shop` tinyint(1) NOT NULL DEFAULT 0,
  `min_price_product` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `max_price_product` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `digital_product_sale` tinyint(1) NOT NULL DEFAULT 0,
  `custom_content` tinyint(1) NOT NULL DEFAULT 0,
  `tax_on_wallet` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_connect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stripe_connect_countries` longtext NOT NULL,
  `physical_products` tinyint(1) NOT NULL DEFAULT 0,
  `disable_login_register_email` tinyint(1) NOT NULL DEFAULT 0,
  `disable_contact` tinyint(1) NOT NULL DEFAULT 0,
  `specific_day_payment_withdrawals` int(10) UNSIGNED NOT NULL,
  `disable_new_post_notification` tinyint(1) NOT NULL DEFAULT 0,
  `disable_search_creators` tinyint(1) NOT NULL DEFAULT 0,
  `search_creators_genders` tinyint(1) NOT NULL DEFAULT 0,
  `generate_qr_code` tinyint(1) NOT NULL DEFAULT 0,
  `autofollow_admin` tinyint(1) NOT NULL DEFAULT 0,
  `allow_zip_files` tinyint(1) NOT NULL DEFAULT 1,
  `reddit` varchar(200) NOT NULL,
  `telegram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 0,
  `onesignal_appid` varchar(150) NOT NULL,
  `onesignal_restapi` varchar(150) NOT NULL,
  `status_pwa` tinyint(1) NOT NULL DEFAULT 1,
  `zip_verification_creator` tinyint(1) NOT NULL DEFAULT 1,
  `amount_max_withdrawal` int(10) UNSIGNED NOT NULL,
  `story_status` tinyint(1) NOT NULL DEFAULT 0,
  `story_image` tinyint(1) NOT NULL DEFAULT 1,
  `story_text` tinyint(1) NOT NULL DEFAULT 1,
  `story_max_videos_length` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `payout_method_western_union` enum('on','off') NOT NULL DEFAULT 'off'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`, `type_announcement`, `referral_system`, `auto_approve_post`, `watermark_on_videos`, `percentage_referred`, `referral_transaction_limit`, `video_encoding`, `live_streaming_status`, `live_streaming_minimum_price`, `live_streaming_max_price`, `agora_app_id`, `tiktok`, `snapchat`, `limit_live_streaming_paid`, `limit_live_streaming_free`, `live_streaming_free`, `type_withdrawals`, `shop`, `min_price_product`, `max_price_product`, `digital_product_sale`, `custom_content`, `tax_on_wallet`, `stripe_connect`, `stripe_connect_countries`, `physical_products`, `disable_login_register_email`, `disable_contact`, `specific_day_payment_withdrawals`, `disable_new_post_notification`, `disable_search_creators`, `search_creators_genders`, `generate_qr_code`, `autofollow_admin`, `allow_zip_files`, `reddit`, `telegram`, `linkedin`, `push_notification_status`, `onesignal_appid`, `onesignal_restapi`, `status_pwa`, `zip_verification_creator`, `amount_max_withdrawal`, `story_status`, `story_image`, `story_text`, `story_max_videos_length`, `payout_method_western_union`) VALUES
(1, 'Paidartists', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut tortor rutrum massa efficitur tincidunt vel nec lacus. Curabitur porta aliquet diam, eu gravida neque lacinia.', 'donations,support,creators,Creaty,subscription', 250, '1', '', 'noreply@paidartists.com', 'info@paidartists.com', 'off', 102400, '', 'paypal@yousite.com', '', '', '', '', '', '$', 'USD', 2, 'PayPal', '400', 5, 100, 'M d, Y', 'http://paidartists.com/p/privacy', 'https://paidartists.com/p/terms-of-service', 'left', 'off', 50, '', '', 150, 7, 'off', 5, 2, '1', '1', 'logo-1673627297.png', 'logo_2-1673627297.png', 'favicon-1673627864.png', 'home_index-1673629378.png', 'background-1673631516.png', 'image_index_1-1674794199.jpg', 'image_index_2-1674825385.png', 'image_index_3-1674825385.png', 'image_index_4-1674825707.png', 'default-1673632403.jpg', 'off', '#299103', 'dot', '4.5', 'https://paidartists.com/p/cookies', 500, 'off', '', '', '', '', '', '', 'off', 0, 1024, 'on', 'on', 5, 100, 5, 100, 5, 100, 'rounded', 'off', 'off', 'on', '#ffffff', '#008a10', '#ffdbdb', '#00801a', 'off', '', 'on', 'on', '', '', 'off', 'male,female', 'cover_default-1673632403.jpg', 'all', 'on', 'off', 'off', 'real_money', 5, 5, '', '', '', 3, 'on', 'off', 'off', 'off', 'primary', 'off', 'on', 'on', 5, '1', 'off', 'on', 5, 100, '68331af89da0443ead86e98310924c6b', '', '', 0, 0, '1', 'custom', 1, 5, 100, 1, 1, 1, 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '', 0, '', '', 1, 1, 0, 1, 1, 1, 30, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(1, 'Artist', 'artist', '', '', 'on', 'artist-By4bfBlXy75qPKK99RgC5MN9g8lUTWo8.jpg'),
(2, 'Designer', 'designer', '', '', 'on', 'designer-SP7jB58pOuQW7Wz3Tf2v32OOZrU6zgxh.jpg'),
(3, 'Drawing and Painting', 'drawing-and-painting', '', '', 'on', 'drawing-and-painting-sRKBmjTngYwmwZ5PZ2OIPr2K2MS5WT2Q.jpg'),
(4, 'Developer', 'developer', '', '', 'on', 'developer-fpZjQGTE9TCtNIkE3K7XmOyoFHsrcI7Q.jpg'),
(5, 'Animation', 'animation', 'Category Animation', 'animate, animation', 'on', 'animation-N600Gsc1uJffH9Jsdjo9kYpq3TKl7E9x.jpg'),
(7, 'Photography', 'photography', '', '', 'on', 'photography-Q8AA4mr4v3Y7AkNEj9dU46oHjTJqAWcO.jpg'),
(8, 'Video and Film', 'video-and-film', '', '', 'on', 'video-and-film-F4BHush4GW0y9WzMrxWCJXEoKMcZWZeZ.jpg'),
(9, 'Podcasts', 'podcasts', '', '', 'on', 'podcasts-ubacYB2BVCgzu79lqOXp9Zfa2jtjwgFE.jpg'),
(10, 'Others', 'others', '', '', 'on', 'others-PplPsJxWsOu7ex6qWqWdQtMhYDufxM2k.jpg'),
(12, 'Writing', 'writing', '', '', 'on', 'writing-Q5b6A8vlTiE4W1pokW1sR1TGxJigTLAv.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `updates_id`, `user_id`, `reply`, `date`, `status`) VALUES
(1, 1, 1, 'gi', '2023-01-13 12:45:22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL,
  `replies_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_1`, `user_2`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2023-01-13 18:07:31', '2023-01-13 18:07:31'),
(2, 3, 4, '2023-01-13 19:09:11', '2023-01-13 19:09:11'),
(3, 3, 5, '2023-01-19 17:47:59', '2023-01-29 00:55:21'),
(4, 3, 9, '2023-01-29 00:55:56', '2023-01-29 00:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_fee` double(10,2) NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"40fbabbd-9f3a-45bd-837f-c7d6ece90b85\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673590453, 1673590453),
(2, 'default', '{\"uuid\":\"5f247ad3-485b-41a5-90e0-8dfdacbbf268\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:25:\\\"nabin.magdotnet@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"085544c6-6d34-4374-a73b-ddffb1ddebbb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673591694, 1673591694),
(3, 'default', '{\"uuid\":\"08f02e00-4ec0-4d82-8068-87f074a9a885\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673592043, 1673592043),
(4, 'default', '{\"uuid\":\"3de97bec-4106-4417-865d-3d15f5c9a5e5\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"info@paidartists.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"163c77c2-7dde-4ac4-99b0-a173fbd42dfb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673598738, 1673598738),
(5, 'default', '{\"uuid\":\"2a8d33dc-f77b-4b9f-ac6d-1625ad1c1e40\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673598874, 1673598874),
(6, 'default', '{\"uuid\":\"22d50669-df7c-45b2-8e29-bc6c9fe0a6d6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673612315, 1673612315),
(7, 'default', '{\"uuid\":\"7ce285f4-e1fb-4104-a7a8-a058e8ed4fea\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"info@paidartists.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"d3bcc607-f37b-46c1-aaea-25a1fd048185\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673632674, 1673632674),
(8, 'default', '{\"uuid\":\"c69e9b0e-71c6-4b9c-bf05-b456396d1078\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673632794, 1673632794),
(9, 'default', '{\"uuid\":\"b919d82a-c1aa-437d-9f6a-73d29c801e8d\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673632855, 1673632855),
(10, 'default', '{\"uuid\":\"8e3a644f-560a-41d8-a62e-485bdf0ebc30\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673632965, 1673632965),
(11, 'default', '{\"uuid\":\"e83d3d6f-d22f-4e9f-b0ae-41a824f2f3a4\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"info@paidartists.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fa74bf5f-8629-4b2f-839a-75fa9370f0e2\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673836284, 1673836284),
(12, 'default', '{\"uuid\":\"3572b058-eb57-449a-8528-0f9fcd768296\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673836393, 1673836393),
(13, 'default', '{\"uuid\":\"3daeceb7-0796-4ddf-8f72-ae780cdb60d6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1673836444, 1673836444),
(14, 'default', '{\"uuid\":\"b92fb33d-beae-4aee-9db2-a298009ef6fc\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674124691, 1674124691),
(15, 'default', '{\"uuid\":\"1589e9ff-867e-4482-acf7-17bf0452f569\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674133531, 1674133531),
(16, 'default', '{\"uuid\":\"238c5742-f2e7-4bd5-86fb-24fc250d21d2\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674133610, 1674133610),
(17, 'default', '{\"uuid\":\"47c1bfbc-4a95-452c-aef7-347fbe3bda4c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674148026, 1674148026),
(18, 'default', '{\"uuid\":\"17b815cd-df32-4bec-b0df-d5de54364e2b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674149684, 1674149684),
(19, 'default', '{\"uuid\":\"a86ab39b-4695-4983-809b-86369d5502f2\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:2:\\\"no\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674153776, 1674153776),
(20, 'default', '{\"uuid\":\"b439d724-68c9-4631-9148-7f665498b33d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674592801, 1674592801),
(21, 'default', '{\"uuid\":\"3b0f87ec-cbe9-42bc-a3d7-e957aed8f58e\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"info@paidartists.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"dc9de2c0-b367-41b4-9832-d386eaefecc4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674740386, 1674740386),
(22, 'default', '{\"uuid\":\"b284962d-0db2-4554-ae1e-40625957cdc4\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"info@paidartists.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":12:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"203a8e0b-253d-4e4d-9beb-1c401ef4b3dd\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674740992, 1674740992),
(23, 'default', '{\"uuid\":\"3a05ff8e-ea4f-426e-bc8a-e681283aed82\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674741191, 1674741191),
(24, 'default', '{\"uuid\":\"366b9752-6d03-4796-9200-2fc1a320f0fd\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674741829, 1674741829),
(25, 'default', '{\"uuid\":\"ea32f0cb-5cf4-4924-ba6f-2cbe8c112efc\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674742033, 1674742033),
(26, 'default', '{\"uuid\":\"105128fb-46aa-4260-8488-c3e450c09736\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674747169, 1674747169),
(27, 'default', '{\"uuid\":\"24e20736-aad1-49f4-a983-712d205b6726\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674747982, 1674747982),
(28, 'default', '{\"uuid\":\"8fcc518b-6b51-4158-b15b-cc89f3b4720d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674748526, 1674748526),
(29, 'default', '{\"uuid\":\"7d8fb98b-47fa-433e-a03d-21f655c4262c\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674826354, 1674826354),
(30, 'default', '{\"uuid\":\"81f2c022-9eae-46d0-8266-bfe143b0cb79\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674827266, 1674827266),
(31, 'default', '{\"uuid\":\"4079e4eb-4b74-4116-9535-ce9cdd0cbeb5\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674827993, 1674827993),
(32, 'default', '{\"uuid\":\"c940091e-5bdc-4b92-bc11-73f2dfea1c88\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674971310, 1674971310),
(33, 'default', '{\"uuid\":\"846b99b3-96d2-4f67-92da-6623b4fe886c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1674972934, 1674972934),
(34, 'default', '{\"uuid\":\"425879c2-516c-4081-9e89-dc8f3f7d00a1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1675178854, 1675178854);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(35, 'default', '{\"uuid\":\"576b809f-4d34-4d7d-8d28-0a1be61e491a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1675178938, 1675178938),
(36, 'default', '{\"uuid\":\"302e54fa-ef33-4edf-8449-fbf5554b6570\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1675707003, 1675707003),
(37, 'default', '{\"uuid\":\"2dcf1970-0e02-48fb-9c54-0e2437773042\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1675707072, 1675707072),
(38, 'default', '{\"uuid\":\"5d93ca75-7ec1-4451-8623-975424713a9a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1676902871, 1676902871),
(39, 'default', '{\"uuid\":\"d6121fd4-f0fc-4517-bc6e-e823e59becbe\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1681013745, 1681013745),
(40, 'default', '{\"uuid\":\"84298564-b621-40bb-8022-046bf998d3c6\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:16:\\\"freeSubscription\\\";s:2:\\\"no\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1681622278, 1681622278);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Español', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `updates_id`, `status`, `date`) VALUES
(1, 1, 1, '1', '2023-01-13 06:40:47'),
(2, 5, 5, '1', '2023-01-19 18:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `live_comments`
--

CREATE TABLE `live_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `tip` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_comments`
--

INSERT INTO `live_comments` (`id`, `user_id`, `live_streamings_id`, `comment`, `joined`, `tip`, `tip_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'ki', 0, '0', 0, '2023-01-13 18:58:12', '2023-01-13 18:58:12'),
(2, 1, 5, 'ku', 0, '0', 0, '2023-01-13 18:58:19', '2023-01-13 18:58:19'),
(3, 1, 5, 'ping', 0, '0', 0, '2023-01-13 18:58:29', '2023-01-13 18:58:29'),
(4, 3, 8, 'hi everyone', 0, '0', 0, '2023-01-19 17:51:25', '2023-01-19 17:51:25'),
(5, 3, 8, '🙂', 0, '0', 0, '2023-01-19 17:52:29', '2023-01-19 17:52:29'),
(6, 1, 9, '', 1, '0', 0, '2023-01-19 17:54:56', '2023-01-19 17:54:56'),
(7, 6, 9, '', 1, '0', 0, '2023-01-19 17:57:46', '2023-01-19 17:57:46'),
(8, 1, 9, 'HELLOW SWECHAYA', 0, '0', 0, '2023-01-19 17:58:32', '2023-01-19 17:58:32'),
(9, 6, 9, 'WHAT IS', 0, '0', 0, '2023-01-19 17:58:54', '2023-01-19 17:58:54'),
(10, 3, 9, 'nothing', 0, '0', 0, '2023-01-19 17:59:19', '2023-01-19 17:59:19'),
(11, 6, 9, 'AAYO', 0, '0', 0, '2023-01-19 17:59:28', '2023-01-19 17:59:28'),
(12, 6, 9, 'WORKING FINE', 0, '0', 0, '2023-01-19 18:00:21', '2023-01-19 18:00:21'),
(13, 1, 9, 'JI', 0, '0', 0, '2023-01-19 18:01:27', '2023-01-19 18:01:27'),
(14, 7, 9, '', 1, '0', 0, '2023-01-19 18:02:55', '2023-01-19 18:02:55'),
(15, 3, 11, '', 1, '0', 0, '2023-01-19 18:20:08', '2023-01-19 18:20:08'),
(16, 1, 11, 'hi everyon', 0, '0', 0, '2023-01-19 18:20:27', '2023-01-19 18:20:27'),
(17, 1, 11, 'everyone*', 0, '0', 0, '2023-01-19 18:20:42', '2023-01-19 18:20:42'),
(18, 3, 11, 'Hou', 0, '0', 0, '2023-01-19 18:20:55', '2023-01-19 18:20:55'),
(19, 1, 11, 'k gardai?', 0, '0', 0, '2023-01-19 18:21:15', '2023-01-19 18:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `live_likes`
--

CREATE TABLE `live_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_likes`
--

INSERT INTO `live_likes` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(2, 3, 8, '2023-01-19 17:52:21', '2023-01-19 17:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `live_online_users`
--

CREATE TABLE `live_online_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_online_users`
--

INSERT INTO `live_online_users` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2023-01-19 17:54:56', '2023-01-19 18:03:51'),
(2, 6, 9, '2023-01-19 17:57:46', '2023-01-19 18:01:42'),
(3, 7, 9, '2023-01-19 18:02:55', '2023-01-19 18:03:21'),
(4, 3, 11, '2023-01-19 18:20:08', '2023-01-19 18:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `live_streamings`
--

CREATE TABLE `live_streamings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `availability` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_pay'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_streamings`
--

INSERT INTO `live_streamings` (`id`, `user_id`, `name`, `channel`, `price`, `status`, `created_at`, `updated_at`, `availability`) VALUES
(1, 3, 'jack', 'live_hKCGP_3', 0, '1', '2023-01-13 12:13:56', '2023-01-13 12:15:00', 'everyone_free'),
(2, 3, 'jack', 'live_kEF24_3', 0, '1', '2023-01-13 12:15:15', '2023-01-13 12:15:30', 'everyone_free'),
(3, 1, '45', 'live_gfNDv_1', 0, '1', '2023-01-13 12:46:16', '2023-01-13 12:46:57', 'everyone_free'),
(4, 1, 'jack', 'live_oUrUd_1', 0, '1', '2023-01-13 18:57:21', '2023-01-13 18:57:42', 'everyone_free'),
(5, 1, '45', 'live_3r2Sn_1', 5, '1', '2023-01-13 18:58:02', '2023-01-13 18:58:36', 'free_paid_subscribers'),
(6, 3, 'uoi', 'live_weaEx_3', 0, '0', '2023-01-15 14:09:30', '2023-01-15 14:09:30', 'everyone_free'),
(7, 3, 'tonik', 'live_fwiGv_3', 0, '1', '2023-01-19 17:48:50', '2023-01-19 17:49:02', 'everyone_free'),
(8, 3, 'yes', 'live_vLMaH_3', 0, '1', '2023-01-19 17:50:55', '2023-01-19 17:52:48', 'everyone_free'),
(9, 3, 'hium', 'live_be1e5_3', 0, '1', '2023-01-19 17:53:21', '2023-01-19 18:03:51', 'everyone_free'),
(10, 3, 'You', 'live_HwWfl_3', 0, '1', '2023-01-19 18:19:33', '2023-01-19 18:19:53', 'everyone_free'),
(11, 1, 'hi everyone', 'live_kBsHY_1', 0, '0', '2023-01-19 18:19:43', '2023-01-19 18:22:25', 'everyone_free'),
(12, 3, 'Hi', 'live_GJhlq_3', 5, '1', '2023-01-19 18:21:57', '2023-01-19 18:22:08', 'all_pay'),
(13, 3, 'Hi', 'live_iicqG_3', 5, '1', '2023-01-19 18:23:35', '2023-01-19 18:24:45', 'all_pay'),
(14, 3, 'me', 'live_xGd7f_3', 5, '1', '2023-03-23 01:46:33', '2023-03-23 01:46:54', 'all_pay');

-- --------------------------------------------------------

--
-- Table structure for table `login_sessions`
--

CREATE TABLE `login_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `user_id`, `ip`, `device`, `device_type`, `browser`, `platform`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 106.0.0.0', 'Windows 10.0', NULL, '2022-10-16 05:00:54', '2022-10-16 05:00:54'),
(2, 1, '2400:1a00:bd11:f6ca:ed40:167e:23a3:374e', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', NULL, '2023-01-13 00:26:57', '2023-02-10 17:33:58'),
(4, 3, '150.107.106.35', 'WebKit', 'phone', 'Chrome 108.0.0.0', 'AndroidOS 12', 'Nepal', '2023-01-13 08:28:25', '2023-01-16 08:20:54'),
(5, 1, '2400:1a00:bd11:95c6:28be:e1a3:6c4d:1496', 'WebKit', 'phone', 'Chrome 108.0.0.0', 'AndroidOS 12', NULL, '2023-01-13 08:32:58', '2023-01-13 08:32:58'),
(6, 1, '2400:1a00:bd11:481c:5557:3a62:4038:cc1a', 'WebKit', 'desktop', 'Chrome 108.0.0.0', 'Windows 10.0', NULL, '2023-01-13 10:27:50', '2023-01-19 16:05:44'),
(7, 3, '103.163.182.115', 'WebKit', 'desktop', 'Chrome 108.0.0.0', 'Linux ', 'Nepal', '2023-01-13 17:45:59', '2023-01-28 13:47:05'),
(8, 4, '2400:1a00:bd11:481c:414e:d368:fd46:4750', 'WebKit', 'desktop', 'Chrome 108.0.0.0', 'Linux ', 'Nepal', '2023-01-13 17:55:05', '2023-01-13 17:55:05'),
(9, 5, '2400:1a00:bd11:481c:3454:2d31:bad:45e1', 'WebKit', 'phone', 'Chrome 109.0.0.0', 'AndroidOS 13', 'Nepal', '2023-01-16 02:14:03', '2023-01-16 02:14:03'),
(10, 1, '2400:1a00:bd11:f6ca:fdcd:f546:bccb:4c4e', 'WebKit', 'phone', 'Chrome 109.0.0.0', 'AndroidOS 13', NULL, '2023-01-16 02:32:20', '2023-02-10 18:25:45'),
(11, 3, '2404:7c00:41:e17d:a04c:4c7f:e6a5:2e04', 'WebKit', 'phone', 'Chrome 109.0.0.0', 'AndroidOS 12', 'Nepal', '2023-01-16 02:34:44', '2023-02-04 05:58:53'),
(12, 1, '203.192.225.76', '0', 'desktop', 'Firefox 108.0', 'Windows 10.0', NULL, '2023-01-18 06:42:08', '2023-01-20 13:36:25'),
(13, 1, '122.171.19.88', 'Macintosh', 'desktop', 'Chrome 108.0.0.0', 'OS X 10_15_7', NULL, '2023-01-18 06:42:17', '2023-01-18 06:42:17'),
(14, 1, '2405:201:4014:8114:204c:6117:d335:aeae', 'WebKit', 'desktop', 'Edge 109.0.1518.52', 'Windows 10.0', NULL, '2023-01-19 13:04:20', '2023-01-19 13:04:20'),
(15, 6, '2400:1a00:bd11:481c:5557:3a62:4038:cc1a', 'WebKit', 'desktop', 'Chrome 108.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-19 17:57:35', '2023-01-19 17:57:35'),
(16, 7, '2400:1a00:bd11:481c:5557:3a62:4038:cc1a', 'WebKit', 'desktop', 'Chrome 108.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-19 18:02:49', '2023-01-19 18:02:49'),
(17, 7, '2400:1a00:bd11:481c:4dc4:527c:1615:fb57', 'WebKit', 'phone', 'Chrome 109.0.0.0', 'AndroidOS 12', 'Nepal', '2023-01-19 18:09:39', '2023-01-19 18:09:39'),
(18, 8, '2400:1a00:bd11:481c:4902:c645:6ad6:6bf9', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-26 13:47:01', '2023-01-26 13:47:01'),
(19, 9, '2400:1a00:bd11:481c:4902:c645:6ad6:6bf9', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-26 13:47:47', '2023-01-26 13:47:47'),
(20, 7, '2400:1a00:bd11:481c:f9d7:61c1:a32b:77f1', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-27 04:22:31', '2023-01-27 04:22:31'),
(21, 1, '203.194.107.152', '0', 'desktop', 'Firefox 109.0', 'Windows 10.0', NULL, '2023-01-27 07:49:31', '2023-01-31 10:20:32'),
(22, 3, '2400:1a00:bd11:481c:37:a375:ee04:9384', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-27 10:22:17', '2023-01-31 15:21:49'),
(23, 10, '2400:1a00:bd11:481c:8522:1d13:b88d:c11a', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-01-29 07:06:07', '2023-01-29 07:06:07'),
(24, 5, '2400:1a00:bd11:481c:a981:51e9:895c:7796', 'WebKit', 'desktop', 'Chrome 109.0.0.0', 'Windows 10.0', 'Nepal', '2023-02-03 07:40:26', '2023-02-03 07:40:26'),
(25, 11, '2400:1a00:b030:35:8ca3:c205:7fca:8717', 'WebKit', 'desktop', 'Chrome 110.0.0.0', 'Linux ', 'Nepal', '2023-02-15 14:04:20', '2023-02-15 14:04:20'),
(26, 1, '111.119.49.161', 'WebKit', 'desktop', 'Chrome 110.0.0.0', 'Linux ', NULL, '2023-02-16 05:40:46', '2023-03-08 08:20:12'),
(27, 5, '2400:1a00:bd11:f6ca:3d:e022:2543:6722', 'WebKit', 'desktop', 'Chrome 110.0.0.0', 'Windows 10.0', 'Nepal', '2023-02-21 03:50:04', '2023-02-21 03:50:04'),
(28, 1, '103.163.182.69', 'WebKit', 'desktop', 'Chrome 111.0.0.0', 'Windows 10.0', NULL, '2023-03-15 11:57:05', '2023-04-14 16:18:14'),
(29, 12, '120.89.104.110', 'WebKit', 'phone', 'Chrome 111.0.5563.58', 'AndroidOS 9', 'Nepal', '2023-03-19 12:30:49', '2023-03-19 12:30:49'),
(30, 3, '2400:1a00:bd11:a0ca:f9b0:edd1:56ea:a71a', 'WebKit', 'desktop', 'Chrome 111.0.0.0', 'Windows 10.0', 'Nepal', '2023-03-23 01:44:29', '2023-04-09 04:17:02'),
(31, 3, '111.119.49.94', 'WebKit', 'phone', 'Chrome 111.0.5563.58', 'AndroidOS 12', 'Nepal', '2023-03-30 14:14:47', '2023-03-30 14:14:47'),
(32, 1, '111.119.49.35', 'WebKit', 'desktop', 'Chrome 112.0.0.0', 'Windows 10.0', NULL, '2023-04-09 04:10:31', '2023-04-16 11:27:51'),
(33, 13, '103.94.255.58', 'WebKit', 'desktop', 'Chrome 112.0.0.0', 'Windows 10.0', 'Nepal', '2023-04-09 04:17:52', '2023-04-09 04:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `updates_id`, `user_id`, `type`, `image`, `width`, `height`, `img_type`, `video`, `encoded`, `video_poster`, `duration_video`, `quality_video`, `video_embed`, `music`, `file`, `file_name`, `file_size`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'image', '163c0fce87c2b51673592040qjxprwulbzalyeydzzs7.jpg', '1000', '1000', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'lcAx8n52p2w6emYN99S5OU3hUE9NI16REWhRqCuKVDsrCCgbSg4ksBXx5nDkd06G2zpJ4EeJZSWEZKAgBGkzNQxb6SDBfUsH3X2XirntrA0mJQHkeuY5Uz9UgC6GeR1Isy8o5VM9mB4zRSwCG2RXcb63c0fce892b151673592040', 'active', '2023-01-13 00:55:40', '2023-01-13 00:55:43'),
(4, 4, 4, 'file', '', NULL, NULL, '', '', 'no', NULL, NULL, NULL, '', '', '41673632965fjopsauoztuzgoldkbko.zip', 'v1.7', '27.2kB', 'WhaX1fxjfesh74vQYaTstppfFaIMATAh61Mb5fND7nByiI7r1FHrA6z5M1Zyp5MEn9XlSZi2CIwTOYRK1n90RBg9ZzfLbkxzN2P3kuqUL1ghQGTHWMmcvQADzfSH72pMYYLDw66DkjX2txFHsVgLkE63c19cc5d68851673632965', 'active', '2023-01-13 18:02:45', '2023-01-13 18:02:45'),
(5, 5, 5, 'image', '563c4b78d9b2a6167383642952k2f7d0glhx2ssdkjlz.jpg', '1279', '1211', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'e3zkKFP0zphnszY0fyG4sZGLOwTAzMpk6CpoUKMMenLDg5GCDslLlO7Y24QtOI0S0H8FlGoJa9zbWygKaydXEATVFT8v4GZov3mnFM9wtqj9C7T9Uoh0M4aglTjnzUWH0dJryqpkzsaB72HojajGDI63c4b78dad53f1673836429', 'active', '2023-01-16 02:33:49', '2023-01-16 02:34:04'),
(6, 6, 1, 'image', '163c91d8f5e4681674124687bbgmfqrefznfuzw9okfq.jpg', '483', '612', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'aWm8rOwwJ8TgMTEiAuhicVa01t25llt3Yqb4nqEtaWdck1USdzDA8QTpj9xALRcfeznzpqW2I5FovCpqf3eRSnyz56Yh1M9WCPh1fmUpLDgBxJr0yQRtibryTFKwRiBpchWiEfFbbJcuhYTtylWeWq63c91d8f61c421674124687', 'active', '2023-01-19 10:38:07', '2023-01-19 10:38:11'),
(7, 0, 3, 'image', '363c91ff0144831674125296cfdirrvoom2s9vx4s0kt.jpg', '6936', '9248', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', '08SpxpP7vrBhBwsKueNEgRcaNpQOX9eClOMT3X58Z8hcLAWlXrslSjy6bEEfe0uh84ZI2Rjy0ziGqnF6jcnPgqKlu2Vrc088fdEXxTTuQyZsqZvNDuYgngJdzSYcO83lVx1mah4Ul2e8lg8z2D66b163c920006df641674125312', 'pending', '2023-01-19 10:48:35', '2023-01-19 10:48:35'),
(8, 0, 3, 'image', '363c947cb0e74e1674135499rpjcjwzxgz69cnvzzhen.jpg', '4896', '6528', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', '5l1DQvqtjSpigIZEY86ibaBsfsDPow68bNGrvjszQKqy3MnTXfB1CIYKWVJUuKHL61m5rvg4i73AzhyJamicQvg7D4dx7Zz6hh82O2noKjoqcjxFe8qohTrt9VqygDA5vSCMKyW5O7awMEbEcBoyav63c947d2443171674135506', 'pending', '2023-01-19 13:38:27', '2023-01-19 13:38:27'),
(11, 12, 9, 'image', '963d28820dc24316747417927ojkepz1gm5wvgkqgo0k.jpg', '600', '360', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'Dk698cYmvTqQJh1b605a0NmBPokY6uuyLRfgTVFTo0vvSqrxZXe2wQxMFkOLn1o13RJwKc7cANT0uek3km2cINc09YlkYRrY2c5U50rIeJhId0ML2mqQgl6lO8j8vRMhHCrrC5f9iQ8iLHdjs1U9gv63d28820e01711674741792', 'active', '2023-01-26 14:03:12', '2023-01-26 14:03:49'),
(12, 13, 9, 'image', '963d289016af921674742017een1suhzj0yyw94nsas4.jpg', '1600', '1200', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'aHFNLRiqaeaunz56vatpfRtnfYPvVkagt1il0s07HxN3t1guPy6XhX5VLD7O5zqmmzxo0zVqlgdxHLB9OgsQVRPqLZFL616afhVPjizralKnXgNzdVETJZyxddlQhfvXDO6JoSRHTbyMs7RtQwvE5K63d289017f6bb1674742017', 'active', '2023-01-26 14:06:57', '2023-01-26 14:07:13'),
(14, 16, 8, 'video', '', NULL, NULL, '', '863d3d5f15f5271674827249fzilm6kap6qpxpwiixzb.mp4', 'no', '', NULL, NULL, '', '', '', '', '', 'rkV0720FlMj7UjQgMqdFMVHRv7bU3zPJelaI5KjrgYmE7GNpIsahdhzfuJ5HKIAq1lRsiH79FgdluPrba3FMgZY7vDQFYZqR6YMHWsv6IIIfgcXeNCySIyYYmYGHAnSv72qUTqY45jPRt8dKPBamva63d3d5f1649e31674827249', 'active', '2023-01-27 13:47:29', '2023-01-27 13:47:46'),
(15, 17, 8, 'video', '', NULL, NULL, '', '863d3d8d43e5b7167482798863fhiugekrbi9okt1uax.mp4', 'no', '', NULL, NULL, '', '', '', '', '', '8w7iY0qvfZW10FCDDhourFRj9WJVUhmwzZfWncLLRVRX4tyA3unuJMSELVz6RqeOgpTgeMg5Wwg9bMOk42hQDWszpCRXpDdfGoEybcNRzYVaNxzg0Wzf8W8dtW9ukQwL3MzYHBWobNS9M11u3UMHzm63d3d8d43fd361674827988', 'active', '2023-01-27 13:59:48', '2023-01-27 13:59:53'),
(16, 18, 4, 'image', '463d6087527b751674971253brrontpartvxtmges4xk.png', '512', '800', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'vb3Ww5YS4CRNMil0cy2jX4c4pAnfOB40ydW2jkuBF6yfKJNmOeYPI8mcax3hbdaLUmcpLNikNz6z7zWigLUaTaarowOFzEye0JDIcCuPaBivzFUnNaoJGcZYBIVHY6Zak4Auny69xT24FRSdG0pF8763d60875337b11674971253', 'active', '2023-01-29 05:47:33', '2023-01-29 05:48:30'),
(17, 19, 4, 'file', '', NULL, NULL, '', '', 'no', NULL, NULL, NULL, '', '', '41674972934gqkpv92aeltufgtjq0gt.zip', 'B', '17.1MB', 'HAKdoFckPOcXkXPk9MsHupShaP63lztnTys55ALaSTVKhZQtawpNMCIJS9lWuBbXewUCdbk3PxzcO7uorxTn957dKSgCm0Qek7FyHGNZgW06GB3tiwClZRtIKwHshQ6isThnWDZxo71G8wNrRM1EXo63d60f0690c221674972934', 'active', '2023-01-29 06:15:34', '2023-01-29 06:15:34'),
(18, 20, 4, 'image', '463d9335daf9c416751788457wnlie7fne0iykbjxfg3.png', '512', '800', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'RcI5LpiWBcTHvdSv6WEtNEw0SYoi25rv0jdsZCLd9A5iSFtoQ5mNdUQ5jcJgpSBLpRGByrkiiC4mcfDpIq89n6poWwQSCKEDhufYNAiMkpUsWO2VGCV4NMAjfAuXbN7uJOwRQBZGSEMTCpUGqkwbp863d9335db59591675178845', 'active', '2023-01-31 15:27:25', '2023-01-31 15:27:34'),
(19, 21, 4, 'image', '463d933a0546f516751789121dhsi8yo83zji1sowbsg.png', '512', '800', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', 'dGg5X9mp8N4Gq7YnDPgGaR3ZB5TH6nM3nRlU42IZ8ehEt9NM9fu98lELvUqyP6fObxe7DKZrUELzKVWRkCrDZ0H2yR3CsFAvHhAWXRRykUSVJV8UWVEA7xcXubcipUNrvKOtmzCDxlm0jZc7ADLLVE63d933a05a0261675178912', 'active', '2023-01-31 15:28:32', '2023-01-31 15:28:58'),
(20, 22, 1, 'video', '', NULL, NULL, '', '163e14270e5ceb1675706992oznrtkyoedbfyo9kr1qe.mp4', 'no', '', NULL, NULL, '', '', '', '', '', '2Efgb6sGm6t4XnVNvglMhTb6vwGcWAu4BWSKQMWQ8ksMfFn5HsjBoVatd5jHtddo2BW7pPXetAOqVcFGx2NLScKG7a3FONWhmerGYZSswHwKtwv57vnoikEvs1L9RIZWo7INpxYy9WsQSLFHLysi2s63e14270e63681675706992', 'active', '2023-02-06 18:09:52', '2023-02-06 18:10:03'),
(21, 23, 1, 'video', '', NULL, NULL, '', '163e142aaab6a01675707050zrksxummxhs9c2cvrp4g.mp4', 'no', '', NULL, NULL, '', '', '', '', '', 'Cn7h1ruGWMBS0CKbe6tqdAZMmfX3VnDU3AjgyuO0OLVncAwn122wqmKnyCw1vBPJFS1HtRJ8LODVNRlgGfUDYfWhQjARh6S94WAvNGw1Vp1vQ7YreS4wn1a8hdjSfDuKvravr6mvcShGx2rukfU2O463e142aaf31711675707050', 'active', '2023-02-06 18:10:50', '2023-02-06 18:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `media_messages`
--

CREATE TABLE `media_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_products`
--

CREATE TABLE `media_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_products`
--

INSERT INTO `media_products` (`id`, `products_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '363c9809e882ee1674150046gyl9kvldblv3bnxqe1xm.jpg', '2023-01-19 17:42:23', '2023-01-19 17:42:23'),
(2, 2, '363c9814d094ee1674150221fcnqqhbrqiazmni7hcmq.jpg', '2023-01-19 17:46:15', '2023-01-19 17:46:15'),
(3, 2, '363c981be21c231674150334shiclmybzzehdk2u7cgi.jpg', '2023-01-19 17:46:15', '2023-01-19 17:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `media_stories`
--

CREATE TABLE `media_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_length` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `font` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Arial',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_stories`
--

INSERT INTO `media_stories` (`id`, `stories_id`, `name`, `type`, `video_length`, `video_poster`, `text`, `font_color`, `font`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1673636854jK2Mx7NZrlKNYLN6L5D7Kym53YAfWl3HW9YRqK4cqEpFb8MdM4.jpg', 'photo', '', '', 'This is new text demo', '#ffffff', 'Arial', 1, '2023-01-13 19:07:34', '2023-01-13 19:07:34'),
(2, 2, '363c920585f3101674125400jgcwyu0bvblz53ff0yry.mp4', 'video', '', '', NULL, '#ffffff', 'Arial', 1, '2023-01-19 10:50:00', '2023-01-19 10:50:03'),
(3, 3, '1674592838X3UI35V0GIFTtUYbAt1GZR8vhb7eGHhQUiXenc21ASNUrEqjaC.png', 'photo', '', '', 'hu thete', '#ffffff', 'Arial', 1, '2023-01-24 20:40:38', '2023-01-24 20:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversations_id` int(11) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `mode` enum('active','pending') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversations_id`, `from_user_id`, `to_user_id`, `message`, `attach_file`, `created_at`, `updated_at`, `status`, `remove_from`, `file`, `original_name`, `format`, `size`, `price`, `tip`, `tip_amount`, `mode`) VALUES
(1, 1, 1, 4, 'hi Nepal', '', '2023-01-13 18:07:31', '2023-01-13 18:07:31', 'new', '1', '', '', '', '', '0.00', 'no', 0, 'active'),
(2, 2, 3, 4, 'hi', '', '2023-01-13 19:09:11', '2023-01-13 19:09:11', 'new', '1', '', '', '', '', '0.00', 'no', 0, 'active'),
(3, 3, 3, 5, 'hi', '', '2023-01-19 17:47:59', '2023-01-19 17:47:59', 'readed', '1', '', '', '', '', '0.00', 'no', 0, 'active'),
(4, 3, 5, 3, 'Hello', '', '2023-01-19 18:25:47', '2023-01-19 18:25:47', 'readed', '1', '', '', '', '', '0.00', 'no', 0, 'active'),
(5, 3, 3, 5, 'how are you?', '', '2023-01-29 00:55:21', '2023-01-29 00:55:21', 'readed', '1', '', '', '', '', '0.00', 'no', 0, 'active'),
(6, 4, 3, 9, 'hi rohini', '', '2023-01-29 00:55:56', '2023-01-29 00:55:56', 'new', '1', '', '', '', '', '0.00', 'no', 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `destination` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `destination`, `author`, `target`, `type`, `status`, `created_at`) VALUES
(3, 3, 1, 3, 1, '1', '2023-01-13 18:06:57'),
(4, 4, 1, 4, 1, '0', '2023-01-13 18:07:17'),
(7, 4, 3, 4, 1, '0', '2023-01-13 19:09:00'),
(8, 1, 3, 6, 14, '1', '2023-01-15 14:09:30'),
(9, 4, 5, 4, 1, '0', '2023-01-16 02:15:06'),
(10, 5, 3, 5, 1, '1', '2023-01-16 02:35:26'),
(11, 1, 3, 1, 1, '1', '2023-01-19 17:31:55'),
(12, 1, 3, 7, 14, '1', '2023-01-19 17:48:50'),
(13, 1, 3, 8, 14, '1', '2023-01-19 17:50:55'),
(14, 1, 3, 9, 14, '1', '2023-01-19 17:53:21'),
(15, 3, 7, 3, 1, '1', '2023-01-19 18:04:22'),
(16, 3, 7, 3, 1, '1', '2023-01-19 18:10:21'),
(17, 1, 3, 10, 14, '1', '2023-01-19 18:19:33'),
(18, 7, 3, 10, 14, '1', '2023-01-19 18:19:33'),
(20, 3, 1, 11, 14, '1', '2023-01-19 18:19:43'),
(21, 1, 3, 12, 14, '1', '2023-01-19 18:21:57'),
(22, 7, 3, 12, 14, '1', '2023-01-19 18:21:57'),
(23, 1, 3, 13, 14, '1', '2023-01-19 18:23:35'),
(24, 7, 3, 13, 14, '1', '2023-01-19 18:23:35'),
(25, 3, 5, 3, 1, '1', '2023-01-20 01:25:45'),
(26, 3, 9, 3, 1, '1', '2023-01-26 15:31:22'),
(27, 1, 8, 1, 1, '1', '2023-01-27 13:33:01'),
(28, 3, 8, 3, 1, '1', '2023-01-27 13:33:13'),
(29, 4, 8, 4, 1, '0', '2023-01-27 13:33:24'),
(30, 8, 10, 8, 1, '0', '2023-01-29 07:06:24'),
(31, 8, 3, 8, 1, '0', '2023-01-29 10:06:33'),
(32, 4, 3, 4, 1, '0', '2023-03-23 01:45:04'),
(33, 1, 3, 14, 14, '1', '2023-03-23 01:46:33'),
(34, 7, 3, 14, 14, '0', '2023-03-23 01:46:33'),
(35, 5, 3, 14, 14, '0', '2023-03-23 01:46:33'),
(36, 9, 3, 14, 14, '1', '2023-03-23 01:46:33'),
(37, 8, 3, 14, 14, '0', '2023-03-23 01:46:33'),
(38, 1, 13, 1, 1, '1', '2023-04-09 04:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lang` char(10) NOT NULL DEFAULT 'es',
  `access` varchar(50) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`, `lang`, `access`) VALUES
(2, 'Terms of Service', '<p>Welcome to PaidArtists.com. Please read these terms of service carefully before using the site or any of the services provided by the site.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Acceptance of Terms of Service: By using PaidArtists.com, you agree to these terms of service, as well as any additional terms, conditions, or policies set forth by PaidArtists.com from time to time. If you do not agree to these terms of service, you may not use the site or any of its services.</p>\r\n	</li>\r\n	<li>\r\n	<p>Description of Services: PaidArtists.com is an online marketplace that connects content creators with potential clients. The services provided by PaidArtists.com include but are not limited to, allowing content creators to offer their services to potential clients and allowing clients to purchase services from content creators.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Eligibility: To use the services provided by PaidArtists.com, you must be at least 18 years of age and have the legal capacity to enter into a contract. If you are using the site on behalf of a company or organization, you represent and warrant that you have the authority to bind such company or organization to these terms of service.</p>\r\n	</li>\r\n	<li>\r\n	<p>Account Creation: To access certain services on PaidArtists.com, you must create an account. When creating an account, you agree to provide accurate, current, and complete information. You are responsible for maintaining the confidentiality of your account and password, and you are fully responsible for all activities that occur under your account.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Content and Conduct: As a user of PaidArtists.com, you agree to comply with all applicable laws and regulations, as well as these terms of service. You are solely responsible for any content you post or transmit through the site, and you warrant that you have all necessary rights to do so. PaidArtists.com reserves the right to remove any content that violates these terms of service or that it deems inappropriate.</p>\r\n	</li>\r\n	<li>\r\n	<p>Intellectual Property: PaidArtists.com respects the intellectual property rights of others and expects its users to do the same. You may not use any content or intellectual property belonging to PaidArtists.com without its express written permission.</p>\r\n	</li>\r\n	<li>\r\n	<p>Limitation of Liability: PaidArtists.com is not liable for any direct, indirect, incidental, special, or consequential damages arising out of or in connection with the use of the site or its services, including but not limited to, lost profits or business interruption.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Termination: PaidArtists.com reserves the right to terminate your access to the site or any of its services at any time and for any reason, without notice. These terms of service will survive any such termination.</p>\r\n	</li>\r\n</ol>', 'terms-of-service', 'Terms of Service of Sponzy', 'terms, Terms of Service', 'en', 'all'),
(3, 'Privacy', '<p>At PaidArtists.com, we are committed to protecting the privacy of our users. This privacy policy describes the types of personal information we collect, how we use it, and the steps we take to safeguard it.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Information Collected: We collect personal information when you register for an account, use our services, or otherwise interact with our site. This may include your name, email address, payment information, and other information necessary to provide our services.</p>\r\n	</li>\r\n	<li>\r\n	<p>Use of Information: We use your personal information to provide our services, process payments, communicate with you, and improve our site and services. We may also use your information for marketing purposes, such as sending you newsletters or other promotional materials.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sharing of Information: We may share your personal information with third-party service providers, such as payment processors, to facilitate our services. We may also share your information with our affiliates or with other users of our site, such as content creators or clients.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Security: We take reasonable measures to protect your personal information from unauthorized access, disclosure, or alteration. We use encryption and other security measures to safeguard your information.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cookies: We use cookies and similar technologies to collect information about your use of our site and services. Cookies allow us to personalize your experience, remember your preferences, and track usage patterns.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Children&#39;s Privacy: Our site is not intended for use by children under the age of 18. We do not knowingly collect personal information from children under the age of 18.</p>\r\n	</li>\r\n	<li>\r\n	<p>Changes to Privacy Policy: We may update this privacy policy from time to time. Any changes will be posted on this page, and the revised policy will be effective immediately upon posting.</p>\r\n	</li>\r\n</ol>', 'privacy', '', '', 'en', 'all'),
(5, 'About us', '<p>At PaidArtists.com, we are passionate about supporting and empowering content creators of all types. Our mission is to provide a platform that allows creators to monetize their skills and talents, and to connect them with clients who are looking for high-quality, unique content.</p>\r\n\r\n<p>We believe that content creation is a valuable and important form of expression, and we are committed to providing a space where creators can thrive. Our site offers a range of services, from graphic design and writing to music production and video editing, and we are constantly expanding our offerings to better serve our community.</p>\r\n\r\n<p>Our team is made up of experienced professionals who are dedicated to providing top-notch support and guidance to both our clients and our creators. We believe that by fostering strong relationships between these two groups, we can help to build a more collaborative and creative world.</p>\r\n\r\n<p>Whether you are a seasoned content creator or just starting out, PaidArtists.com is here to help you succeed. We invite you to join our community and discover all that we have to offer.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', 'about', '', '', 'en', 'all'),
(8, 'How it works', '<p>PaidArtists.com is a platform that allows content creators to showcase their talents and connect with viewers who appreciate their work. Here is how it works:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Register for an Account: Content creators can sign up for a free account on PaidArtists.com. During the registration process, you will be asked to provide information about your skills and experience.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set Up Your Profile: Once your account is set up, you can create a profile that showcases your work and highlights your skills. This profile will be visible to viewers who are browsing our site.</p>\r\n	</li>\r\n	<li>\r\n	<p>Go Live: As a content creator on PaidArtists.com, you have the ability to go live and broadcast your creations to viewers around the world. You can schedule live events in advance or go live spontaneously to share your work with your followers.</p>\r\n	</li>\r\n	<li>\r\n	<p>Interact with Viewers: While you are live, viewers can interact with you in real-time through our platform. They can comment on your creations, ask you questions, and offer feedback.</p>\r\n	</li>\r\n	<li>\r\n	<p>Get Paid: If viewers like your creations, they can support you by making a payment through our site. You can set your own rates and offer perks or incentives to viewers who contribute. PaidArtists.com takes a small commission on each transaction to cover our operating costs.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Build Your Fanbase: As you go live and share your creations on our site, you will have the opportunity to build a following of fans who appreciate your work. You can interact with your fans, respond to their comments, and offer special perks or rewards to show your appreciation.<br />\r\n	<br />\r\n	We are committed to providing a supportive and inclusive environment for content creators of all types. Our team is always available to provide guidance and support throughout the process. Join our community today and start sharing your creations with the world.</p>\r\n	</li>\r\n</ol>', 'how-it-works', '', '', 'en', 'all'),
(9, 'Cookies Policy', '<p>At PaidArtists.com, we use cookies to provide a better user experience for our visitors. Cookies are small text files that are stored on your computer or mobile device when you visit our site. Here is our Cookies Policy:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>What are cookies?<br />\r\n	Cookies are small text files that are stored on your computer or mobile device when you visit our site. They allow us to remember your preferences, improve site performance, and provide a more personalized experience for our visitors.</p>\r\n	</li>\r\n	<li>\r\n	<p>What types of cookies do we use?<br />\r\n	We use several types of cookies on our site, including:</p>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Functional cookies: These cookies are necessary for the basic functionality of our site, such as remembering your login information and preferences.</p>\r\n	</li>\r\n	<li>\r\n	<p>Performance cookies: These cookies help us to understand how visitors interact with our site and to improve site performance.</p>\r\n	</li>\r\n	<li>\r\n	<p>Advertising cookies: These cookies are used to deliver relevant ads to our visitors and to track the effectiveness of our advertising campaigns.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>How do we use cookies? We use cookies to:</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Remember your login information and preferences</li>\r\n	<li>Improve site performance</li>\r\n	<li>Provide a more personalized experience for our visitors</li>\r\n	<li>Deliver relevant ads to our visitors</li>\r\n	<li>Track the effectiveness of our advertising campaigns</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<p>How can you control cookies? You can control cookies through your browser settings. Most web browsers allow you to block or delete cookies, or to set preferences for how cookies are used on your device.</p>\r\n	</li>\r\n	<li>\r\n	<p>Changes to our Cookies Policy: We may update our Cookies Policy from time to time. Any changes will be posted on this page, so please check back periodically for updates.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>By using our site, you consent to our use of cookies as described in this Cookies Policy. If you have any questions or concerns about our Cookies Policy, please contact us.</p>\r\n\r\n<p>&nbsp;</p>', 'cookies', 'Page Cookies Policy', 'cookies, policy', 'en', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(6,2) NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurrent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_subacc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_flexid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_salt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`) VALUES
(1, 'PayPal', 'normal', '0', 'true', '5.4', '0.30', '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', '', '', '', 'yes', 'paypal.png', '', 'yes', '', '', '', ''),
(2, 'Stripe', 'card', '0', 'true', '2.9', '0.30', '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', '', '', '', 'yes', 'stripe.png', '', 'yes', '', '', '', ''),
(3, 'Bank', 'bank', '0', 'true', '0.0', '0.00', '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', '', 'no', '', '', 'no', '', '', '', ''),
(4, 'CCBill', 'card', '0', 'true', '0.0', '0.00', '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '', '', '', ''),
(5, 'Paystack', 'card', '0', 'true', '0.0', '0.00', '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'yes', '', '', '', ''),
(6, 'Coinpayments', 'normal', '0', 'true', '0.0', '0.00', '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '', '', '', 'no', 'coinpayments.png', '', 'no', '', '', '', ''),
(7, 'Mercadopago', 'normal', '0', 'true', '0.0', '0.00', '', 'UmqNKk1EzDyjGgJxAswkhzL8bSdHusZh8RxF4hqzCEf52qdMOAMzMCchsKrLZgPcuTry6AZLLG7DUGwlpXVVpv1CajJbiV3j4EvPqbbIkBCoOptrDWZY1nRJhMc39v6NDOKFo9TjHQdnwU5pZSSReW', '', '', '', 'no', 'mercadopago.png', '', 'no', '', '', '', ''),
(8, 'Flutterwave', 'normal', '0', 'true', '0.0', '0.00', '', 'jMF4RWTW14dfJxlusZ22jGeCLdc8i3416CNiw2ny4l8kGBILQDTrhLtCsDxmb1MfBQA6xGh5BhQBrOXCUBB8lQMZrCaJQykG3Nxbv0ADFUSJiNewq7kbSkxyR3rCbbVjhBYMtWt6dpJTB78CafpA6T', '', '', '', 'no', 'flutterwave.png', '', 'no', '', '', '', ''),
(9, 'Mollie', 'normal', '0', 'true', '0.0', '0.00', '', 'EqvhQZimw0L3zWQ35AV93iDOqgQnkXV9cqLnIvgsnz2zRLpjeZUv5JnC3QzTjtctYuVmzuo06N31tLCRPFJNkomdh7Rhk2zxe68GzgWsL1hc6YEM5V5W6JVnqwQfAzNGZkY6ZRFKmZCMbFQXOF3WkR', '', '', '', 'no', 'mollie.png', '', 'no', '', '', '', ''),
(10, 'Razorpay', 'normal', '0', 'true', '0.0', '0.00', '', 'PsNqGq2rlLjo4AaTTsJpxshttwFFrLXjaKcwwQeG2r8aekDoETl9OG1cqND9PluycCfXazyzUiLo7ZFWs2tBWYwOpGcM8i5ID93Kr7Y6l79XrBcST56QONVpEcAuLRs36Z2t1Q1MBlR315c6vSpAFX', '', '', '', 'no', 'razorpay.png', '', 'no', '', '', '', ''),
(12, 'khalti', 'normal', '1', 'false', '0.0', '0.00', 'info@paidartists.com', '', 'live_public_key_2a5949add71c417b92d7bdf1663ab6bf', 'live_secret_key_a6bb565d4e994f788886b6ad9ef8e6c6', '', '', 'khalti.png', '', 'yes', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `user_id`, `name`, `price`, `interval`, `paystack`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'user_1', '0.00', 'monthly', '', '1', '2023-01-13 00:56:40', '2023-01-13 00:56:40'),
(2, 3, 'user_3', '0.00', 'monthly', '', '1', '2023-01-13 18:06:56', '2023-01-13 18:06:56'),
(3, 4, 'user_4', '0.00', 'monthly', '', '1', '2023-01-13 18:07:17', '2023-01-13 18:07:17'),
(4, 5, 'user_5', '5.00', 'monthly', '', '1', '2023-01-16 02:35:25', '2023-01-19 18:42:56'),
(5, 8, 'user_8', '0.00', 'monthly', '', '1', '2023-01-29 07:06:23', '2023-01-29 07:06:23'),
(6, 9, 'user_9', '30.00', 'monthly', '', '1', '2023-04-16 05:17:58', '2023-04-16 05:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'digital',
  `price` decimal(10,2) NOT NULL,
  `delivery_time` int(10) UNSIGNED NOT NULL,
  `country_free_shipping` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `box_contents` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `type`, `price`, `delivery_time`, `country_free_shipping`, `tags`, `description`, `file`, `mime`, `extension`, `size`, `status`, `created_at`, `updated_at`, `shipping_fee`, `quantity`, `box_contents`, `category`) VALUES
(1, 3, 'aayo noon', 'physical', '67.00', 0, '50', 'you, iam', 'good quality is the name of the this', '', NULL, NULL, NULL, '1', '2023-01-19 17:42:23', '2023-01-19 17:42:23', '60.00', 8, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `delivery_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivered',
  `description_custom_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_transactions`
--

CREATE TABLE `referral_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED DEFAULT NULL,
  `referrals_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `earnings` double(10,2) NOT NULL,
  `type` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `comments_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`id`, `name`) VALUES
(14, 'account'),
(31, 'api'),
(2, 'app'),
(49, 'artisan'),
(47, 'blog'),
(30, 'bootstrap'),
(34, 'categories'),
(36, 'collections'),
(29, 'comment'),
(42, 'config'),
(25, 'contact'),
(45, 'core'),
(46, 'cpanel'),
(32, 'creators'),
(37, 'dashboard'),
(41, 'database'),
(50, 'explore'),
(35, 'featured'),
(1, 'fuck'),
(9, 'goods'),
(52, 'home'),
(11, 'jobs'),
(21, 'join'),
(16, 'latest'),
(20, 'login'),
(33, 'logout'),
(27, 'members'),
(13, 'messages'),
(19, 'notifications'),
(48, 'offline'),
(15, 'popular'),
(6, 'porn'),
(12, 'projects'),
(3, 'public'),
(23, 'register'),
(40, 'resources'),
(39, 'routes'),
(17, 'search'),
(7, 'sex'),
(51, 'shop'),
(26, 'signup'),
(44, 'storage'),
(8, 'tags'),
(38, 'tests'),
(24, 'upgrade'),
(28, 'upload'),
(4, 'vendor'),
(5, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `restrictions`
--

CREATE TABLE `restrictions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_restricted` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Hello Jack', 'active', '2023-01-13 19:07:34', '2023-01-13 19:07:34'),
(2, 67, 'hi Jack', 'active', '2023-01-19 10:50:03', '2023-01-19 10:50:03'),
(3, 1, NULL, 'active', '2023-01-24 20:40:38', '2023-01-24 20:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `story_backgrounds`
--

CREATE TABLE `story_backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_backgrounds`
--

INSERT INTO `story_backgrounds` (`id`, `name`) VALUES
(1, '01.jpg'),
(2, '02.png'),
(3, '03.jpg'),
(4, '04.jpg'),
(5, '05.jpg'),
(6, '06.png'),
(7, '07.jpg'),
(8, '08.png'),
(9, '09.jpg'),
(10, '10.png'),
(11, '11.jpg'),
(12, '12.jpg'),
(13, '13.jpg'),
(14, '14.jpg'),
(15, '15.png');

-- --------------------------------------------------------

--
-- Table structure for table `story_fonts`
--

CREATE TABLE `story_fonts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `story_views`
--

CREATE TABLE `story_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `media_stories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_state_tokens`
--

CREATE TABLE `stripe_state_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `last_payment`, `free`, `subscription_id`, `cancelled`, `rebill_wallet`, `interval`, `taxes`) VALUES
(2, 1, '', '', '', 'user_3', NULL, NULL, NULL, '2023-01-13 18:06:56', '2023-01-13 18:06:56', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(3, 1, '', '', '', 'user_4', NULL, NULL, NULL, '2023-01-13 18:07:17', '2023-01-13 18:07:17', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(5, 5, '', '', '', 'user_4', NULL, NULL, NULL, '2023-01-16 02:15:05', '2023-01-16 02:15:05', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(6, 3, '', '', '', 'user_5', NULL, NULL, NULL, '2023-01-16 02:35:25', '2023-01-16 02:35:25', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(7, 3, '', '', '', 'user_1', NULL, NULL, NULL, '2023-01-19 17:31:54', '2023-01-19 17:31:54', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(9, 7, '', '', '', 'user_3', NULL, NULL, NULL, '2023-01-19 18:10:20', '2023-01-19 18:10:20', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(10, 5, '', '', '', 'user_3', NULL, NULL, NULL, '2023-01-20 01:25:45', '2023-01-20 01:25:45', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(11, 9, '', '', '', 'user_3', NULL, NULL, NULL, '2023-01-26 15:31:21', '2023-01-26 15:31:21', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(12, 8, '', '', '', 'user_1', NULL, NULL, NULL, '2023-01-27 13:33:01', '2023-01-27 13:33:01', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(13, 8, '', '', '', 'user_3', NULL, NULL, NULL, '2023-01-27 13:33:13', '2023-01-27 13:33:13', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(14, 8, '', '', '', 'user_4', NULL, NULL, NULL, '2023-01-27 13:33:23', '2023-01-27 13:33:23', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(15, 10, '', '', '', 'user_8', NULL, NULL, NULL, '2023-01-29 07:06:23', '2023-01-29 07:06:23', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(16, 3, '', '', '', 'user_8', NULL, NULL, NULL, '2023-01-29 10:06:33', '2023-01-29 10:06:33', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(17, 3, '', '', '', 'user_4', NULL, NULL, NULL, '2023-03-23 01:45:04', '2023-03-23 01:45:04', NULL, 'yes', '', 'no', 'off', 'monthly', NULL),
(18, 13, '', '', '', 'user_1', NULL, NULL, NULL, '2023-04-09 04:19:17', '2023-04-09 04:19:17', NULL, 'yes', '', 'no', 'off', 'monthly', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `percentage` decimal(5,2) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_state` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriptions_id` int(10) UNSIGNED NOT NULL,
  `subscribed` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_commission` int(10) UNSIGNED NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direct_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_codes`
--

CREATE TABLE `two_factor_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'active',
  `video_views` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `title`, `description`, `user_id`, `date`, `token_id`, `locked`, `fixed_post`, `price`, `status`, `video_views`) VALUES
(1, NULL, 'this is admin', 1, '2023-01-13 00:55:43', 'bqARHnXUFYXvHPVWidrR9Dt51j1O5VaA5cFYrW9Mjz1qgzIpwFaATkBKXW2rc0jUfX2Rakt61mhoGNxq35O0OoARlztayYQKhA8d7mRPB7Ox2gCTmD6VeYag1zyRpnbCmEf7lGT36YNNmNECPOfsKq', 'yes', '0', '0.00', 'active', 0),
(4, NULL, 'Get my latest book : Word from heaven ~ saskiya', 4, '2023-01-13 18:02:45', '63E6nubb7v69sVRcffMtOleIOXNLoV8a6i09ZDaQmArXR8vZKy5T0co3tZs8c1lsqvGIzuLwpcEWQstjdL3G5M8gTSWqxXMHCxMmK1NPl0X2ZFBLLVegWHgsm87HmOGoavM87JUvzQrdOMJs57dcg3', 'yes', '0', '10.00', 'active', 0),
(5, NULL, 'Hi purchase my pic', 5, '2023-01-16 02:34:04', 'FSWflu4yYT1X8CxvUqSdV0poDyNi8NnoSPZxy7obW98XHK1AHmukUsVTjseXuvtIiIo4KUpN4TNvzz4Y5ruSTeWjPQjotS4PWnYJOJNMK0Emxwgnu0D0M0SwJAQOsJASmwhVXer7YBAfsXUIdtk8vZ', 'yes', '0', '10.00', 'active', 0),
(6, NULL, '3D image with woolen strings', 1, '2023-01-19 10:38:11', '2sbStlFcyKYKalLZmtRxOiWsQZPtJCo6aH1hpJPW2mqZQw2zXzaq2wknyWFkpZEPXUpGOR4MhrnrIDZC0eiX1bGrWIoDJRffsPqDVu5aYk1BTiGEZ13Ya4Am7PmC4ZqFrAwGLvlHanFXZVrm7GiRIf', 'yes', '0', '0.00', 'active', 0),
(12, NULL, 'My photography ❤️', 9, '2023-01-26 14:03:49', 'naokvfxqEFGRgKaVdWSHHWB0PeaQCm6afDiRxQBMl1VecNgZvAIWIW9jlrmikInMEDgV66XGfjeQfDOOz4A0qEzaDxv5MjatFdArODPX3jh7236tnhdoJrMgMRM0npwbsN0bQ4krgjsBG8eOpQRXmI', 'yes', '0', '0.00', 'active', 0),
(13, NULL, 'Beautiful sunrise', 9, '2023-01-26 14:07:13', 'u98Ysar83OakAT903ORx1ln8JlKS8Z4umFlxqC3uqirax65VCptTNz1ItEoXb6k3FJvGUU2Rs90ujdME1iOA3PduBDAthN0EHreoqMTNc5VUeJdxRqOxzqYJL3BxczH4JmgWCHij0UXqwoRD2mFWab', 'yes', '0', '0.00', 'active', 0),
(14, '', 'Hello... how are you all?', 9, '2023-01-26 15:32:49', 'nXeVnJbPvW9PFeItdc01IrF4Jpb4VzSGHDzgWsa6hXb9lSiQRwzjLjmJFokKHJqgJuP9RYhdPG31SdVRp8RccYV1VdfqNHIFdRmAd9N9Sab6kBSrc3bgb4sf2kTw5nTwISXNDViSNSWwrNatUiV6xm', 'yes', '0', '0.00', 'active', 0),
(16, NULL, 'Here is one of my work.', 8, '2023-01-27 13:47:46', 'sLRoJizJSIDlOg3vlzEmVx2apXo8pTykfrsDwPqpd3NFm0fFXEZghuSgXRXICt8QXaanrt55N0lVQvR82D1HhVpq2Zkag83lEI4r0uvMAFZNn7jWFvkPbwLu4bb2GbuoyobLExJwjrcut0V0uNEEfa', 'yes', '0', '0.00', 'active', 2),
(17, NULL, 'Walking couple ❤️', 8, '2023-01-27 13:59:53', 'mgvGlGjdKXcLiQ6Xt0pwRZi3HXjlh9upgqcJTGSmfNsKKiTHOYIhaJ6D9YPzmQpKY0DD318Yd4Yo3fM4MttFF89NPK7Wyq8tPNBrd0dWOInpWRmAZFt4K6XcKHp5DISaAQo0lVwP9vW5S3eNPb4s4S', 'yes', '0', '0.00', 'active', 2),
(18, NULL, '\"BE UNIQUE, BE HAPPY\" \r\nMy new book on the way...❤️', 4, '2023-01-29 05:48:30', 'x2J5SOUNg32CN2l3PHCrNAmOzHpdr6STVzDOLBC0Ns5X7inKLunpaZntGZnSq27EbkVr4CYTvKjrVw8FfLFjLI1zFkHyijFbhkvncZYGCmLijVZP5dUJgu7gHXMieTrS9gQr1m5BPqLGXBa4ycs3z3', 'yes', '0', '0.00', 'active', 0),
(19, NULL, 'Please read the book \"Be unique, be happy\" and write the reviews.🙏', 4, '2023-01-29 06:15:34', 'SFdYpYj7hNyYQRVjFiWULyiwPdJt9f6nWlKCYlL0hkmG3Q1YJdAklEguvCHKsZetb1FeDVDUsgn4Say14vG6c8w5MHBRbNxlzDRrBJkdvBRaad0rmGteN3r3zQF4o0OB5lf7I5mvOukT2Mj0BjFbNf', 'yes', '0', '0.00', 'active', 0),
(20, NULL, 'hi', 4, '2023-01-31 15:27:34', 'Mm9WWCogKsHJvYgo1wJiMcs7Zjf7OKNSKZ0JfujYixjwIYprRK5UrzvZtLKKKjyi7cWG9li47qwXnTBlaj0cl9QFrFTCNQmwBtKi2WEzg6yEd05SWfc4LXiqvtr4axcq4rlZVpocq8QJTpcCujWP1X', 'yes', '0', '0.00', 'active', 0),
(21, NULL, 'hi', 4, '2023-01-31 15:28:58', 'TxbwbCgV3Hsn5yU1gMJgftWHIKp2smeZvt9wF1rBSKtOx7F7ANr1RrGkY8gyTfuh48mHhCwlQWkxdswvbsi6nZ12C12yLwfdNEL9d4IAnwMqEgxLMkGQh4FeUumxo2fAsun6TES8tq5fn5H8jtjx7b', 'no', '0', '0.00', 'active', 0),
(22, NULL, 'listen', 1, '2023-02-06 18:10:03', '3prpaP3BrarBtFumX7pvCETegfYKtUfvDU7nB2zGutTV1Qgn8y7M5qkfN7Vahc8ziicKAkANCKOx8cyj9eTko6E3BfWGmIEqnzzPm1SDm01sTwd9DgzG3jeMSOmAl84W2re9f4Dt6QdELI8xANniWo', 'yes', '0', '0.00', 'active', 1),
(23, NULL, 'The Best way', 1, '2023-02-06 18:11:12', 'Agfgh6HWXe3bX8w38p4crE19qrGSSKiFjbLWcewneYDkg8RSIet6Z8vg75Cr6MCJ1PEwbNy9nJ05GYd90sFg8EmBnFUcQTa5Nqv26dmNUBYJJDjL2QMFPRFOGu30hdEbzpkRpOF37AUcPr26dj1LXB', 'yes', '0', '0.00', 'active', 1),
(25, '', 'hiesjgodfopgjfd', 1, '2023-04-09 04:15:45', 'xbcVoC355gGTjhxdc4myqT8DPT4TcPyV26zUeq4qlfI4tZGXBOTm05ErF16I87jVBbBQlhTbaNB02g1ej2NsMlK7Kun0LNGnfE6XawOtvIF0tja4ASL983fxKvvFhQ9ggvz9WEPkmx5CzNnKKjRLuM', 'yes', '0', '33.00', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` enum('pending','active','suspended','delete') NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int(10) UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int(10) UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissions` text NOT NULL,
  `blocked_countries` text NOT NULL,
  `two_factor_auth` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_live_streaming` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_mentions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `completed_stripe_onboarding` tinyint(1) NOT NULL DEFAULT 0,
  `device_token` varchar(255) DEFAULT NULL,
  `telegram` varchar(200) NOT NULL,
  `vk` varchar(200) NOT NULL,
  `twitch` varchar(200) NOT NULL,
  `discord` varchar(200) NOT NULL,
  `reddit` varchar(200) NOT NULL,
  `spotify` varchar(200) NOT NULL,
  `posts_privacy` tinyint(1) NOT NULL DEFAULT 1,
  `document_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`) VALUES
(1, 'Aaditi', 'admin', '1', '$2y$10$cQ.vVSWsvnJRWJLyPe6LNOBuqtvdOXd..9EBxwYg9MQeKN3ZjdbU2', 'info@paidartists.com', '2021-03-13 08:01:01', 'admin-11674789711ofom7vpd98.jpeg', 'cover_default-1673632403.jpg', 'active', 'admin', 'all', 'EqmYYsFwZYqEGeJg9FdnKIrtvcV5XucdtRHGsFB8Bm7cujiYEP8FIhnzDY9C', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', '', '', '', 'yes', '2019-02-21 03:25:00', '', 'Welcome to my page. If you like my content, please consider support. Any donation will be well received. Thank you for your support!', 'business', '', '', '2,4,8', 'https://github.com/', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2023-04-16 12:48:06', 'yes', 'user_1', 'yes', 'yes', 'yes', '', 'yes', '', 'off', 'male', '01/01/1990', 'no', 'en', 'yes', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'no', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'full_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(3, 'jack', 'jack', '152', '$2y$10$IweFpXuIqayvC.6ix8h9Au3Bb4ZfQkDpDjLOYJnRYZDvE72ed.yBe', 'jackabnana@gmail.com', '2023-01-13 08:28:25', 'jack-31674143593gtzbsounpt.png', 'jack-31674143599cqowxs5f5i.png', 'active', 'normal', 'none', '', 'qojifzg7NSfY2JnMdUgRtkm7cXzh4RD07ckkMwvPNBASSNGpCzWRr6fIBfPWNmM33bjNqOOYYZD', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', 'Morang', 'Biratnagar', '56613', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', '2023-04-09 04:44:28', 'yes', 'user_3', 'yes', 'yes', 'yes', '', '', '2400:1a00:bd11:95c6:28be:e1a3:6c4d:1496', 'off', '', '01/12/2005', 'no', 'en', 'yes', '0.00', 'https://www.facebook.com/', 'https://www.facebook.com/', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(4, 'Saskia', 'saskia', '152', '$2y$10$tkmzDHlzu/QtaeS8XVD6vO2G3y8bpPftdcVpomEQ2JcDNcCa7rzMG', 'jack@gmail.com', '2023-01-13 17:55:05', 'nepal-4-416747936838jtyrlwend.png', 'nepal-4-41673632838n8oostndme.png', 'active', 'normal', 'none', '', 'ojxRFitLhfl1vqdIL66ERXmFrPvd8cQc14lEQrjUZsKx4iuAYsJwcagzvEmhO21Ib1LjSZZshWB', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', 'kolkotta', 'kol', '55265', '', '', '', '', '', '', '2023-01-31 16:51:52', 'yes', 'user_4', 'yes', 'yes', 'yes', '', '', '2400:1a00:bd11:481c:414e:d368:fd46:4750', 'off', '', '01/05/2005', 'no', 'en', 'yes', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(5, 'Nani', 'nani-5', '152', '$2y$10$6lHpMq2hT.4T3761rDATu.ipSTfGD.xPIVBI6CthRbx9PTHwyT.YS', 'khatiwadasoexya1@gmail.com', '2023-01-16 02:14:03', 'nani-5-516741528010zlxbkn7xr.png', 'nani-5-51674152827hznvjjcp2s.jpg', 'active', 'normal', 'none', '', '0wI1WaYyWYfMt6CeHfbVTQQM8n8w1Tfjwk8I7RY1NDgWKlDsjjE4yghNhV7KcOslUXgkmdA47ZV', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '4,7,9', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', 'Nepal', 'City', '00546', '', '', '', '', '', '', '2023-02-21 03:52:42', 'yes', 'user_5', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:3454:2d31:bad:45e1', 'off', '', '02/10/2000', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(6, 'jacka', 'jacka-6', '152', '$2y$10$YilEr8pFzZiq/p97ysHTAuCEXbufVDbDUnyB8tHUZOzsj04hWPrjq', 'ja@ab.com', '2023-01-19 17:57:35', 'default-1673632403.jpg', 'cover_default-1673632403.jpg', 'active', 'admin', 'none', '', 'qaeMbbox5ApsWj3pFYa7Khf1BitSN7K5UGENPW2S55EnDan0eWoafaDK4WOCtqF9los6sIqWEoz', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2023-01-19 18:01:42', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:5557:3a62:4038:cc1a', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'dashboard,general_settings,announcements,maintenance,billing,tax,countries_states,email,live_streaming,push_notifications,stories,shop,products,shop_categories,storage,theme,custom_css_js,posts,subscriptions,transactions,deposits,members,referrals,languages,categories,reports,withdrawals,verification_requests,pages,blog,payment_settings,profiles_social,social_login,google,pwa', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(7, 'Binayak', 'nepal-7', '152', '$2y$10$zHH3JJwJ3DsBujubOfNJDuacuXHEHR7aDySkR.PLTs/cR2W7W9e9m', 'nepal@nepal.com', '2023-01-19 18:02:49', 'nepal-7-71674747915xvak93om03.jpg', 'nepal-7-71674747965e3c79nsyo3.jpg', 'active', 'normal', 'none', 'j5tvyPbkVVMxpxruTF3oCdbBq3slqMjTlKrU3WOmAEydlj0s4YoLr0tDC4va', 'WGDZeKyFW1auhY8GCiJ3QH3INrHSl9m4uZrqzRW6gND5mcTLpmOVPoqzzLxRB3PRLPrXp5LFDH3', '', '', '', '', 'no', NULL, '', 'Welcome to page! If you like my content, please consider subscribing.', 'Designer', '', '', '1,2,4', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', 'Adress', 'itahari', '564443', 'https://www.facebook.com/profile.php?id=100085772888391', '', '', '', '', '', '2023-01-29 05:46:01', 'yes', 'user_7', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:5557:3a62:4038:cc1a', 'off', 'male', '01/10/2005', 'no', 'en', 'yes', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(8, 'Briston', 'nep-8', '152', '$2y$10$3onti1h2ucp7YPWOEKQlWeIwYNXiBlMToMt.L76DXclADF.RNpreC', 'nep@n.com', '2023-01-26 13:47:01', 'nep-8-81674826132rmpo7zeyly.jpg', 'nep-8-81674826338rn4tm7j3cp.png', 'active', 'normal', 'none', '', 'H2wGfIxk7RqJPuPYYHLV6eknxhiOFb3xaF6DpGsWm93sFmWhDvKlFoLCQpIWDPRioftStv7eXim', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. I make amazing animated videos.', 'Designer - animated videos', '', '', '5', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2023-01-27 14:03:28', 'yes', 'user_8', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:4902:c645:6ad6:6bf9', 'off', 'male', '02/02/2000', 'no', 'en', 'yes', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(9, 'Rohini', 'nepal-9', '152', '$2y$10$O9ndYuhPpPz/JC32g2dlk.NscGOfDv9d0D8UOAAwA.noek802HU9q', 'nepal@india.com', '2023-01-26 13:47:47', 'nepal-9-91674741586aesdbecsad.jpeg', 'nepal-9-916747419460hcsjb3wsx.jpg', 'active', 'normal', 'none', '', 'zfquMa5CbyzAtAQmbWYHYliGj4M8ZigezB6qOTWokzTejPLYxES18QKc6ToHSutU5qMzSS5NrxU', '', '', '', '', 'no', NULL, '', 'Hello all! Welcome to my page. If you like my contents please consider subscribing. Lots of love all.❤️', 'photographer', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', 'Biratnagar', 'City', '00546', '', '', '', '', '', '', '2023-04-16 12:40:23', 'yes', 'user_9', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:4902:c645:6ad6:6bf9', 'off', 'female', '01/13/2005', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(10, 'sanu', 'sanu-10', '152', '$2y$10$nnk3hCftccumb2MKet9UFe2qfNRLGqlPUmpSfZ4bvtGWxflyILbAm', 'sanu@nepal.com', '2023-01-29 07:06:07', 'default-1673632403.jpg', 'cover_default-1673632403.jpg', 'active', 'normal', 'none', '', 'CIOuSDFVjxSycRUFDM4uccMNvurAMXWBr181z2bYxpOxmMYegmOzMC8sz22xn2taTA6l1nnxe9l', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2023-01-29 07:08:32', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:bd11:481c:8522:1d13:b88d:c11a', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(11, 'sandip ghimire', 'sandip-11', '152', '$2y$10$BXNvdnVYdUNIyf07d8ggeeil.rGfFLnyLBvxif6Fe4uM5ssmMoSRy', 'sandp253649@gmail.com', '2023-02-15 14:04:20', 'default-1673632403.jpg', 'cover_default-1673632403.jpg', 'active', 'normal', 'none', '', 'EhQuVZmhqNuG3R4kGVLxNAlz2RRdFU6mYMYFFxbxMRNsub1SqCyOoOu93fKGBCOS7DAPlmuKL9f', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2023-02-15 14:20:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2400:1a00:b030:35:8ca3:c205:7fca:8717', 'on', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(12, 'documents bank', 'documents-12', '152', '$2y$10$pzV.C3cLMXrgi1t5nn.GhuiKkKKz9elEPJhiSBCI0Xd2cmptZ0lRG', 'documentsbank369@gmail.com', '2023-03-19 12:30:49', 'default-1673632403.jpg', 'cover_default-1673632403.jpg', 'active', 'normal', 'none', '', 'GWp3jYPNrQGKXLqi7nO2FLokQjYnXJkhki0dSY6w47wZEkPDjennFWIeStVhTLKHtpSliNi5dH2', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'Camera man', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2023-03-19 13:28:17', 'yes', 'user_12', 'yes', 'yes', 'yes', '369 movies', 'yes', '120.89.104.110', 'off', 'male', '01/09/1999', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, ''),
(13, 'kumar', 'kumar-13', '152', '$2y$10$YMNywx2qpoTUGQWi0/oOFex593rSIsYg/BbEOEAeNCbY.gM.bobOC', 'ashokmehta1234y@gmail.com', '2023-04-09 04:17:52', 'kumar-13-131681015506grnstaz2gt.png', 'kumar-13-131681015497zacxa5fi3m.png', 'active', 'normal', 'none', '', 'r5H2aMeS7Eo3fONNwPb7XoWmiNcdsVbj4F64xYYjRIuxh8gLO1jpLg8tGkG8ukMh7G6i65GpkGm', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2023-04-09 04:45:58', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '103.94.255.58', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_reverse` varchar(100) DEFAULT NULL,
  `image_selfie` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `form_w9` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verification_requests`
--

INSERT INTO `verification_requests` (`id`, `user_id`, `address`, `city`, `zip`, `image`, `image_reverse`, `image_selfie`, `status`, `created_at`, `form_w9`) VALUES
(1, 2, 'Biratnagar', 'Biratnagar', '446005', '21673591693fymlnoqdxnaypqount0w7wzjdb7ozwgk7khknkue.jpg', 'reverse-21673591693lrv4dlgdnbv2h7acyawg8nkihpayftrb5yavuckn.jpg', 'selfie-21673591693zbqvg3labvwiecasnoucvhylrn19lnjcphzusgir.jpg', 'pending', '2023-01-13 00:49:53', ''),
(2, 3, 'Morang', 'Biratnagar', '56613', '31673598738mvgslcox8nfrogplxvitw4fhazlckk82ybtvpuld.jpg', 'reverse-31673598738mawwcyxbbwdqd2ajobcgcyursgtmavhmulvtxi9b.jpg', 'selfie-31673598738iace2ybnfvi9yj54n3urxo9kuj4xnosvxju8bxqe.jpg', 'approved', '2023-01-13 08:32:18', ''),
(3, 4, 'kolkotta', 'kol', '55265', '41673632674fx3lxk53yo8tldejpwo8ojfq61xpcx9tdhshgayx.jpeg', 'reverse-41673632674vmpkihdis1m7ojcb7fmkm1gn8lpzdto148fx4ipf.jpg', 'selfie-41673632674qicmacmrgd7qp2e3eaxxjzemvsopq7vsuuv5ldpj.jpg', 'approved', '2023-01-13 17:57:54', ''),
(4, 5, 'Nepal', 'City', '00546', '51673836284rmbhr9brwf6g0cgs91nngchb73rg1enxdtpaqcja.jpg', 'reverse-51673836284watmq9hqq6b7wdxpuh2yoc6h7nhsi8hiewbqe0k1.jpg', 'selfie-51673836284u0xiqm5ann536ipn5n7poxppxti0u9cygyczcrho.jpg', 'approved', '2023-01-16 02:31:24', ''),
(5, 7, 'Adress', 'itahari', '564443', '71674740386pwnfem2kfouuthcts8rytayd0fc2e2ykqhg45usu.png', 'reverse-71674740386ut1fsiag7sh4ulvh9kpjndb8epubtypy3xfwphrf.png', 'selfie-71674740386y1pgbghhybbvmdimsq4fsuly4qtavd3duavbopkq.png', 'approved', '2023-01-26 13:39:46', ''),
(6, 9, 'Biratnagar', 'City', '00546', '91674740992ycw6bn0q3aqd2sepceqqjumngnl5tcqkopy998ug.png', 'reverse-91674740992ny1uv5az8dy5sqhr9pojcuon2wcglec2vsm9ipov.png', 'selfie-916747409921hoxasnhohmycggsffn1sh4puey6zs29vbi34xmd.png', 'approved', '2023-01-26 13:49:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_views`
--

CREATE TABLE `video_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_views`
--

INSERT INTO `video_views` (`id`, `user_id`, `updates_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 10, 17, '2400:1a00:bd11:481c:8522:1d13:b88d:c11a', '2023-01-29 07:06:27', '2023-01-29 07:06:27'),
(2, 10, 16, '2400:1a00:bd11:481c:8522:1d13:b88d:c11a', '2023-01-29 07:06:33', '2023-01-29 07:06:33'),
(3, 3, 17, '2405:acc0:1100:541e:61f4:3f99:4b40:88a7', '2023-01-29 10:06:37', '2023-01-29 10:06:37'),
(4, 3, 16, '2405:acc0:1100:541e:61f4:3f99:4b40:88a7', '2023-01-29 10:06:45', '2023-01-29 10:06:45'),
(5, 3, 22, '103.163.182.60', '2023-03-23 01:46:13', '2023-03-23 01:46:13'),
(6, 3, 23, '103.163.182.60', '2023-03-23 02:04:11', '2023-03-23 02:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `estimated_payment` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_updates_id_index` (`updates_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`updates_id`,`user_id`,`status`);

--
-- Indexes for table `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_likes_user_id_index` (`user_id`),
  ADD KEY `comments_likes_comments_id_index` (`comments_id`),
  ADD KEY `comments_likes_replies_id_index` (`replies_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_1` (`user_1`,`user_2`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usr` (`user_id`,`updates_id`,`status`);

--
-- Indexes for table `live_comments`
--
ALTER TABLE `live_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_comments_user_id_index` (`user_id`),
  ADD KEY `live_comments_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_likes`
--
ALTER TABLE `live_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_likes_user_id_index` (`user_id`),
  ADD KEY `live_likes_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_online_users`
--
ALTER TABLE `live_online_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_online_users_user_id_index` (`user_id`),
  ADD KEY `live_online_users_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_streamings`
--
ALTER TABLE `live_streamings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_streamings_user_id_index` (`user_id`);

--
-- Indexes for table `login_sessions`
--
ALTER TABLE `login_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_updates_id_index` (`updates_id`),
  ADD KEY `media_user_id_index` (`user_id`),
  ADD KEY `media_type_index` (`type`),
  ADD KEY `media_token_index` (`token`),
  ADD KEY `media_encoded_index` (`encoded`);

--
-- Indexes for table `media_messages`
--
ALTER TABLE `media_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_messages_messages_id_index` (`messages_id`),
  ADD KEY `media_messages_type_index` (`type`),
  ADD KEY `media_messages_token_index` (`token`),
  ADD KEY `media_messages_encoded_index` (`encoded`);

--
-- Indexes for table `media_products`
--
ALTER TABLE `media_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_products_products_id_index` (`products_id`);

--
-- Indexes for table `media_stories`
--
ALTER TABLE `media_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_stories_stories_id_index` (`stories_id`),
  ADD KEY `media_stories_name_index` (`name`),
  ADD KEY `media_stories_type_index` (`type`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from_user_id`,`to_user_id`,`status`),
  ADD KEY `remove_from` (`remove_from`),
  ADD KEY `conversation_id` (`conversations_id`),
  ADD KEY `messages_mode_index` (`mode`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`,`author`,`target`,`status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hash` (`token`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_index` (`user_id`),
  ADD KEY `pay_per_views_updates_id_index` (`updates_id`),
  ADD KEY `pay_per_views_messages_id_index` (`messages_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`),
  ADD KEY `plans_user_id_index` (`user_id`),
  ADD KEY `plans_paystack_index` (`paystack`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_transactions_id_index` (`transactions_id`),
  ADD KEY `purchases_user_id_index` (`user_id`),
  ADD KEY `purchases_products_id_index` (`products_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_index` (`user_id`),
  ADD KEY `referrals_referred_by_index` (`referred_by`);

--
-- Indexes for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_transactions_referrals_id_index` (`referrals_id`),
  ADD KEY `referral_transactions_user_id_index` (`user_id`),
  ADD KEY `referral_transactions_referred_by_index` (`referred_by`),
  ADD KEY `referral_transactions_transactions_id_index` (`transactions_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_index` (`user_id`),
  ADD KEY `replies_updates_id_index` (`updates_id`),
  ADD KEY `replies_comments_id_index` (`comments_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`,`report_id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `restrictions`
--
ALTER TABLE `restrictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restrictions_user_id_index` (`user_id`),
  ADD KEY `restrictions_user_restricted_index` (`user_restricted`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categories_slug_index` (`slug`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_countries_id_index` (`countries_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_index` (`user_id`),
  ADD KEY `stories_status_index` (`status`);

--
-- Indexes for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_backgrounds_name_index` (`name`);

--
-- Indexes for table `story_fonts`
--
ALTER TABLE `story_fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story_views`
--
ALTER TABLE `story_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_views_user_id_index` (`user_id`),
  ADD KEY `story_views_media_stories_id_index` (`media_stories_id`);

--
-- Indexes for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`(191)),
  ADD KEY `last_payment` (`last_payment`(191));

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber` (`subscriptions_id`),
  ADD KEY `subscribed` (`subscribed`);

--
-- Indexes for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`),
  ADD KEY `author_id` (`token_id`),
  ADD KEY `category_id` (`user_id`),
  ADD KEY `updates_status_index` (`status`),
  ADD KEY `updates_video_views_index` (`video_views`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `username` (`status`),
  ADD KEY `role` (`role`),
  ADD KEY `username_2` (`username`),
  ADD KEY `permission` (`permission`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `stripe_id` (`stripe_id`(191)),
  ADD KEY `users_permissions_index` (`permissions`(1024)),
  ADD KEY `users_blocked_countries_index` (`blocked_countries`(1024));

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_devices_player_id_unique` (`player_id`);

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `video_views`
--
ALTER TABLE `video_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_views_user_id_index` (`user_id`),
  ADD KEY `video_views_updates_id_index` (`updates_id`),
  ADD KEY `video_views_ip_index` (`ip`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaings_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `live_comments`
--
ALTER TABLE `live_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `live_likes`
--
ALTER TABLE `live_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `live_online_users`
--
ALTER TABLE `live_online_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `live_streamings`
--
ALTER TABLE `live_streamings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `media_messages`
--
ALTER TABLE `media_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_products`
--
ALTER TABLE `media_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_stories`
--
ALTER TABLE `media_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `restrictions`
--
ALTER TABLE `restrictions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `story_fonts`
--
ALTER TABLE `story_fonts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_views`
--
ALTER TABLE `story_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video_views`
--
ALTER TABLE `video_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
