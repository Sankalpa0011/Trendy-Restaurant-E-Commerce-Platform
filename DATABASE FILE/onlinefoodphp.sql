-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 09:39 AM
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
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '670b14728ad9902aecba32e22fa4f6bd', 'admin@gmail.com', '', '2023-12-24 07:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Thandoori Chicken', 'Marinated in spices and yogurt, this clay oven-roasted chicken offers smoky flavors and tender bites', 1600.00, '657d22c1c9183.jpg'),
(2, 1, 'Masala Dosa', 'Fermented rice-lentil crepe enveloping a spiced potato filling. A South Indian delicacy famed for its crispy texture and flavorful potato filling.', 950.00, '657d241f15528.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', 2300.00, '657d2db389793.jpg'),
(4, 1, 'Biryani', 'Indian Biryani is fragrant rice, cooked with aromatic spices and tender meat or vegetables, offering a rich blend of flavors and enticing aromas a cherished culinary delight in Indian cuisine.', 1500.00, '657d1741ad7cb.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 1850.00, '657d1f7d2f71f.jpg'),
(7, 2, 'Crispy Chicken Strips Bucket', 'Served with special honey mustard sauce. Tender chicken pieces coated in a seasoned breading, fried to golden perfection, boasting a crunchy exterior and juicy, flavorful meat', 1800.00, '657d23a888854.jpg'),
(8, 2, 'Lemon Grilled Chicken With Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 2500.00, '657d19f61a76c.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 1850.00, '657d25ba214c8.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 1950.00, '657d25811de34.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 600.00, '657d254edd538.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 1800.00, '657d253346591.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 2450.00, '657d294e4ab92.jpg'),
(14, 4, 'Mac N Cheese Bites Plate', 'Served with our traditional spicy queso and marinara sauce.', 1650.00, '657d292e7c6d2.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 1250.00, '657d290779fd4.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 1650.00, '657d28dad2028.jpg'),
(17, 1, 'Masala Chai', 'A fragrant blend of black tea, aromatic spices, milk, and sugarâ€”a quintessential Indian drink known for its comforting warmth and spice-infused flavor.', 350.00, '657d18276e935.jpg'),
(18, 1, 'Lassi', 'Lassi is a creamy yogurt-based drink, sweet or savory, often blended with fruits or flavored with spice a refreshing and smooth delight in Indian cuisine.', 650.00, '657d197541dc3.jpg'),
(19, 2, 'Cappuccino', 'Cappuccino is qual parts espresso, steamed milk, and milk foam a creamy and frothy coffee beverage often enjoyed in the morning.', 1250.00, '657d1c3e6e48f.jpg'),
(20, 2, 'Cheesy Mashed Potato', 'Cheesy Mashed Potatoes is creamy mashed potatoes blended with melted cheese, offering a rich, indulgent flavor and a comforting, velvety texture a delightful and comforting side dish.', 2300.00, '657d1d810f197.jpg'),
(21, 2, 'Galeto', 'Gelato is Italian-style ice cream made with milk, cream, and various flavors, served at a slightly warmer temperature than traditional ice cream, resulting in a denser and creamier texture.', 1250.00, '657d1ee98ea9e.jpg'),
(22, 2, 'Chinotto', 'Chinotto is a non-alcoholic carbonated soft drink made from the juice of the bitter Chinotto fruit, popular for its unique bittersweet flavor.', 1550.00, '657d20c51883b.jpg'),
(23, 3, 'Oolongo Tea', 'Oolong Tea is a partially oxidized tea with a complex flavor profile, ranging from floral to roasted notes, known for its aromatic qualities.', 950.00, '657d2664c6c81.jpg'),
(24, 3, 'Dragon Fruit Smoothie', 'Dragon Fruit Smoothie is a vibrant pink smoothie made from dragon fruit, blended with milk or yogurt and sweeteners.', 1100.00, '657d271af382d.jpg'),
(25, 4, 'Root Beer', 'Root Beer is a non-alcoholic carbonated drink with a unique taste, often flavored with sassafras.', 1300.00, '657d2a1835051.jpg'),
(26, 4, 'Strawberry Smoothie', 'Strawberry Smoothie is Blended strawberries with yogurt, milk, or juice, offering a creamy and fruity drink.', 1250.00, '657d2d61e283a.jpg'),
(27, 4, 'Cranberry Juice', 'Cranberry Juice, Tart and flavorful juice made from cranberries, often mixed with other fruit juices or used in cocktails.', 1450.00, '657d2ea223a28.jpg'),
(28, 5, 'New York Style Pizza', 'New York Style Pizza: Known for its large, wide slices with a foldable crust, usually thin and chewy, topped with a simple tomato sauce and mozzarella cheese.', 2600.00, '657d35e93fed5.jpg'),
(29, 5, 'California Style Pizza', 'California Style Pizza: Typically featuring innovative and diverse toppings like avocado, goat cheese, arugula, and barbecue chicken, known for its creative and unconventional flavors.', 2550.00, '657d3615dab38.jpg'),
(30, 5, 'California Style Pizza', 'California Style Pizza: Typically featuring innovative and diverse toppings like avocado, goat cheese, arugula, and barbecue chicken, known for its creative and unconventional flavors.', 2550.00, '657d3726bb524.jpg'),
(31, 5, 'Classic Cheeseburger', 'Classic Cheeseburger: A traditional burger topped with a slice of melted cheese.', 800.00, '657d378b599fd.jpg'),
(32, 4, 'Classic Cheeseburger', 'Classic Cheeseburger: A traditional burger topped with a slice of melted cheese.', 800.00, '657d37ba28e02.jpg'),
(33, 4, 'Double Patty Burger', 'Double Patty Burger: Contains two beef patties, offering a heartier meal.', 850.00, '657d37f039eea.jpg'),
(34, 4, 'New York Style Pizza', 'New York Style Pizza: Known for its large, wide slices with a foldable crust, usually thin and chewy, topped with a simple tomato sauce and mozzarella cheese.', 2550.00, '657d38304270b.jpg'),
(35, 2, 'Neapolitan Style Pizza', 'Neapolitan Style Pizza: Inspired by the Italian original, characterized by a thin crust, soft center, and slightly charred edges from a wood-fired oven, typically topped with fresh ingredients like San Marzano tomatoes and', 2650.00, '657d386779df3.jpg'),
(36, 4, 'California Style Pizza', 'California Style Pizza: Typically featuring innovative and diverse toppings like avocado, goat cheese, arugula, and barbecue chicken, known for its creative and unconventional flavors', 2500.00, '657d38b39adae.jpg'),
(37, 2, 'Gorgonzola Burger', 'Gorgonzola Burger: Topped with Gorgonzola cheese, caramelized onions, and perhaps a spread of fig jam or balsamic reduction for a sweet and savory contrast.', 750.00, '657d39bc57f97.jpg'),
(38, 3, 'Cumin Lamb', 'Cumin Lamb: A popular variation featuring tender, cumin-spiced lamb, often mixed with onions or other aromatic ingredients.', 1100.00, '657d3b59a5fd1.jpg'),
(39, 3, 'Barbecue Pork Pizza', 'Barbecue Pork Pizza: Using Chinese-style barbecue pork (char siu) as a topping, often combined with other ingredients like bell peppers or pineapple.', 2900.00, '657d3b8d3d7a2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Zarza Indian', 'zarzaindian@mail.com', '+94 114567890', 'www.zarzaindian.com', '8am', '6pm', 'mon-fri', ' 28 Cross St, Kandy ', '657d11fce8f44.jpg', '2023-12-16 02:57:00'),
(2, 2, 'Zarza Italy', 'zarzaitaly@gmail.com', '+94 119876543', 'www.zarazaitaly.com', '11am', '8pm', 'mon-sat', '      54 DS Senanayake St, Kandy      ', '657d107966ac6.jpg', '2023-12-16 02:50:33'),
(3, 3, 'Zarza Chinese', 'zarzachinese@gmail.com', '+94 115464563', 'www.zarzachinese.com', '11am', '8pm', '24hr-x7', '34 Straight St, Kandy', '657d24f1820da.jpg', '2023-12-16 04:17:53'),
(4, 4, 'Cafe Zarza', 'cafezarza@gmail.com', '+94 110987654', 'www.cafezarza.com', '--Select your Hours--', '--Select your Hours--', '24hr-x7', '5th Floor, No: 05, Sri Dalada Weediya, KCC, Kandy', '657d281b2dad1.jpg', '2023-12-16 04:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2023-12-16 02:11:36'),
(2, 'Italian', '2023-12-13 08:45:23'),
(3, 'Chinese', '2023-12-13 08:45:25'),
(4, 'American', '2023-04-13 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'sankalpa', 'kavindu', 'sankalpa', 'sankalpa@gmail.com', '0761234567', 'e10adc3949ba59abbe56e057f20f883e', 'No:01,\r\nCentral Market,\r\nKandy.', 1, '2023-12-13 21:41:40'),
(8, 'rukmal', 'Rukmal', 'Madhuranga', 'rukmal@gmail.com', '0767654321', '670b14728ad9902aecba32e22fa4f6bd', 'No: 06,\r\nAdhikarigama,\r\nHanguranketha.', 1, '2023-12-14 19:02:58'),
(9, 'theekshana', 'Theekshana', 'Anuradha', 'theekshana@gmail.com', '0752222268', 'e10adc3949ba59abbe56e057f20f883e', 'No: 03,\r\nUdunuwara,\r\nKandy.', 1, '2023-12-16 09:33:49'),
(10, 'Lakmal ', 'Lakmal', 'Sandaruwan', 'lakmal@gmail.com', '0783437871', '7c88fc781a5cc1670b3373aa5a3ec694', 'Hanguranketha', 1, '2023-12-16 13:55:43'),
(11, 'wanushka', 'wanushka', 'lakmal', '9999wanu@gmail.com', '0789338799', '96c32de464b5922ca9dfd806f02b4e5e', 'homagama', 1, '2023-12-16 14:04:13'),
(12, 'pasindu', 'Pasindu', 'Sandeepa', 'pasindu@gmail.com', '0764654324', 'e10adc3949ba59abbe56e057f20f883e', 'No: 03,\r\nWeeraketiya.', 1, '2023-12-17 14:18:43'),
(13, 'ukd', 'kelum', 'chamikara', 'kalum@gmail.com', '0765275489', '25d55ad283aa400af464c76d713c07ad', 'Meegama,\r\n', 1, '2023-12-20 15:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(22, 7, 'California Style Pizza', 1, 2500.00, NULL, '2023-12-16 05:57:13'),
(23, 7, 'Biryani', 2, 1500.00, NULL, '2023-12-16 06:02:18'),
(24, 7, 'Masala Dosa', 1, 950.00, NULL, '2023-12-16 06:02:18'),
(25, 7, 'Chicken Madeira', 3, 2300.00, NULL, '2023-12-16 06:04:20'),
(26, 7, ' Buffalo Wings', 1, 2450.00, NULL, '2023-12-16 06:04:20'),
(27, 7, 'Root Beer', 2, 1300.00, NULL, '2023-12-16 06:04:20'),
(28, 7, 'Thandoori Chicken', 2, 1600.00, NULL, '2023-12-16 06:06:28'),
(29, 7, 'Biryani', 1, 1500.00, NULL, '2023-12-16 06:06:28'),
(30, 7, 'Masala Chai', 2, 350.00, NULL, '2023-12-16 06:06:28'),
(31, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-16 06:09:02'),
(32, 7, 'Chicken Madeira', 1, 2300.00, NULL, '2023-12-16 09:18:08'),
(33, 7, ' Buffalo Wings', 1, 2450.00, NULL, '2023-12-16 09:18:08'),
(34, 7, 'Neapolitan Style Pizza', 1, 2650.00, NULL, '2023-12-16 09:31:10'),
(36, 9, 'Lemon Grilled Chicken With Pasta', 4, 2500.00, NULL, '2023-12-16 09:34:29'),
(37, 9, 'Gorgonzola Burger', 1, 750.00, NULL, '2023-12-16 09:34:29'),
(38, 9, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-16 09:58:51'),
(39, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-16 10:17:13'),
(40, 7, 'Chicken Madeira', 1, 2300.00, NULL, '2023-12-16 10:22:32'),
(41, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-16 13:44:08'),
(42, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-16 13:47:35'),
(43, 10, ' Buffalo Wings', 1, 2450.00, NULL, '2023-12-16 14:00:00'),
(44, 10, 'Barbecue Pork Pizza', 1, 2900.00, NULL, '2023-12-16 14:00:00'),
(45, 10, 'Lassi', 2, 650.00, NULL, '2023-12-16 14:00:00'),
(46, 10, 'Gorgonzola Burger', 2, 750.00, NULL, '2023-12-23 18:41:43'),
(49, 7, 'California Style Pizza', 1, 2500.00, NULL, '2023-12-16 17:20:50'),
(50, 7, 'New York Style Pizza', 1, 2550.00, NULL, '2023-12-16 17:20:50'),
(51, 7, 'Signature Potato Twisters', 1, 1250.00, NULL, '2023-12-16 17:20:50'),
(52, 7, ' Buffalo Wings', 2, 2450.00, NULL, '2023-12-16 17:20:50'),
(53, 7, 'Meatballs Penne Pasta', 1, 1650.00, NULL, '2023-12-16 17:20:50'),
(54, 7, 'Chinotto', 1, 1550.00, NULL, '2023-12-16 17:20:50'),
(55, 7, 'Neapolitan Style Pizza', 1, 2650.00, NULL, '2023-12-16 17:20:50'),
(56, 7, 'Biryani', 3, 1500.00, NULL, '2023-12-16 17:20:50'),
(57, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-16 17:25:32'),
(58, 7, 'Masala Dosa', 1, 950.00, NULL, '2023-12-16 17:26:46'),
(59, 7, 'Neapolitan Style Pizza', 1, 2650.00, NULL, '2023-12-16 17:26:46'),
(60, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-16 17:27:48'),
(61, 7, 'Chicken Madeira', 1, 2300.00, NULL, '2023-12-16 17:28:03'),
(62, 7, 'Lassi', 1, 650.00, NULL, '2023-12-16 17:29:06'),
(63, 7, 'Masala Dosa', 1, 950.00, NULL, '2023-12-16 17:29:06'),
(64, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-16 17:36:45'),
(65, 7, 'Thandoori Chicken', 5, 1600.00, NULL, '2023-12-16 17:42:45'),
(66, 7, ' Buffalo Wings', 1, 2450.00, NULL, '2023-12-16 20:30:42'),
(67, 7, 'California Style Pizza', 1, 2500.00, NULL, '2023-12-16 20:30:42'),
(68, 7, 'New York Style Pizza', 1, 2550.00, NULL, '2023-12-16 20:30:42'),
(69, 7, 'Crispy Chicken Strips Bucket', 1, 1800.00, NULL, '2023-12-16 23:18:36'),
(70, 7, 'Lemon Grilled Chicken With Pasta', 2, 2500.00, NULL, '2023-12-16 23:48:53'),
(71, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-16 23:48:53'),
(72, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-17 14:15:08'),
(73, 7, 'Masala Dosa', 1, 950.00, NULL, '2023-12-17 14:15:08'),
(74, 7, 'Chicken Madeira', 1, 2300.00, NULL, '2023-12-17 14:17:00'),
(75, 12, 'Biryani', 1, 1500.00, NULL, '2023-12-17 14:21:06'),
(76, 7, 'Crispy Chicken Strips Bucket', 1, 1800.00, NULL, '2023-12-17 16:15:38'),
(77, 7, 'New York Style Pizza', 4, 2550.00, NULL, '2023-12-17 21:51:52'),
(78, 7, ' Buffalo Wings', 1, 2450.00, NULL, '2023-12-17 21:51:52'),
(79, 7, 'Root Beer', 8, 1300.00, NULL, '2023-12-17 21:51:52'),
(80, 7, 'Thandoori Chicken', 2, 1600.00, NULL, '2023-12-17 21:51:52'),
(81, 7, 'Biryani', 1, 1500.00, NULL, '2023-12-17 21:51:52'),
(82, 7, 'Cheesy Mashed Potato', 1, 2300.00, NULL, '2023-12-17 21:51:52'),
(83, 7, 'Gorgonzola Burger', 4, 750.00, NULL, '2023-12-17 21:51:52'),
(84, 7, 'Crispy Chicken Strips Bucket', 1, 1800.00, NULL, '2023-12-17 21:51:52'),
(85, 7, 'Prawn Crackers', 1, 1950.00, NULL, '2023-12-17 21:51:52'),
(86, 7, 'Barbecue Pork Pizza', 2, 2900.00, NULL, '2023-12-17 21:51:52'),
(87, 7, 'Spring Rolls', 8, 600.00, NULL, '2023-12-17 21:51:52'),
(88, 7, 'Manchurian Chicken', 1, 1800.00, NULL, '2023-12-17 21:51:52'),
(89, 7, 'Vegetable Fried Rice', 1, 1850.00, NULL, '2023-12-17 21:51:52'),
(90, 7, 'Signature Potato Twisters', 2, 1250.00, NULL, '2023-12-17 21:51:52'),
(91, 7, 'Pink Spaghetti Gamberoni', 1, 1850.00, NULL, '2023-12-19 17:27:47'),
(92, 7, 'Crispy Chicken Strips Bucket', 1, 1800.00, NULL, '2023-12-19 17:27:47'),
(93, 7, 'Lemon Grilled Chicken With Pasta', 1, 2500.00, NULL, '2023-12-19 17:27:47'),
(94, 13, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-20 15:39:53'),
(95, 7, 'Thandoori Chicken', 2, 1600.00, NULL, '2023-12-21 08:34:28'),
(96, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-23 18:41:00'),
(97, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-23 18:42:46'),
(98, 7, 'Chicken Madeira', 1, 2300.00, NULL, '2023-12-23 19:10:42'),
(99, 7, 'Thandoori Chicken', 1, 1600.00, NULL, '2023-12-24 07:01:55'),
(100, 7, 'Masala Dosa', 1, 950.00, NULL, '2023-12-24 07:01:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
