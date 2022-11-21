-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foodboxapp
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'afasa','Canada','Alberta','afasa','19111'),(2,'afasa','Canada','Alberta','afasa','19111'),(3,'aligarh','india','up','1','202001'),(4,'lucknow','india','up','1','226004'),(5,'delhi','india','Delhi','1','225414'),(6,'Delhi','india','Delhi','1','202001');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ali','Khan','AliKhan@yahoo.com'),(2,'Asad','Abbas','AsadAbbas@gmail.com'),(3,'Suresh','Kumar','KumarSuresh@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_category`
--

DROP TABLE IF EXISTS `food_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_category`
--

LOCK TABLES `food_category` WRITE;
/*!40000 ALTER TABLE `food_category` DISABLE KEYS */;
INSERT INTO `food_category` VALUES (1,'Indian Cuisine'),(2,'Italian cuisine'),(3,'Chinese cuisine');
/*!40000 ALTER TABLE `food_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2e8e5wqwj36e3u6crfjphyhgq` (`category_id`),
  CONSTRAINT `FK2e8e5wqwj36e3u6crfjphyhgq` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_items`
--

LOCK TABLES `food_items` WRITE;
/*!40000 ALTER TABLE `food_items` DISABLE KEYS */;
INSERT INTO `food_items` VALUES (1,_binary '\0','2022-07-25 00:00:00.000000','Delicious food ','../assets/images/pasta.jpg','Pasta',2.00,1),(2,_binary '\0','2022-07-25 00:00:00.000000','Delicious food ','../assets/images/burger and fries.jpg','burger and fries',2.00,1),(3,_binary '\0','2022-07-28 00:00:00.000000','Delicious food ','../assets/images/Aloo Paratha.jpg','Aloo Paratha',1.00,1),(4,_binary '\0','2022-07-28 00:00:00.000000','Delicious food ','../assets/images/Chicken Soup.jpg','Chicken Soup',3.00,1),(5,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Aloo gobi.jpg','Aloo gobi',5.00,1),(6,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Butter chicken.jpg','Butter Chicken',8.00,1),(7,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Chana masala.jpg','Chana Masala',6.00,1),(8,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Palak paneer.jpg','Palak Paneer',7.00,1),(9,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Chicken tikka masala.jpg','Chicken Tikka Masala',9.00,1),(10,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Fish curry.jpg','Fish Curry',11.00,1),(11,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Dal makhani.jpg','Dal makhani',7.00,1),(12,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Biryani.jpg','Biryani',7.00,1),(13,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Kofta.jpg','Kofta',7.00,1),(14,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Kabab.jpg','Kabab',7.00,1),(15,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Korma.jpg','Korma',7.00,1),(16,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Dosa.jpg','Dosa',7.00,1),(17,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Tawa chicken.jpg','Tawa Chicken ',7.00,1),(18,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Chicken jwalamukhi.jpg','Chicken Jwalamukhi',10.00,1),(19,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Shahi paneer.jpg','Shahi Paneer',8.50,1),(20,_binary '\0','2022-07-28 00:00:00.000000','Perfectly cooked dish with Indian Masala and flavours ','../assets/images/Chicken tandoori.jpg','Chicken Tandoori',12.00,1),(21,_binary '\0','2022-07-28 00:00:00.000000','Nothing like a fresh tomato salad in summers! A great antipasto bite to start your meal with ','../assets/images/Caprese Salad with Pesto Sauce.jpg','Caprese Salad with Pesto Sauce',12.00,2),(22,_binary '\0','2022-07-28 00:00:00.000000','Panzenella is a Tuscan bread salad, ideal for summer. It does not follow a particular recipe, but the two ingredients that do not change are tomatoes and bread','../assets/images/Panzenella.jpg','Panzenella',12.00,2),(23,_binary '\0','2022-07-28 00:00:00.000000','bruschetta has grilled bread topped with veggies, rubbed garlic and tomato mix. A country bread sliced and topped with different toppings','../assets/images/Bruschetta.jpg','Bruschetta',10.00,2),(24,_binary '\0','2022-07-28 00:00:00.000000','Fresh dough is topped with caramelized onions, olives, tomato slices, basil leaves, grated parmesan cheese and baked delicious!','../assets/images/Focaccia Bread.jpg','Focaccia Bread',10.00,2),(25,_binary '\0','2022-07-28 00:00:00.000000','pasta popular with the coal miners. The original recipe calls for guanciale','../assets/images/Pasta Carbonara.jpg','Pasta Carbonara',13.00,2),(26,_binary '\0','2022-07-28 00:00:00.000000','A plateful of buttery risotto with the goodness of mushrooms. A healthy bowl of mushroom risotto has benefits more than you can think. A great source of protein, powerful antioxidant and even has cancer-fighting properties','../assets/images/Mashroom Risotto.jpg','Mashroom Risotto',13.00,2),(27,_binary '\0','2022-07-28 00:00:00.000000','The delightful tiramisu recipe with sponge fingers soaked in coffee, layered around and smeared with a creamy mascarpone mixture.','../assets/images/Tiramisu.jpg',' Tiramisu',9.50,2),(28,_binary '\0','2022-07-28 00:00:00.000000','home made bolognese sauce and this bacon and lamb lasagna boasts of a delicious one! Loaded with parmesan cheese and layered with a mix of vegetables, bacon strips and minced lamb, this lasagna recipe is nothing short of perfect.','../assets/images/Lasagna.jpg',' Lasagna',10.50,2),(29,_binary '\0','2022-07-28 00:00:00.000000','A light, quick and easy pasta recipe, Fettuccine Pomodoro is a delicious dish for breakfast, brunch or kid\'s tiffin!','../assets/images/Fettuccine Pomodoro.jpg','Fettuccine Pomodoro',8.50,2),(30,_binary '\0','2022-07-28 00:00:00.000000','An easy Italian tomato sauce, flavoured with crispy pancetta, sauteed onion and garlic, All\'amatriciana is one of the most classical Italian pasta sauces.','../assets/images/Classic Pasta Amatriciana.jpg','Classic Pasta Amatriciana',12.50,2),(31,_binary '\0','2022-07-28 00:00:00.000000','One of the most loves street food from the north east, widely popular across northern India now comes to your kitchen! Small bite-sized rounds stuffed with veggies or meat. Dimsums are perfect steamed snack to delight those evening cravings.','../assets/images/Dim Sum.jpg','Dim Sum',10.00,3),(32,_binary '\0','2022-07-28 00:00:00.000000','A fiery delight straight from the Sichuan region. It is loaded with pungent spices like brown pepper. red chillies, ginger, green chillies and white pepper.','../assets/images/Szechwan Chilli Chicken.jpg','Szechwan Chilli Chicken',14.50,3),(33,_binary '\0','2022-07-28 00:00:00.000000','A crisp appetizer where shredded veggies are encased in thin sheets and then fried golden. Little munchies to prepare at home for a high tea menu or just a party starter, serve with a tangy dip.','../assets/images/Spring Rolls.jpg','Spring Rolls',8.00,3),(34,_binary '\0','2022-07-28 00:00:00.000000','A simple stir-fry with tofu and oriental sauces. Sti fried togu with rice is a great main course dish to prepare at home laced with flavourful spices and sauces. Serve with some fried rice to make a wholesome meal.','../assets/images/Stir Fried Tofu with Rice.jpg','Stir Fried Tofu with Rice',11.50,3),(35,_binary '\0','2022-07-28 00:00:00.000000','A healthy frice recipe packed with the goodness of mushrooms and water chestnuts that are often used in Chinese meals. Here is a delicious fried rice recipe dish that is fast, filling and flavourful. You can serve with a gravy dish of hot garlic sauce.','../assets/images/Shitake Fried Rice with Water Chestnuts.jpg','Shitake Fried Rice with Water Chestnuts',13.50,3),(36,_binary '\0','2022-07-28 00:00:00.000000','The quintessential Indo-Chinese snack! Honey chilli potato is what you\'ll find at every Chinese van in and around north India. It has the perfect balance of sweet and spicy with sliced potatoes tossed with a host of sauces and spices.','../assets/images/Honey Chilli Potato.jpg','Honey Chilli Potato',13.50,3);
/*!40000 ALTER TABLE `food_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `food_items_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `K_order_id` (`order_id`),
  KEY `FK_food_items_id` (`food_items_id`),
  CONSTRAINT `FK_food_items_id` FOREIGN KEY (`food_items_id`) REFERENCES `food_items` (`id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,'assets/images/pasta.jpg',1,2.00,1,1),(2,'assets/images/burger and fries.jpg',1,2.00,1,2),(3,'../assets/images/Mashroom Risotto.jpg',1,13.00,2,NULL),(4,'../assets/images/Butter chicken.jpg',1,8.00,2,NULL),(5,'../assets/images/Shitake Fried Rice with Water Chestnuts.jpg',2,13.50,2,NULL),(6,'../assets/images/Chicken jwalamukhi.jpg',1,10.00,3,18);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_tracking_number` varchar(255) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `billing_address_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_billing_address_id` (`billing_address_id`),
  UNIQUE KEY `UK_shipping_address_id` (`shipping_address_id`),
  KEY `K_customer_id` (`customer_id`),
  CONSTRAINT `FK_billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_shipping_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'0b291f0e-47a4-4275-ac00-339d03f93b3e',4.00,2,1,1,2,NULL,'2022-08-11 08:13:27.695000','2022-08-11 08:13:27.695000'),(2,'7357f7bb-2440-4ac8-83a2-8feb7a1271d8',48.00,4,3,2,4,NULL,'2022-08-11 09:12:06.173000','2022-08-11 09:12:06.173000'),(3,'5ee26c09-7097-4adf-bf87-975a9564b952',10.00,1,5,3,6,NULL,'2022-08-11 09:28:53.393000','2022-08-11 09:28:53.393000');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-13 10:56:10
