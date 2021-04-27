-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema btm 495
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `btm 495` ;

-- -----------------------------------------------------
-- Schema btm 495
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `btm 495` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `btm 495` ;

-- -----------------------------------------------------
-- Table `btm 495`.`claim`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `btm 495`.`claim` ;

CREATE TABLE IF NOT EXISTS `btm 495`.`claim` (
  `Claim_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Claim_Amount` DOUBLE NOT NULL,
  `Claim_Status` VARCHAR(45) NOT NULL DEFAULT 'Submitted',
  `Claim_Deduction_Code` VARCHAR(10) NOT NULL,
  `Claim_Date` DATE NOT NULL,
  `Order_ID` INT(11) NOT NULL,
  `Claim_Description` VARCHAR(150) NOT NULL,
  `Claim_Notes` VARCHAR(150) NULL,
  PRIMARY KEY (`Claim_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 131
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `btm 495`.`claim_deduction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `btm 495`.`claim_deduction` ;

CREATE TABLE IF NOT EXISTS `btm 495`.`claim_deduction` (
  `Deduction_Code` VARCHAR(10) NOT NULL,
  `Deduction_Type` INT(11) NOT NULL,
  `Deduction_Description` VARCHAR(150) NOT NULL,
  `Order_Documents` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Deduction_Code`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `btm 495`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `btm 495`.`customer` ;

CREATE TABLE IF NOT EXISTS `btm 495`.`customer` (
  `Cust_ID` INT(11) NOT NULL,
  `Cust_name` VARCHAR(45) NOT NULL,
  `Cust_email` VARCHAR(45) NOT NULL,
  `Cust_phone` INT(11) NOT NULL,
  PRIMARY KEY (`Cust_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `btm 495`.`claim`
-- -----------------------------------------------------
START TRANSACTION;
USE `btm 495`;
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (120, 100, 'Denied', 'HQFIEHJJZZ', '2019-02-10', 3306, 'The customer believs he is missing 10 products.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (121, 125.67, 'Resolved', 'BO0QDDF34H', '2019-04-22', 3370, 'The customer belives his prodcuts were delivered damaged and/or defective.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (122, 136, 'Disputed', 'EBL0NBSCQP', '2019-09-17', 3385, 'The customer beleives his discount code was for $200 but he received only $74.33.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (123, 60.39, 'Submitted', 'O1TMJSQE4Z', '2019-11-03', 3397, 'The customer believes he is missing 5 products.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (124, 1267.69, 'Submitted', 'DJYLIHH2UQ', '2020-01-05', 3407, 'The customer believes all the products he recieved are deffective and missing parts.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (125, 15.69, 'Submitted', 'SM8LONFBL9', '2020-05-28', 3420, 'The customer does not belive they did not recieve the necessary discount.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (126, 1430.22, 'Disputed', '635S5GEQ6Y', '2020-10-02', 3469, 'The customer believs he is missing 14 products.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (127, 36, 'Submitted', 'C1GY7889CF', '2021-02-10', 3498, 'The customer believs he recieved the wrong products.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (128, 159.55, 'Resolved', '8ABE4OLZA7', '2021-03-12', 3520, 'The customer does not belive they did not recieve the necessary discount.');
INSERT INTO `btm 495`.`claim` (`Claim_ID`, `Claim_Amount`, `Claim_Status`, `Claim_Deduction_Code`, `Claim_Date`, `Order_ID`, `Claim_Description`) VALUES (129, 39, 'Submitted', 'EAGN3U4ASA', '2021-03-23', 3589, 'The customer beleives he didn\'t receive all the products he ordered.');

COMMIT;


-- -----------------------------------------------------
-- Data for table `btm 495`.`claim_deduction`
-- -----------------------------------------------------
START TRANSACTION;
USE `btm 495`;
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('HQFIEHJJZZ', 1201, 'Short Shipment', 'Bill of Lading');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('BO0QDDF34H', 1202, 'Defective Product', 'Packing Slip');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('EBL0NBSCQP', 1203, 'Sales Discount', 'Sales Allocation');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('O1TMJSQE4Z', 1201, 'Short Shipment', 'Bill of Lading');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('DJYLIHH2UQ', 1202, 'Defective Product', 'Packing Slip');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('SM8LONFBL9', 1203, 'Sales Discount', 'Sales Allocation');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('635S5GEQ6Y', 1201, 'Short Shipment', 'Bill of Lading');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('C1GY7889CF', 1202, 'Defective Product', 'Packing Slip');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('8ABE4OLZA7', 1203, 'Sales Discount', 'Sales Allocation');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('EAGN3U4ASA', 1201, 'Short Shipment', 'Bill of Lading');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('3OSX91OUOJ', 1202, 'Defective Product', 'Packing Slip');
INSERT INTO `btm 495`.`claim_deduction` (`Deduction_Code`, `Deduction_Type`, `Deduction_Description`, `Order_Documents`) VALUES ('Z071A6D4WC', 1203, 'Sales Discount', 'Sales Allocation');

COMMIT;


