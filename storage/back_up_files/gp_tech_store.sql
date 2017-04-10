-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 11:12 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp_tech_store`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `categories_MainCategories_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'categories_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT categories.id, categories.name, categories.type, categories.parent_category, categories.image, categories.description
		FROM categories
        WHERE categories.status=1
        AND
        categories.type=1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categories_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'categories_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT categories.id, categories.name, categories.type, categories.parent_category, categories.image, categories.description
		FROM categories
        WHERE categories.status=1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categories_SubcategoriesByParentId_Retrieve`(IN `Parent_id` INT)
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'categories_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT categories.id, categories.name, categories.type, categories.parent_category, categories.image, categories.description
		FROM categories
        WHERE categories.parent_category=Parent_id
        AND
        categories.type=0;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `products_byID_Retrieve`(IN `product_id` INT)
    NO SQL
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'products_byID_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT products.id, products.name, products.price, products.image, products.short_description, products.long_description
		FROM products
        WHERE products.status=1
        AND
        products.id = product_id
        LIMIT 1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `products_featured_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'products_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT products.id, products.name, products.price, products.image
		FROM products
        WHERE products.status=1
        ORDER BY rand() LIMIT 10;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `products_onSale_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'products_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT products.id, products.name, products.price, products.image
		FROM products
        INNER JOIN product_sale
        ON products.id = product_sale.product_id
        WHERE products.status=1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `products_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'products_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT products.id, products.name, products.price, products.image
		FROM products
        WHERE products.status=1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sales_byID_Retrieve`(IN `sale_id` INT)
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'categories_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT sales.id, sales.name, sales.start_date, sales.end_date, sales.discount
		FROM sales
        WHERE sales.id=sale_id;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sales_Retrieve`()
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'categories_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT categories.id, categories.name, categories.type, categories.parent_category, categories.image, categories.description
		FROM categories
        WHERE categories.status=1;
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `shopping_carts_byCartID_Retrieve`(IN `cart_id` INT)
    NO SQL
    SQL SECURITY INVOKER
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        
		GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
 		@errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
        
        INSERT INTO db_errors (ERROR_NUMBER, STATE, TEXT, Procedure_or_Function_name)
		VALUES (@errno, @sqlstate, @text, 'shopping_carts_byCartID_Retrieve');
    
        RESIGNAL;
	END;
    
	START TRANSACTION;
    	SELECT shopping_carts.user_id, users.username, shopping_carts.product_id, products.name, shopping_carts.amount, products.price
		FROM shopping_carts
        INNER JOIN users
        ON shopping_carts.user_id = users.id
        INNER JOIN products
        ON shopping_carts.product_id = users.id
        WHERE shopping_carts.user_id = cart_id
        AND products.status=1;
    COMMIT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(134) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varbinary(50000) DEFAULT NULL,
  `cheked_notification_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `image`, `cheked_notification_at`) VALUES
(1, 'admin', 'admin@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 05:26:59'),
(2, 'techician', 'techician@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 08:51:41'),
(3, 'dataentry', 'dataentry@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 08:31:49'),
(4, 'techician2', 'techician2@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 10:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_activities`
--

CREATE TABLE IF NOT EXISTS `admin_activities` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE IF NOT EXISTS `admin_notification` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_current_products`
--
CREATE TABLE IF NOT EXISTS `all_current_products` (
`id` int(11)
,`name` varchar(100)
,`status` tinyint(1)
,`price` decimal(10,2)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`image` varchar(8000)
);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 is For main category , 0 is for subcategories',
  `parent_category` int(11) DEFAULT NULL,
  `image` varchar(8000) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `parent_category`, `image`, `description`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Watches', 1, NULL, NULL, NULL, 1, 1, '2016-10-04 12:11:03', 1, '2016-10-04 12:11:03'),
(2, 'Belts', 0, 1, NULL, NULL, 1, 1, '2016-10-04 12:11:03', 1, '2016-10-04 12:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card_details`
--

CREATE TABLE IF NOT EXISTS `credit_card_details` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_errors`
--

CREATE TABLE IF NOT EXISTS `db_errors` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ERROR_NUMBER` int(11) NOT NULL,
  `STATE` int(11) NOT NULL,
  `TEXT` varchar(8000) NOT NULL,
  `Procedure_or_Function_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_errors`
--

INSERT INTO `db_errors` (`id`, `date`, `ERROR_NUMBER`, `STATE`, `TEXT`, `Procedure_or_Function_name`) VALUES
(1, '2016-09-25 10:09:49', 1054, 42, 'Unknown column ''events.mom'' in ''field list''', 'procedure_practice'),
(2, '2016-09-25 10:09:58', 1054, 42, 'Unknown column ''events.mom'' in ''field list''', 'procedure_practice');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1 - active, 2 - deactived',
  `price` decimal(10,2) NOT NULL,
  `image` varchar(8000) DEFAULT NULL,
  `short_description` varchar(100) NOT NULL,
  `long_description` varchar(8000) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `price`, `image`, `short_description`, `long_description`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Test_Product_1', 1, '100.00', '7.jpg', 'This is a short description of the product', 'This is a long description of the product', 1, '2016-09-25 07:38:48', 1, '2016-09-25 07:38:48'),
(2, 'Test_Product_2', 2, '200.00', '8.jpg', '', '', 1, '2016-09-25 11:02:04', 1, '2016-09-25 11:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `products_with_attributes`
--

CREATE TABLE IF NOT EXISTS `products_with_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_with_attributes`
--

INSERT INTO `products_with_attributes` (`id`, `product_id`, `attribute_id`, `attribute_value`) VALUES
(1, 1, 1, 'Red'),
(2, 1, 2, '11 inchies');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 2 - deactived',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `description`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'color', 'The color of the item', 1, 1, '2016-10-30 09:37:43', 1, '2016-10-30 09:37:43'),
(2, 'size', 'The size of the item in general', 1, 1, '2016-10-30 10:13:30', 1, '2016-10-30 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_files`
--

CREATE TABLE IF NOT EXISTS `product_files` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE IF NOT EXISTS `product_sale` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`sale_id`, `product_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, '2016-10-16 18:51:51', 1, '2016-10-16 18:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_selections`
--

CREATE TABLE IF NOT EXISTS `product_selections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `status` tinyint(11) NOT NULL COMMENT '1 - active, 2 - deactived',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_selections`
--

INSERT INTO `product_selections` (`id`, `name`, `description`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'color', 'The color of the product', 1, 1, '2016-10-30 10:30:28', 1, '2016-10-30 10:30:28'),
(2, 'side', 'The general size of the product, remember to add units', 1, 1, '2016-10-30 10:31:46', 1, '2016-10-30 10:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_shipment_details`
--

CREATE TABLE IF NOT EXISTS `product_shipment_details` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` decimal(10,0) unsigned NOT NULL,
  `state` tinyint(4) NOT NULL COMMENT '1 - active, 2 - suspended, 3 - cancelled, 4 - pending, 5 - ended',
  `description` varchar(8000) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `name`, `product_id`, `start_date`, `end_date`, `discount`, `state`, `description`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Test sale', 1, '2016-10-07', '2016-10-07', '11', 1, 'Just testing the sale of this product', 1, '2016-10-07 13:49:00', 1, '2016-10-07 13:49:00'),
(2, 'Test sale 2', 1, '2016-10-16', '2016-10-16', '20', 1, '', 1, '2016-10-16 09:47:46', 1, '2016-10-16 09:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `selection_options`
--

CREATE TABLE IF NOT EXISTS `selection_options` (
  `id` int(11) NOT NULL,
  `product_select_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 2 - deactived',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selection_options`
--

INSERT INTO `selection_options` (`id`, `product_select_id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'Red', 1, 1, '2016-10-30 10:37:58', 1, '2016-10-30 10:37:58'),
(2, 1, 'Yellow', 1, 1, '2016-10-30 10:38:39', 1, '2016-10-30 10:38:39'),
(3, 2, 'Small', 1, 1, '2016-10-30 10:38:58', 1, '2016-10-30 10:38:58'),
(4, 2, 'medium', 2, 1, '2016-10-30 10:39:19', 1, '2016-10-30 10:39:19'),
(5, 2, 'Large', 1, 1, '2016-10-30 10:39:41', 1, '2016-10-30 10:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE IF NOT EXISTS `shipping_addresses` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE IF NOT EXISTS `shopping_carts` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`user_id`, `product_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2016-10-30 11:09:25', '2016-10-30 11:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_product_selection`
--

CREATE TABLE IF NOT EXISTS `shopping_cart_product_selection` (
  `shopping_cart_id` int(11) NOT NULL,
  `selelcted_id` int(11) NOT NULL,
  `selection_option_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart_product_selection`
--

INSERT INTO `shopping_cart_product_selection` (`shopping_cart_id`, `selelcted_id`, `selection_option_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2016-10-30 11:25:15', '2016-10-30 11:25:15'),
(1, 2, 5, '2016-10-30 11:27:48', '2016-10-30 11:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE IF NOT EXISTS `updates` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(134) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varbinary(50000) DEFAULT NULL,
  `cheked_notification_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `image`, `cheked_notification_at`) VALUES
(1, 'admin', 'admin@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 05:26:59'),
(2, 'techician', 'techician@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 08:51:41'),
(3, 'dataentry', 'dataentry@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 08:31:49'),
(4, 'techician2', 'techician2@tredlabs.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '2016-05-13 10:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE IF NOT EXISTS `user_activities` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_today`
--
CREATE TABLE IF NOT EXISTS `v_today` (
`today` date
);

-- --------------------------------------------------------

--
-- Table structure for table `website_banners`
--

CREATE TABLE IF NOT EXISTS `website_banners` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE IF NOT EXISTS `wishlist_items` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `all_current_products`
--
DROP TABLE IF EXISTS `all_current_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_current_products` AS select `products`.`id` AS `id`,`products`.`name` AS `name`,`products`.`status` AS `status`,`products`.`price` AS `price`,`products`.`created_by` AS `created_by`,`products`.`created_at` AS `created_at`,`products`.`updated_by` AS `updated_by`,`products`.`updated_at` AS `updated_at`,`products`.`image` AS `image` from `products`;

-- --------------------------------------------------------

--
-- Structure for view `v_today`
--
DROP TABLE IF EXISTS `v_today`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_today` AS select curdate() AS `today`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `admin_activities`
--
ALTER TABLE `admin_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_to_subcategory` (`parent_category`),
  ADD KEY `fk_category_creator` (`created_by`),
  ADD KEY `fk_category_updator` (`updated_by`);

--
-- Indexes for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_errors`
--
ALTER TABLE `db_errors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`) USING BTREE,
  ADD KEY `fk_product_updator` (`updated_by`);

--
-- Indexes for table `products_with_attributes`
--
ALTER TABLE `products_with_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_with_attributes_poduct_id` (`product_id`),
  ADD KEY `fk_products_with_attributes_attribute_id` (`attribute_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_attribute_creator` (`created_by`),
  ADD KEY `fk_attribute_updator` (`updated_by`);

--
-- Indexes for table `product_files`
--
ALTER TABLE `product_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`sale_id`,`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `fk_product_sale_creator` (`created_by`),
  ADD KEY `fk_product_sale_updator` (`updated_by`);

--
-- Indexes for table `product_selections`
--
ALTER TABLE `product_selections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_selections_creator` (`created_by`),
  ADD KEY `fk_product_selections_updator` (`updated_by`);

--
-- Indexes for table `product_shipment_details`
--
ALTER TABLE `product_shipment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sale_creator` (`created_by`),
  ADD KEY `fk_sale_updator` (`updated_by`),
  ADD KEY `fk_sale_product` (`product_id`);

--
-- Indexes for table `selection_options`
--
ALTER TABLE `selection_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_selection_options_creator` (`created_by`),
  ADD KEY `fk_selection_options_updator` (`updated_by`),
  ADD KEY `fk_product_selection_id` (`product_select_id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_shopping_carts_product` (`product_id`);

--
-- Indexes for table `shopping_cart_product_selection`
--
ALTER TABLE `shopping_cart_product_selection`
  ADD PRIMARY KEY (`shopping_cart_id`,`selelcted_id`,`selection_option_id`),
  ADD KEY `fk_shopping_cart_product_selection_selelcted_id` (`selelcted_id`),
  ADD KEY `fk_shopping_cart_product_selection_selection_option_id` (`selection_option_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_banners`
--
ALTER TABLE `website_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_activities`
--
ALTER TABLE `admin_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_errors`
--
ALTER TABLE `db_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_with_attributes`
--
ALTER TABLE `products_with_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_files`
--
ALTER TABLE `product_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_selections`
--
ALTER TABLE `product_selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_shipment_details`
--
ALTER TABLE `product_shipment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `selection_options`
--
ALTER TABLE `selection_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `website_banners`
--
ALTER TABLE `website_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_category_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_category_to_subcategory` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_category_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_product_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `products_with_attributes`
--
ALTER TABLE `products_with_attributes`
  ADD CONSTRAINT `fk_products_with_attributes_attribute_id` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`),
  ADD CONSTRAINT `fk_products_with_attributes_poduct_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `fk_attribute_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_attribute_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD CONSTRAINT `fk_product_sale_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_product_sale_productDetails` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_product_sale_saleDetails` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `fk_product_sale_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `product_selections`
--
ALTER TABLE `product_selections`
  ADD CONSTRAINT `fk_product_selections_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_product_selections_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_sale_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_sale_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `selection_options`
--
ALTER TABLE `selection_options`
  ADD CONSTRAINT `fk_product_selection_id` FOREIGN KEY (`product_select_id`) REFERENCES `product_selections` (`id`),
  ADD CONSTRAINT `fk_selection_options_creator` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_selection_options_updator` FOREIGN KEY (`updated_by`) REFERENCES `admin` (`id`);

--
-- Constraints for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `fk_shopping_carts_item_owner` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_shopping_carts_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `shopping_cart_product_selection`
--
ALTER TABLE `shopping_cart_product_selection`
  ADD CONSTRAINT `fk_shopping_cart_product_selection_selection_option_id` FOREIGN KEY (`selection_option_id`) REFERENCES `selection_options` (`id`),
  ADD CONSTRAINT `fk_shopping_cart_product_selection_selelcted_id` FOREIGN KEY (`selelcted_id`) REFERENCES `product_selections` (`id`),
  ADD CONSTRAINT `fk_shopping_cart_product_selection_shopping_cart_id` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_carts` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
