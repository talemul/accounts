-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2020 at 11:59 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_demoerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`) VALUES
(1, 'user', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `agentinfo`
--

CREATE TABLE `agentinfo` (
  `agentinfoId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `grouporsingle` varchar(20) NOT NULL,
  `groupleaderId` varchar(1) NOT NULL,
  `groupleaderName` varchar(200) NOT NULL,
  `smsuser` varchar(1) NOT NULL,
  `agentinfoName` varchar(100) NOT NULL,
  `spouseName` varchar(200) NOT NULL,
  `agentPresent` varchar(255) NOT NULL,
  `agentMobile` varchar(100) NOT NULL,
  `agentEmail` varchar(255) NOT NULL,
  `nid` varchar(100) DEFAULT NULL,
  `passportNo` varchar(20) NOT NULL,
  `passportExpiry` date NOT NULL,
  `birthcertificateNo` int(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `district` int(11) NOT NULL,
  `districtname` varchar(100) NOT NULL,
  `thana` int(11) NOT NULL,
  `thananame` varchar(100) NOT NULL,
  `files` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentinfo`
--

INSERT INTO `agentinfo` (`agentinfoId`, `chartofaccountID`, `grouporsingle`, `groupleaderId`, `groupleaderName`, `smsuser`, `agentinfoName`, `spouseName`, `agentPresent`, `agentMobile`, `agentEmail`, `nid`, `passportNo`, `passportExpiry`, `birthcertificateNo`, `gender`, `district`, `districtname`, `thana`, `thananame`, `files`) VALUES
(4, 101001, '', '', '', '', 'Sworana Rice Agency', '', '', '8888+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(5, 101002, '', '', '', '', 'Rajshahi Co-operatives', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(6, 101003, '', '', '', '', 'Bengal corporation', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(7, 101004, '', '', '', '', 'Alal Traders ', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(8, 101005, '', '', '', '', 'Rahim Traders ', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(9, 101006, '', '', '', '', 'Belal Traders', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(10, 101007, '', '', '', '', 'Ajmeri Agro Foods ', '', '', '88+880100000', '', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', ''),
(11, 101008, '', '', '', '', 'Hossain Rice traders', '', 'Dinajpur', '+8801831563999', 'livesycorax@gmail.com', NULL, '', '0000-00-00', 0, '', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bankid` int(10) NOT NULL,
  `bankname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bankid`, `bankname`) VALUES
(1, 'AB Bank LTD'),
(2, 'Agrani Bank LTD'),
(3, 'Al-Arafah Islami Bank LTD'),
(4, 'Bangladesh Commerce Bank LTD'),
(5, 'Bangladesh Development Bank LTD'),
(6, 'Bangladesh Krishibank LTD'),
(7, 'Bank Alfalah'),
(8, 'Bank Asia LTD'),
(9, 'BRAC Bank LTD'),
(10, 'Citibank N.A.'),
(11, 'City Bank'),
(12, 'Commercial Bank of Ceylon'),
(13, 'Dutch-Bangla Bank LTD'),
(14, 'Eastern Bank LTD'),
(15, 'EXIM Bank LTD'),
(16, 'First Security Islami Bank LTD'),
(17, 'Habib Bank LTD'),
(18, 'HSBC Bank'),
(19, 'ICB Islamic Bank LTD'),
(20, 'ICICI Bank'),
(21, 'IFIC Bank LTD'),
(22, 'Islami Bank Bangladesh LTD'),
(23, 'Jamuna Bank LTD'),
(24, 'Janata Bank'),
(25, 'Meghna Bank Limited'),
(26, 'Mercantile Bank LTD'),
(27, 'Midland Bank LTD'),
(28, 'Modhumoti Bank LTD'),
(29, 'Mutual Trust Bank LTD'),
(30, 'National Bank LTD'),
(31, 'National Bank of Pakistan'),
(32, 'National Credit and Commerce Bank'),
(33, 'NRB Bank LTD'),
(34, 'NRB Commercial Bank Ltd'),
(35, 'NRB Global Bank LTD'),
(36, 'One Bank LTD'),
(37, 'Premier Bank'),
(38, 'Prime Bank LTD'),
(39, 'Pubali Bank LTD'),
(40, 'Rupali Bank'),
(41, 'SBAC Bank LTD'),
(42, 'Shahjalal Islami Bank LTD'),
(43, 'Social Islami Bank LTD'),
(44, 'Sonali Bank LTD'),
(45, 'Southeast Bank LTD'),
(46, 'Standard Bank LTD'),
(47, 'Standard Chartered Bank LTD'),
(48, 'State Bank Of India'),
(49, 'The City Bank LTD'),
(50, 'Trust Bank LTD'),
(51, 'Union Bank LTD'),
(52, 'United Commercial Bank LTD'),
(53, 'Uttara Bank LTD'),
(54, 'Woori Bank');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount`
--

CREATE TABLE `chartofaccount` (
  `chartofaccountID` int(11) NOT NULL,
  `parentAccount` int(11) NOT NULL,
  `tire` tinyint(4) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `isposting` tinyint(4) NOT NULL,
  `chartofaccountName` varchar(100) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `accountID` varchar(100) DEFAULT NULL,
  `description` text,
  `origin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount`
--

INSERT INTO `chartofaccount` (`chartofaccountID`, `parentAccount`, `tire`, `active`, `isposting`, `chartofaccountName`, `currency`, `accountID`, `description`, `origin`) VALUES
(1, 1, 1, 1, 0, 'Asset', NULL, NULL, NULL, 'Asset'),
(2, 2, 1, 1, 0, 'Liability', NULL, NULL, NULL, 'Liability'),
(3, 3, 1, 1, 0, 'Expenses', NULL, NULL, NULL, 'Expenses'),
(4, 4, 1, 1, 0, 'Income', NULL, NULL, NULL, 'Income'),
(5, 5, 1, 1, 0, 'Equity', NULL, NULL, NULL, 'Equity'),
(101, 1, 2, 1, 0, 'Account Receivable', 'BDT', NULL, '', 'Asset>Account Receivable'),
(102, 1, 2, 1, 0, 'Current Asset', 'BDT', NULL, '', 'Asset>Current Asset'),
(103, 1, 2, 1, 0, 'Investment', 'BDT', NULL, '', 'Asset>Investment'),
(104, 1, 2, 1, 0, 'Intensible Asset', 'BDT', NULL, '', 'Asset>Intensible Asset'),
(105, 1, 2, 1, 0, 'Non-Current Asset', 'BDT', NULL, '', 'Asset>Non-Current Asset'),
(106, 1, 2, 1, 0, 'Closing Stock ', 'BDT', NULL, '', 'Asset>Closing Stock '),
(107, 1, 2, 1, 1, 'Test account', 'bd', NULL, 'Test account description', 'Asset>Test account'),
(201, 2, 2, 1, 0, 'Account Payable', 'BDT', NULL, '', 'Liability>Account Payable'),
(202, 2, 2, 1, 0, 'Current Liabilities', 'BDT', NULL, '', 'Liability>Current Liabilities'),
(203, 2, 2, 1, 0, 'Loan', 'BDT', NULL, '', 'Liability>Loan'),
(301, 3, 2, 1, 0, 'Administrative Expenses', 'BDT', NULL, 'Administrative Expenses', 'Expenses>Administrative Expenses'),
(302, 3, 2, 1, 0, 'Purchase', 'BDT', NULL, 'Purchase', 'Expenses>Purchase'),
(303, 3, 2, 1, 0, 'Purchase Account', 'BDT', NULL, '', 'Expenses>Purchase Account'),
(305, 3, 2, 1, 0, 'Operating Expenses', '', NULL, '', 'Expenses>Operating Expenses'),
(401, 4, 2, 1, 0, 'Income', 'BDT', NULL, '', 'Income>Income'),
(402, 4, 2, 1, 0, 'Sales', 'BDT', NULL, '', 'Income>Sales'),
(403, 4, 2, 1, 0, 'Revenue', 'BDT', NULL, '', 'Income>Revenue'),
(404, 4, 2, 1, 0, 'Sales Account ', '', NULL, '', 'Income>Sales Account '),
(501, 5, 2, 1, 0, 'Soft Equity', 'BDT', NULL, '', 'Equity>Soft Equity'),
(10201, 102, 3, 1, 1, 'Cash at Bank', 'BDT', NULL, '', 'Asset>Current Asset>Cash at Bank'),
(10202, 102, 3, 1, 1, 'Cash in Hand', 'BDT', NULL, '', 'Asset>Current Asset>Cash in Hand'),
(10203, 102, 3, 1, 1, 'Petty Cash', 'BDT', NULL, '', 'Asset>Current Asset>Petty Cash'),
(10204, 102, 3, 1, 1, 'Advance Salary & Wages', 'BDT', NULL, '', 'Asset>Current Asset>Advance Salary & Wages'),
(10205, 102, 3, 1, 1, 'Closing Stock', 'BDT', NULL, '', 'Asset>Current Asset>Closing Stock'),
(10206, 102, 3, 1, 1, 'Tax Deducted Receivable', 'BDT', NULL, '', 'Asset>Current Asset>Tax Deducted Receivable'),
(10301, 103, 3, 1, 1, 'New Investment', 'BDT', NULL, '', 'Asset>Investment>New Investment'),
(10401, 104, 3, 1, 1, 'Trade', 'BDT', NULL, '', 'Asset>Intensible Asset>Trade'),
(10402, 104, 3, 1, 1, 'Goodwill', 'BDT', NULL, '', 'Asset>Intensible Asset>Goodwill'),
(10403, 104, 3, 1, 1, 'Computer Software', 'BDT', NULL, '', 'Asset>Intensible Asset>Computer Software'),
(10501, 105, 3, 1, 1, 'Property & Land', 'BDT', NULL, '', 'Asset>Non-Current Asset>Property & Land'),
(10502, 105, 3, 1, 1, 'Furniture', 'BDT', NULL, '', 'Asset>Non-Current Asset>Furniture'),
(10503, 105, 3, 1, 1, 'Equipment', 'BDT', NULL, '', 'Asset>Non-Current Asset>Equipment'),
(10504, 105, 3, 1, 1, 'Electrical Equipments', 'BDT', NULL, '', 'Asset>Non-Current Asset>Electrical Equipments'),
(10601, 106, 3, 1, 1, 'General Items', 'BDT', NULL, '', 'Asset>Closing Stock >General Items'),
(10602, 106, 3, 1, 1, 'Raw Materials', 'BDT', NULL, '', 'Asset>Closing Stock >Raw Materials'),
(10603, 106, 3, 1, 1, 'Finish Goods', 'BDT', NULL, '', 'Asset>Closing Stock >Finish Goods'),
(10604, 106, 3, 1, 0, 'Spare parts ', '', NULL, '', 'Asset>Closing Stock >Spare parts '),
(10701, 107, 3, 1, 0, 'Test account child', 'bd', NULL, 'Test account child des', 'Asset>Test account>Test account child'),
(20101, 201, 3, 1, 1, 'Jessore Traders ', 'BDT', NULL, NULL, 'Liability>Account Payable>Jessore Traders '),
(20102, 201, 3, 1, 1, 'Abdullah Traders', 'BDT', NULL, NULL, 'Liability>Account Payable>Abdullah Traders'),
(20103, 201, 3, 1, 1, 'Parya Trading Corporation', 'BDT', NULL, NULL, 'Liability>Account Payable>Parya Trading Corporation'),
(20104, 201, 3, 1, 1, 'Zaman Enterprise ', 'BDT', NULL, NULL, 'Liability>Account Payable>Zaman Enterprise '),
(20105, 201, 3, 1, 1, 'Sharif Enterprise', 'BDT', NULL, NULL, 'Liability>Account Payable>Sharif Enterprise'),
(20106, 201, 3, 1, 1, 'JK Traders', 'BDT', NULL, NULL, 'Liability>Account Payable>JK Traders'),
(20107, 201, 3, 1, 1, 'Faridpur Jute Trades', 'BDT', NULL, NULL, 'Liability>Account Payable>Faridpur Jute Trades'),
(20108, 201, 3, 1, 1, 'General Supplier', 'BDT', NULL, NULL, 'Liability>Account Payable>General Supplier'),
(20109, 201, 3, 1, 1, 'JP MACHINERY', 'BDT', NULL, NULL, 'Liability>Account Payable>JP MACHINERY'),
(20201, 202, 3, 1, 1, 'Bank Overdraft', 'BDT', NULL, '', 'Liability>Current Liabilities>Bank Overdraft'),
(20202, 202, 3, 1, 1, 'Accrued Salary & Wages', 'BDT', NULL, '', 'Liability>Current Liabilities>Accrued Salary & Wages'),
(20203, 202, 3, 1, 1, 'Accrued Other Payables', 'BDT', NULL, '', 'Liability>Current Liabilities>Accrued Other Payables'),
(20204, 202, 3, 1, 1, 'Tax Deducted Payble', 'BDT', NULL, '', 'Liability>Current Liabilities>Tax Deducted Payble'),
(20301, 203, 3, 1, 1, 'SOD (WO) ME-1', 'BDT', NULL, 'Loan account', 'Liability>Loan>SOD (WO) ME-1'),
(20302, 203, 3, 1, 1, 'SOD (WO) ME-2', 'BDT', NULL, 'Loan account -2', 'Liability>Loan>SOD (WO) ME-2'),
(20303, 203, 3, 1, 1, 'car loan - dhaka -kha-25', 'BDT', NULL, '', 'Liability>Loan>car loan - dhaka -kha-25'),
(30101, 301, 3, 1, 1, 'Salaries And Bonus', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Salaries And Bonus'),
(30102, 301, 3, 1, 1, 'Telephone bill', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Telephone bill'),
(30103, 301, 3, 1, 1, 'Depreciation', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Depreciation'),
(30104, 301, 3, 1, 1, 'Conveyance', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Conveyance'),
(30105, 301, 3, 1, 1, 'Stationary', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Stationary'),
(30106, 301, 3, 1, 1, 'Entertainment', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Entertainment'),
(30107, 301, 3, 1, 1, 'Newspaper bill', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Newspaper bill'),
(30108, 301, 3, 1, 1, 'Bank Charges', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Bank Charges'),
(30109, 301, 3, 1, 1, 'Miscellanious', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Miscellanious'),
(30110, 301, 3, 1, 1, 'Internet Bill', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Internet Bill'),
(30111, 301, 3, 1, 1, 'Mobile Bill', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Mobile Bill'),
(30112, 301, 3, 1, 1, ' Bkash Charge', 'BDT', NULL, '', 'Expenses>Administrative Expenses> Bkash Charge'),
(30113, 301, 3, 1, 1, 'Hardware', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Hardware'),
(30114, 301, 3, 1, 1, 'Office expenses', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Office expenses'),
(30115, 301, 3, 1, 1, 'Photocopy', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Photocopy'),
(30116, 301, 3, 1, 1, 'Rehab', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Rehab'),
(30117, 301, 3, 1, 1, 'DCCI Renewal fee', 'BDT', NULL, '', 'Expenses>Administrative Expenses>DCCI Renewal fee'),
(30118, 301, 3, 1, 1, ' Repair', 'BDT', NULL, '', 'Expenses>Administrative Expenses> Repair'),
(30119, 301, 3, 1, 1, 'House Rent', 'BDT', NULL, '', 'Expenses>Administrative Expenses>House Rent'),
(30120, 301, 3, 1, 1, 'VAT', 'BDT', NULL, '', 'Expenses>Administrative Expenses>VAT'),
(30121, 301, 3, 1, 1, 'Wages', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Wages'),
(30122, 301, 3, 1, 1, 'Tips', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Tips'),
(30123, 301, 3, 1, 1, 'Tax', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Tax'),
(30124, 301, 3, 1, 1, 'Waste Bill', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Waste Bill'),
(30125, 301, 3, 1, 1, 'Miscellaneous', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Miscellaneous'),
(30126, 301, 3, 1, 1, 'Site Exp', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Site Exp'),
(30127, 301, 3, 1, 1, 'Office Rent', 'BDT', NULL, '', 'Expenses>Administrative Expenses>Office Rent'),
(30301, 303, 3, 1, 1, 'All Purchase', 'BDT', NULL, '', 'Expenses>Purchase Account>All Purchase'),
(30302, 303, 3, 1, 1, 'Discount on Sales', 'BDT', NULL, '', 'Expenses>Purchase Account>Discount on Sales'),
(30303, 303, 3, 1, 1, 'Discount Given', 'BDT', NULL, '', 'Expenses>Purchase Account>Discount Given'),
(30304, 303, 3, 1, 1, 'Purchase Return', 'BDT', NULL, '', 'Expenses>Purchase Account>Purchase Return'),
(30501, 305, 3, 1, 1, 'Computer Maintenance', 'BDT', NULL, '', 'Expenses>Operating Expenses>Computer Maintenance'),
(30502, 305, 3, 1, 1, 'Dish Bill', 'BDT', NULL, '', 'Expenses>Operating Expenses>Dish Bill'),
(30503, 305, 3, 1, 1, 'Electricity Bill', 'BDT', NULL, '', 'Expenses>Operating Expenses>Electricity Bill'),
(30504, 305, 3, 1, 1, 'Generator Maintenance', 'BDT', NULL, '', 'Expenses>Operating Expenses>Generator Maintenance'),
(30505, 305, 3, 1, 1, 'Office Rent', 'BDT', NULL, '', 'Expenses>Operating Expenses>Office Rent'),
(30506, 305, 3, 1, 1, 'Printer Maintenance', 'BDT', NULL, '', 'Expenses>Operating Expenses>Printer Maintenance'),
(40101, 401, 3, 1, 1, 'Sales Revenue', 'BDT', NULL, '', 'Income>Income>Sales Revenue'),
(40102, 401, 3, 1, 1, 'Interest On Investment', 'BDT', NULL, '', 'Income>Income>Interest On Investment'),
(40103, 401, 3, 1, 1, 'Interest On Bank Deposit', 'BDT', NULL, '', 'Income>Income>Interest On Bank Deposit'),
(40301, 403, 3, 1, 1, 'Visa Revenue', 'BDT', NULL, '', 'Income>Revenue>Visa Revenue'),
(40302, 403, 3, 1, 1, 'Other Revenue', 'BDT', NULL, '', 'Income>Revenue>Other Revenue'),
(40303, 403, 3, 1, 1, 'Bank Interest Revenue', 'BDT', NULL, '', 'Income>Revenue>Bank Interest Revenue'),
(40401, 404, 3, 1, 1, 'All Sales', 'BDT', NULL, '', 'Income>Sales Account >All Sales'),
(40402, 404, 3, 1, 1, 'Discount on Purchase', 'BDT', NULL, '', 'Income>Sales Account >Discount on Purchase'),
(40403, 404, 3, 1, 1, 'Discount Received', 'BDT', NULL, '', 'Income>Sales Account >Discount Received'),
(40404, 404, 3, 1, 1, 'Sales return ', 'BDT', NULL, '', 'Income>Sales Account >Sales return '),
(50101, 501, 3, 1, 1, 'Capital', 'BDT', NULL, '', 'Equity>Capital>Capital'),
(101001, 101, 3, 1, 1, '	Sworana Rice Agency', 'BDT', NULL, NULL, 'Asset>Account Receivable>	Sworana Rice Agency'),
(101002, 101, 3, 1, 1, 'Rajshahi Co-operatives', 'BDT', NULL, NULL, 'Asset>Account Receivable>Rajshahi Co-operatives'),
(101003, 101, 3, 1, 1, 'Bengal corporation', 'BDT', NULL, NULL, 'Asset>Account Receivable>Bengal corporation'),
(101004, 101, 3, 1, 1, 'Alal Traders', 'BDT', NULL, NULL, 'Asset>Account Receivable>Alal Traders'),
(101005, 101, 3, 1, 1, 'Rahim Traders', 'BDT', NULL, NULL, 'Asset>Account Receivable>Rahim Traders'),
(101006, 101, 3, 1, 1, 'Belal Traders', 'BDT', NULL, NULL, 'Asset>Account Receivable>TBelal Traders'),
(101007, 101, 3, 1, 1, 'Ajmeri Agro Foods', 'BDT', NULL, NULL, 'Asset>Account Receivable>Ajmeri Agro Foods'),
(101008, 101, 3, 1, 1, 'Hossain Rice traders', 'BDT', NULL, NULL, 'Asset>Account Receivable>Hossain Rice traders'),
(1020101, 10201, 4, 1, 1, 'National bank -0100014521- Ajmeri Food ', 'BDT', NULL, '', 'Asset>Current Asset>Cash at Bank>National bank -0100014521- Ajmeri Food '),
(1020102, 10201, 4, 1, 1, 'City Bank - 000245222- Ajmeri Golden Fiber', '', NULL, '', 'Asset>Current Asset>Cash at Bank>City Bank - 000245222- Ajmeri Golden Fiber'),
(1070101, 10701, 4, 1, 1, 'Test account child child', 'bd', NULL, 'Test account child child des', 'Asset>Test account>Test account child>Test account child child'),
(107010101, 1070101, 5, 1, 1, 'Test account child child child', 'bd', NULL, 'Test account child child child des', 'Asset>Test account>Test account child>Test account child child>Test account child child child');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collectionId` int(11) NOT NULL,
  `collectionNo` int(11) NOT NULL,
  `salesdate` date NOT NULL,
  `salesInvoiceId` int(11) NOT NULL,
  `SalesInvoiceNo` varchar(15) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `toal_discount` decimal(11,2) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `dueamount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_person`
--

CREATE TABLE `contact_person` (
  `contact_personId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cost_center`
--

CREATE TABLE `cost_center` (
  `cost_centerId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `auto_create` varchar(30) NOT NULL,
  `related_table` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_center`
--

INSERT INTO `cost_center` (`cost_centerId`, `name`, `auto_create`, `related_table`, `created_on`, `created_by`) VALUES
(1, 'CTEIP-PIROJPUR POUROSHOVA', '', 5, '0000-00-00 00:00:00', ''),
(2, 'CTEIP-BARGUNA POUROSHOVA', '', 6, '0000-00-00 00:00:00', ''),
(3, '9A LOT-1', '', 7, '0000-00-00 00:00:00', ''),
(4, '9A LOT-2', '', 8, '0000-00-00 00:00:00', ''),
(5, 'COX BAZAR -9B', '', 9, '0000-00-00 00:00:00', ''),
(6, 'TURN CONCRETE AND TECHNOLOGY L', '', 10, '0000-00-00 00:00:00', ''),
(7, 'KATHALBAGAN PROJECT', '', 11, '0000-00-00 00:00:00', ''),
(8, 'Head Office', '', 12, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `dailytransaction`
--

CREATE TABLE `dailytransaction` (
  `tranID` bigint(10) NOT NULL,
  `purchaseInvoiceId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `salesInvoiceId` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `tranType` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `InvoiceNo` varchar(20) NOT NULL,
  `Folio` varchar(10) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `Particurlar` text NOT NULL,
  `drAmount` decimal(11,2) NOT NULL,
  `crAmount` decimal(11,2) NOT NULL,
  `passportNo` varchar(15) NOT NULL,
  `submitdate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(10) NOT NULL,
  `updated_by` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dailytransaction`
--

INSERT INTO `dailytransaction` (`tranID`, `purchaseInvoiceId`, `paymentId`, `salesInvoiceId`, `collectionId`, `tranType`, `date`, `InvoiceNo`, `Folio`, `cost_center`, `chartofaccountID`, `Particurlar`, `drAmount`, `crAmount`, `passportNo`, `submitdate`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(211, 0, 0, 5, 0, 'JT', '2020-11-01', 'JT001', '', 0, 101002, 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SD-INV001', 15000.00, 0.00, '', '0000-00-00', '2020-11-01 09:40:09', NULL, '', ''),
(212, 0, 0, 5, 0, 'JT', '2020-11-01', 'JT001', '', 0, 40401, 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SD-INV001', 0.00, 15000.00, '', '0000-00-00', '2020-11-01 09:40:09', NULL, '', ''),
(213, 0, 0, 6, 0, 'JT', '2020-11-01', 'JT002', '', 0, 101004, 'Sales -> To -> Alal Traders  -> Invoice- SD-INV002', 45000.00, 0.00, '', '0000-00-00', '2020-11-01 10:22:09', NULL, '', ''),
(214, 0, 0, 6, 0, 'JT', '2020-11-01', 'JT002', '', 0, 40401, 'Sales -> To -> Alal Traders  -> Invoice- SD-INV002', 0.00, 45000.00, '', '0000-00-00', '2020-11-01 10:22:09', NULL, '', ''),
(215, 1, 0, 0, 0, 'JT', '2020-11-04', 'JT003', '', 6, 20109, 'Purchase -> From ->JP MACHINERY -> Invoice- PD-INV001', 0.00, 2540.00, '', '0000-00-00', '2020-11-04 13:24:39', NULL, '', ''),
(216, 1, 0, 0, 0, 'JT', '2020-11-04', 'JT003', '', 6, 30301, 'Purchase -> From ->JP MACHINERY -> Invoice- PD-INV001', 2540.00, 0.00, '', '0000-00-00', '2020-11-04 13:24:39', NULL, '', ''),
(217, 0, 0, 7, 0, 'JT', '2020-11-04', 'JT004', '', 0, 101002, 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SC-INV001', 6000.00, 0.00, '', '0000-00-00', '2020-11-04 13:58:10', NULL, '', ''),
(218, 0, 0, 7, 0, 'JT', '2020-11-04', 'JT004', '', 0, 40401, 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SC-INV001', 0.00, 6000.00, '', '0000-00-00', '2020-11-04 13:58:10', NULL, '', ''),
(219, 0, 0, 7, 0, 'CR', '2020-11-04', 'CR001', '', 6, 101002, 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SC-INV001', 0.00, 6000.00, '', '0000-00-00', '2020-11-04 13:58:10', NULL, '', ''),
(220, 0, 0, 7, 0, 'CR', '2020-11-04', 'CR001', '', 6, 10202, 'Cash Received from ->Rajshahi Co-operatives -> for SC-INV001', 6000.00, 0.00, '', '0000-00-00', '2020-11-04 13:58:10', NULL, '', ''),
(221, 0, 0, 8, 0, 'JT', '2020-11-15', 'JT005', '', 0, 101004, 'Sales -> To -> Alal Traders  -> Invoice- SC-INV002', 24000.00, 0.00, '', '0000-00-00', '2020-11-15 15:25:51', NULL, '', ''),
(222, 0, 0, 8, 0, 'JT', '2020-11-15', 'JT005', '', 0, 40401, 'Sales -> To -> Alal Traders  -> Invoice- SC-INV002', 0.00, 24000.00, '', '0000-00-00', '2020-11-15 15:25:51', NULL, '', ''),
(223, 0, 0, 8, 0, 'CR', '2020-11-15', 'CR002', '', 6, 101004, 'Sales -> To -> Alal Traders  -> Invoice- SC-INV002', 0.00, 0.00, '', '0000-00-00', '2020-11-15 15:25:51', NULL, '', ''),
(224, 0, 0, 8, 0, 'CR', '2020-11-15', 'CR002', '', 6, 10202, 'Cash Received from ->Alal Traders  -> for SC-INV002', 0.00, 0.00, '', '0000-00-00', '2020-11-15 15:25:51', NULL, '', ''),
(225, 2, 0, 0, 0, 'JT', '2020-11-27', 'JT006', '', 6, 20101, 'Purchase -> From ->Jessore Traders  -> Invoice- PC-INV001', 0.00, 518.00, '', '0000-00-00', '2020-11-27 17:41:56', NULL, '', ''),
(226, 2, 0, 0, 0, 'JT', '2020-11-27', 'JT006', '', 6, 30301, 'Purchase -> From ->Jessore Traders  -> Invoice- PC-INV001', 518.00, 0.00, '', '0000-00-00', '2020-11-27 17:41:56', NULL, '', ''),
(227, 2, 0, 0, 0, 'CP', '2020-11-27', 'CP001', '', 6, 20101, 'Purchase -> From ->Jessore Traders  -> Invoice- PC-INV001', 1500.00, 0.00, '', '0000-00-00', '2020-11-27 17:41:56', NULL, '', ''),
(228, 2, 0, 0, 0, 'CP', '2020-11-27', 'CP001', '', 6, 10202, 'Cash Payment', 0.00, 1500.00, '', '0000-00-00', '2020-11-27 17:41:56', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:48:38'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(10, 8, 'Mymensingh', 'ময়মনসিং', 0, 0, 'www.mymensingh.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:49:01'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(13, 8, 'Netrokona', 'নেত্রকোনা', 24.870955, 90.727887, 'www.netrokona.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:46:31'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd', '2015-09-13 04:33:27', '2016-04-06 10:48:21'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd', '2015-09-13 04:33:27', '2015-09-13 04:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `documentId` int(10) NOT NULL,
  `agentinfoId` int(10) NOT NULL,
  `files` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `station` varchar(45) NOT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `name`, `mobile`, `email`, `address`, `designation`, `dept`, `station`, `photo`) VALUES
(2, 'Shamim', '0088789897', 'shamim@yahoo.com', 'Dhala', 'marketing ', '', '', ''),
(3, 'MONIRUJJAMAN', '+8801712981122', 'monirbd@yahoo.com', 'Dhaka', 'Malaysia_Section', 'Procassing', 'Banani', '15693199840_1.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `groupleaderinfo`
--

CREATE TABLE `groupleaderinfo` (
  `groupleaderId` int(11) NOT NULL,
  `groupid` varchar(10) NOT NULL,
  `groupleaderName` varchar(255) NOT NULL,
  `presentAddress` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuesdetails`
--

CREATE TABLE `issuesdetails` (
  `issueDetailsId` int(11) NOT NULL,
  `issueInvoiceId` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issuesdetails`
--

INSERT INTO `issuesdetails` (`issueDetailsId`, `issueInvoiceId`, `item`, `qty`) VALUES
(8, 4, 9, 250),
(9, 4, 7, 350),
(10, 4, 3, 450),
(11, 5, 10, 150),
(12, 5, 3, 5000),
(13, 5, 2, 500),
(14, 5, 11, 1500),
(15, 6, 10, 1111),
(16, 6, 7, 2222),
(17, 6, 6, 3333);

-- --------------------------------------------------------

--
-- Table structure for table `issuesinvoice`
--

CREATE TABLE `issuesinvoice` (
  `issueInvoiceId` int(11) NOT NULL,
  `trandate` date NOT NULL,
  `issueFrom` int(11) NOT NULL,
  `issueTo` int(11) NOT NULL,
  `manager` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `projectId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issuesinvoice`
--

INSERT INTO `issuesinvoice` (`issueInvoiceId`, `trandate`, `issueFrom`, `issueTo`, `manager`, `type`, `projectId`) VALUES
(4, '2020-10-07', 0, 0, 'Abdullah', 'used', 5),
(5, '2020-10-08', 0, 0, 'Engr. Sohan', 'used', 7),
(6, '2020-10-08', 7, 9, 'Abdullah', 'transfer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemId` int(11) NOT NULL,
  `item_groupId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `group` int(11) NOT NULL,
  `purchase_price` varchar(30) NOT NULL,
  `sale_price` varchar(30) NOT NULL,
  `default_tax_rate` varchar(30) NOT NULL,
  `default_discount_rate` varchar(30) NOT NULL,
  `stock_unit` varchar(30) NOT NULL,
  `alert_quantity` varchar(30) NOT NULL,
  `measurement_unit` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `image` varchar(30) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemId`, `item_groupId`, `chartofaccountID`, `code`, `name`, `brand`, `group`, `purchase_price`, `sale_price`, `default_tax_rate`, `default_discount_rate`, `stock_unit`, `alert_quantity`, `measurement_unit`, `description`, `image`, `created_on`, `created_by`) VALUES
(1, 1, 0, 'P001', 'Woven Bag ', 'asdsa', 1, '', '', '', '', '', '', 1, 'Woven', NULL, '0000-00-00 00:00:00', ''),
(2, 1, 0, 'P002', 'Tossa Jute', 'Denev', 1, '', '', '', '', '', '', 1, '', NULL, '0000-00-00 00:00:00', ''),
(3, 2, 0, 'P003', 'Mesta Jute ', 'Azmeri', 0, '', '', '', '', '', '', 1, 'daa', NULL, '0000-00-00 00:00:00', ''),
(4, 1, 0, 'P004', 'Hessian Bag Size 30\"X18\", Ex. ', 'Ajmeri', 0, '', '', '', '', '', '', 1, '', NULL, '0000-00-00 00:00:00', ''),
(5, 2, 0, 'P005', 'Hessian Bag Size 53\"X83\" (135x', 'Ajmeri', 0, '', '', '', '', '', '', 9, 'asdasd', NULL, '0000-00-00 00:00:00', ''),
(6, 4, 0, 'P006', 'spare parts ', 'sparts', 0, '', '', '', '', '', '', 3, 'spare', NULL, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_group`
--

CREATE TABLE `item_group` (
  `item_groupId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_group`
--

INSERT INTO `item_group` (`item_groupId`, `chartofaccountID`, `code`, `name`, `description`, `created_on`, `created_by`) VALUES
(1, 10601, 'GR001', 'Jute Unit', 'Jute Unit ', '0000-00-00 00:00:00', ''),
(2, 10602, 'GR002', 'Jute Bag2', 'Jute bag2\r\n                   ', '0000-00-00 00:00:00', ''),
(3, 10603, 'GR003', 'Plastic Woven Unit', 'Woven \r\n                      ', '0000-00-00 00:00:00', ''),
(4, 10604, 'GR004', 'Spare Parts', 'Spare Parts                   ', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_unit`
--

CREATE TABLE `measurement_unit` (
  `measurement_unitId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement_unit`
--

INSERT INTO `measurement_unit` (`measurement_unitId`, `name`, `description`, `created_on`, `created_by`) VALUES
(1, 'KG', '', '0000-00-00 00:00:00', ''),
(2, 'CM', '', '0000-00-00 00:00:00', ''),
(3, 'Pcs', '', '0000-00-00 00:00:00', ''),
(4, 'Ltr', '', '0000-00-00 00:00:00', ''),
(5, 'In', '', '0000-00-00 00:00:00', ''),
(6, 'FT', '', '0000-00-00 00:00:00', ''),
(7, 'Ton', '', '0000-00-00 00:00:00', ''),
(8, 'Bosta', '', '0000-00-00 00:00:00', ''),
(9, 'Dozen', '', '0000-00-00 00:00:00', ''),
(10, 'Day', '', '0000-00-00 00:00:00', ''),
(11, 'Month', '', '0000-00-00 00:00:00', ''),
(12, 'Hour', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passengerId` int(11) NOT NULL,
  `passengerName` varchar(255) NOT NULL,
  `presentAddress` varchar(255) NOT NULL,
  `passportNo` varchar(100) NOT NULL,
  `mobileno` int(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `agentinfoId` int(50) NOT NULL,
  `servicelistId` int(50) NOT NULL,
  `marital_Status` varchar(255) NOT NULL,
  `nid` int(20) NOT NULL,
  `pilgrimID` int(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `village` varchar(255) NOT NULL,
  `rbs` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `police_Station` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passengerId`, `passengerName`, `presentAddress`, `passportNo`, `mobileno`, `email`, `details`, `agentinfoId`, `servicelistId`, `marital_Status`, `nid`, `pilgrimID`, `gender`, `village`, `rbs`, `district`, `police_Station`, `status`) VALUES
(1, 'Manusu', '                                    asdasd', 'asdas', 1711159453, 'email@yahoo.com', '', 1, 40202, '', 0, 0, 'Female', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `paymentNo` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseInvoiceId` int(11) NOT NULL,
  `PurchaseInvoiceNo` varchar(15) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `chequedate` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `toal_discount` decimal(11,2) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `dueamount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `paymentNo`, `purchasedate`, `purchaseInvoiceId`, `PurchaseInvoiceNo`, `chartofaccountID`, `supplierName`, `customerBank`, `paymentType`, `chartofaccountBank`, `cheque`, `chequedate`, `description`, `cost_center`, `totalAmount`, `discount`, `paidAmount`, `toal_discount`, `total_paid`, `dueamount`, `deleteStatus`, `loggedBy`, `loggedtime`) VALUES
(3, 28, '2020-10-11', 4, 'PB-INV002', 20107, 'Gazi Tanks', '', 'Bank', 1020101, '1472123456781452', '2020-10-11', 'Due payment to-> Gazi Tanks -> for Invoice- PB-INV002', 5, 0.00, 0.00, 15000.00, 0.00, 765000.00, 17300.00, 0, '', '2020-10-10 18:36:40'),
(4, 29, '2020-10-12', 4, 'PB-INV002', 20107, 'Gazi Tanks', '', 'Cash', 0, '', '0000-00-00', 'Due payment to-> Gazi Tanks -> for Invoice- PB-INV002', 5, 0.00, 0.00, 10000.00, 0.00, 775000.00, 7300.00, 0, '', '2020-10-10 18:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `project_turn`
--

CREATE TABLE `project_turn` (
  `project_turnId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `work_details` varchar(30) NOT NULL,
  `project_manager` varchar(30) NOT NULL,
  `project_value` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `tc` varchar(30) NOT NULL,
  `status` enum('on','off') NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `purchasedate` date NOT NULL,
  `purchaseDetailsID` int(11) NOT NULL,
  `purchaseInvoiceId` int(11) NOT NULL,
  `itemcode` int(11) NOT NULL,
  `particular` text NOT NULL,
  `cost_center` int(11) NOT NULL,
  `warehouse` int(11) NOT NULL,
  `passportNo` varchar(15) NOT NULL,
  `nid` int(20) NOT NULL,
  `mobileno` int(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `unitprice` decimal(11,2) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`purchasedate`, `purchaseDetailsID`, `purchaseInvoiceId`, `itemcode`, `particular`, `cost_center`, `warehouse`, `passportNo`, `nid`, `mobileno`, `qty`, `unitprice`, `amount`) VALUES
('2020-11-04', 1, 1, 6, '224 Bearing for Spinning', 6, 6, '', 0, 0, 6, 240.00, 1440.00),
('2020-11-04', 2, 1, 6, '32 No Dal', 6, 6, '', 0, 0, 2, 550.00, 1100.00),
('2020-11-27', 3, 2, 1, '', 6, 6, '', 0, 0, 1, 12.00, 12.00),
('2020-11-27', 4, 2, 2, '', 6, 6, '', 0, 0, 2, 11.00, 22.00),
('2020-11-27', 5, 2, 2, '', 6, 6, '', 0, 0, 4, 22.00, 88.00),
('2020-11-27', 6, 2, 5, '', 6, 6, '', 0, 0, 12, 33.00, 396.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinvoice`
--

CREATE TABLE `purchaseinvoice` (
  `purchaseInvoiceId` int(11) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `PurchaseInvoiceNo` varchar(15) NOT NULL,
  `asPerSalesId` int(20) NOT NULL,
  `barcode_no` int(20) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `description` varchar(200) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseinvoice`
--

INSERT INTO `purchaseinvoice` (`purchaseInvoiceId`, `cost_center`, `purchasedate`, `PurchaseInvoiceNo`, `asPerSalesId`, `barcode_no`, `chartofaccountID`, `supplierName`, `mobile`, `paymentType`, `description`, `chartofaccountBank`, `cheque`, `cardno`, `chequedate`, `totalAmount`, `discount`, `paidAmount`, `deleteStatus`, `loggedBy`, `loggedtime`) VALUES
(1, 6, '2020-11-04', 'PD-INV001', 0, 0, 20109, 'JP MACHINERY', '01750120130', 'Due', 'Purchase -> From ->JP MACHINERY -> Invoice- PD-INV001', 0, '', '', '0000-00-00', 2540.00, 0.00, 0.00, 0, '', '2020-11-04 13:24:39'),
(2, 6, '2020-11-27', 'PC-INV001', 0, 0, 20101, 'Jessore Traders ', '', 'Cash', 'Purchase -> From ->Jessore Traders  -> Invoice- PC-INV001', 0, '', '', '0000-00-00', 518.00, 0.00, 1500.00, 0, '', '2020-11-27 17:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturn`
--

CREATE TABLE `purchasereturn` (
  `purchasereturnId` int(11) NOT NULL,
  `purchasereturnNo` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseInvoiceId` int(11) NOT NULL,
  `PurchaseInvoiceNo` varchar(15) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `toal_discount` decimal(11,2) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `dueamount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseservice`
--

CREATE TABLE `purchaseservice` (
  `serviceId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `serviceName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_orderId` int(11) NOT NULL,
  `cost_centerId` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchase_order_no` varchar(15) NOT NULL,
  `asPerSalesId` int(20) NOT NULL,
  `barcode_no` int(20) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `description` varchar(200) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `purchase_order_detailsId` int(11) NOT NULL,
  `purchase_orderId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `particular` text NOT NULL,
  `qty` int(10) NOT NULL,
  `unitprice` decimal(11,2) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails`
--

CREATE TABLE `salesdetails` (
  `salesdate` date NOT NULL,
  `salesDetailsID` int(11) NOT NULL,
  `salesInvoiceId` int(11) NOT NULL,
  `salesOrderId` int(11) NOT NULL,
  `itemcode` int(11) NOT NULL,
  `particular` text NOT NULL,
  `passportNo` varchar(255) NOT NULL,
  `nid` int(20) DEFAULT NULL,
  `mobileno` int(20) DEFAULT NULL,
  `qty` int(12) NOT NULL,
  `unitprice` int(12) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesdetails`
--

INSERT INTO `salesdetails` (`salesdate`, `salesDetailsID`, `salesInvoiceId`, `salesOrderId`, `itemcode`, `particular`, `passportNo`, `nid`, `mobileno`, `qty`, `unitprice`, `amount`, `cost_center`, `warehouse`) VALUES
('2020-11-01', 32, 5, 2, 4, 'bhjhjhjj', '', NULL, 88, 250, 60, 15000.00, 6, 6),
('2020-11-01', 33, 6, 4, 5, 'test', '', NULL, 88, 300, 150, 45000.00, 7, 7),
('2020-11-04', 34, 7, 2, 4, 'bhjhjhjj', '', NULL, 88, 100, 60, 6000.00, 6, 6),
('2020-11-15', 35, 8, 5, 1, 'Wpp', '', NULL, 88, 2000, 12, 24000.00, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoice`
--

CREATE TABLE `salesinvoice` (
  `salesInvoiceId` int(11) NOT NULL,
  `salesOrderId` int(11) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `salesdate` date NOT NULL,
  `SalesInvoiceNo` varchar(15) NOT NULL,
  `barcode_no` int(20) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `description` varchar(200) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date DEFAULT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `tranStatus` int(1) DEFAULT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesinvoice`
--

INSERT INTO `salesinvoice` (`salesInvoiceId`, `salesOrderId`, `cost_center`, `salesdate`, `SalesInvoiceNo`, `barcode_no`, `chartofaccountID`, `customerName`, `customerBank`, `mobile`, `paymentType`, `description`, `chartofaccountBank`, `cheque`, `cardno`, `chequedate`, `totalAmount`, `discount`, `paidAmount`, `deleteStatus`, `tranStatus`, `loggedBy`, `loggedtime`) VALUES
(5, 2, 6, '2020-11-01', 'SD-INV001', 0, 101002, 'Rajshahi Co-operatives', '', '88+880100000', 'Due', 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SD-INV001', 0, '', '', NULL, 15000.00, 0.00, 0.00, 0, NULL, '', '2020-11-01 09:40:09'),
(6, 4, 7, '2020-11-01', 'SD-INV002', 0, 101004, 'Alal Traders ', '', '88+880100000', 'Due', 'Sales -> To -> Alal Traders  -> Invoice- SD-INV002', 0, '', '', NULL, 45000.00, 0.00, 0.00, 0, NULL, '', '2020-11-01 10:22:09'),
(7, 2, 6, '2020-11-04', 'SC-INV001', 0, 101002, 'Rajshahi Co-operatives', '', '88+880100000', 'Cash', 'Sales -> To -> Rajshahi Co-operatives -> Invoice- SC-INV001', 0, '', '', NULL, 6000.00, 0.00, 6000.00, 0, NULL, '', '2020-11-04 13:58:10'),
(8, 5, 6, '2020-11-15', 'SC-INV002', 0, 101004, 'Alal Traders ', '', '88+880100000', 'Cash', 'Sales -> To -> Alal Traders  -> Invoice- SC-INV002', 0, '', '', NULL, 24000.00, 0.00, 0.00, 0, NULL, '', '2020-11-15 15:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `salesorder`
--

CREATE TABLE `salesorder` (
  `salesOrderId` int(11) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `salesorderdate` date NOT NULL,
  `SalesOrderNo` varchar(15) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `OrderDone` varchar(3) DEFAULT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesorder`
--

INSERT INTO `salesorder` (`salesOrderId`, `cost_center`, `salesorderdate`, `SalesOrderNo`, `chartofaccountID`, `customerName`, `customerBank`, `mobile`, `description`, `totalAmount`, `deleteStatus`, `OrderDone`, `loggedBy`, `loggedtime`) VALUES
(2, 0, '2020-11-01', 'SOR002', 101002, 'Rajshahi Co-operatives', '', '', 'Sales -> To -> Rajshahi Co-operatives -> Sales Order- SOR002', 24000.00, 0, 'NO', '', '2020-11-01 09:20:47'),
(3, 0, '2020-11-01', 'SOR003', 101003, 'Bengal corporation', '', '', 'Sales -> To -> Bengal corporation -> Sales Order- SOR003', 36000.00, 0, 'NO', '', '2020-11-01 09:30:30'),
(4, 0, '2020-11-01', 'SOR004', 101004, 'Alal Traders ', '', '', 'Sales -> To -> Alal Traders  -> Sales Order- SOR004', 45000.00, 0, 'NO', '', '2020-11-01 10:20:10'),
(5, 0, '2020-11-04', 'SOR005', 101004, 'Alal Traders ', '', '', 'Sales -> To -> Alal Traders  -> Sales Order- SOR005', 24000.00, 0, 'NO', '', '2020-11-04 13:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `salesorderdetails`
--

CREATE TABLE `salesorderdetails` (
  `salesOrderDetailsID` int(11) NOT NULL,
  `salesorderdate` date NOT NULL,
  `salesOrderId` int(11) NOT NULL,
  `stockreceiveID` int(11) NOT NULL,
  `itemcode` int(11) NOT NULL,
  `particular` text NOT NULL,
  `qty` int(12) NOT NULL,
  `restqty` int(11) NOT NULL,
  `receiveqty` int(11) NOT NULL,
  `unitprice` int(12) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesorderdetails`
--

INSERT INTO `salesorderdetails` (`salesOrderDetailsID`, `salesorderdate`, `salesOrderId`, `stockreceiveID`, `itemcode`, `particular`, `qty`, `restqty`, `receiveqty`, `unitprice`, `amount`) VALUES
(3, '2020-11-01', 2, 0, 4, 'bhjhjhjj', 400, 50, 400, 60, 24000.00),
(4, '2020-11-01', 3, 0, 4, 'pabna ', 600, 600, 100, 60, 36000.00),
(5, '2020-11-01', 4, 0, 5, 'test jute order', 300, 0, 300, 150, 45000.00),
(6, '2020-11-04', 5, 0, 1, 'Wpp with Lamination & One side Two Color Print', 2000, 0, 0, 12, 24000.00);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturn`
--

CREATE TABLE `salesreturn` (
  `salesreturnId` int(11) NOT NULL,
  `salesreturnNo` int(11) NOT NULL,
  `salesdate` date NOT NULL,
  `salesInvoiceId` int(11) NOT NULL,
  `SalesInvoiceNo` varchar(15) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `customerBank` varchar(100) NOT NULL,
  `paymentType` varchar(12) NOT NULL,
  `chartofaccountBank` int(11) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `chequedate` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost_center` int(11) NOT NULL,
  `totalAmount` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `paidAmount` decimal(11,2) NOT NULL,
  `toal_discount` decimal(11,2) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `dueamount` decimal(11,2) NOT NULL,
  `deleteStatus` tinyint(5) NOT NULL,
  `loggedBy` varchar(15) NOT NULL,
  `loggedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesservice`
--

CREATE TABLE `salesservice` (
  `salesServiceID` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `salesServiceName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicelist`
--

CREATE TABLE `servicelist` (
  `servicelistId` int(11) NOT NULL,
  `servicelistName` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `statusId` int(11) NOT NULL,
  `statusName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusId`, `statusName`) VALUES
(1, 'PROCESSING'),
(2, 'RETURN'),
(3, 'UNDER PROCESSING'),
(4, 'VISA'),
(5, 'EXPIRE'),
(6, 'FLIGHT'),
(7, 'ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `itemreceiveID` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `warehouseId` int(11) NOT NULL,
  `salesOrderId` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `group` int(11) NOT NULL,
  `receiveqty` int(11) NOT NULL,
  `stock_unit` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE `stock_in` (
  `itemreceiveID` int(11) NOT NULL,
  `trandate` date NOT NULL,
  `itemId` int(11) NOT NULL,
  `particular` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `stock_unit` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`itemreceiveID`, `trandate`, `itemId`, `particular`, `qty`, `stock_unit`, `created_on`, `created_by`) VALUES
(1, '2020-10-31', 2, 'test Phase ', 10, '', '0000-00-00 00:00:00', ''),
(2, '2020-10-31', 3, 'project Expense', 20, '', '0000-00-00 00:00:00', ''),
(3, '2020-10-31', 4, 'Visa for Mr. harun', 10, '', '0000-00-00 00:00:00', ''),
(4, '2020-10-31', 5, '9999', 30, '', '0000-00-00 00:00:00', ''),
(7, '2020-10-31', 4, 'Tour to America', 50, '', '2020-10-31 15:33:50', ''),
(8, '2020-10-31', 3, 'Ticket for All', 100, '', '2020-10-31 15:33:50', ''),
(9, '2020-10-31', 5, 'Tour to America', 30, '', '2020-10-31 15:49:17', ''),
(10, '2020-10-31', 4, 'project Expense', 40, '', '2020-10-31 15:49:17', ''),
(11, '2020-10-31', 4, 'test Phase ', 150, '', '2020-10-31 16:07:57', ''),
(12, '2020-10-31', 5, 'test Phase ', 250, '', '2020-10-31 16:07:57', ''),
(13, '2020-10-31', 1, 'test', 450, '', '2020-10-31 16:42:40', ''),
(14, '2020-10-31', 2, '', 100, '', '2020-10-31 08:51:19', ''),
(15, '2020-11-01', 5, 'ttttt', 300, '', '2020-11-01 04:25:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer`
--

CREATE TABLE `stock_transfer` (
  `stock_transferId` int(11) NOT NULL,
  `from_warehouseId` varchar(30) NOT NULL,
  `to_warehouseId` varchar(30) NOT NULL,
  `itemId` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplierinfo`
--

CREATE TABLE `supplierinfo` (
  `supplierinfoId` int(11) NOT NULL,
  `chartofaccountID` int(11) NOT NULL,
  `supplierName` varchar(255) NOT NULL,
  `presentAddress` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierinfo`
--

INSERT INTO `supplierinfo` (`supplierinfoId`, `chartofaccountID`, `supplierName`, `presentAddress`, `mobile`, `email`) VALUES
(1, 20101, 'Jessore Traders ', '', '', ''),
(2, 20102, 'Abdullah Traders', '', '', ''),
(3, 20103, 'Parya Trading Corporation', '', '', ''),
(4, 20104, 'Zaman Enterprise ', '', '', ''),
(5, 20105, 'Sharif Enterprise', '', '', ''),
(6, 20106, 'JK Traders', '', '', ''),
(7, 20107, 'Faridpur Jute Trades', '', '', ''),
(8, 20108, 'General Supplier', '', '', ''),
(9, 20109, 'JP MACHINERY', 'SANTAHAR', '01750120130', '');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali', 'আমতলী', '0000-00-00 00:00:00', '2016-04-06 06:48:39'),
(2, 34, 'Bamna ', 'বামনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 34, 'Barguna Sadar ', 'বরগুনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 34, 'Betagi ', 'বেতাগি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 34, 'Patharghata ', 'পাথরঘাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 34, 'Taltali ', 'তালতলী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 35, 'Muladi ', 'মুলাদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 35, 'Babuganj ', 'বাবুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 35, 'Agailjhara ', 'আগাইলঝরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 35, 'Barisal Sadar ', 'বরিশাল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 35, 'Bakerganj ', 'বাকেরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 35, 'Banaripara ', 'বানাড়িপারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 35, 'Gaurnadi ', 'গৌরনদী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 35, 'Hizla ', 'হিজলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 35, 'Mehendiganj ', 'মেহেদিগঞ্জ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 35, 'Wazirpur ', 'ওয়াজিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 36, 'Bhola Sadar ', 'ভোলা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 36, 'Burhanuddin ', 'বুরহানউদ্দিন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 36, 'Char Fasson ', 'চর ফ্যাশন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 36, 'Daulatkhan ', 'দৌলতখান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 36, 'Lalmohan ', 'লালমোহন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 36, 'Manpura ', 'মনপুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 36, 'Tazumuddin ', 'তাজুমুদ্দিন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 37, 'Jhalokati Sadar ', 'ঝালকাঠি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 37, 'Kathalia ', 'কাঁঠালিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 37, 'Nalchity ', 'নালচিতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 37, 'Rajapur ', 'রাজাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 38, 'Bauphal ', 'বাউফল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 38, 'Dashmina ', 'দশমিনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 38, 'Galachipa ', 'গলাচিপা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 38, 'Kalapara ', 'কালাপারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 38, 'Mirzaganj ', 'মির্জাগঞ্জ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 38, 'Patuakhali Sadar ', 'পটুয়াখালী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 38, 'Dumki ', 'ডুমকি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 38, 'Rangabali ', 'রাঙ্গাবালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 39, 'Kaukhali', 'কাউখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 39, 'Nazirpur', 'নাজিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 39, 'Nesarabad', 'নেসারাবাদ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 39, 'Zianagar', 'জিয়ানগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 40, 'Thanchi', 'থানচি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 40, 'Lama', 'লামা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 40, 'Ali kadam', 'আলী কদম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 40, 'Ruma', 'রুমা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 41, 'Brahmanbaria Sadar ', 'ব্রাহ্মণবাড়িয়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 41, 'Ashuganj ', 'আশুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 41, 'Nasirnagar ', 'নাসির নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 41, 'Nabinagar ', 'নবীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 41, 'Sarail ', 'সরাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 41, 'Kasba ', 'কসবা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 41, 'Akhaura ', 'আখাউরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 41, 'Bancharampur ', 'বাঞ্ছারামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 41, 'Bijoynagar ', 'বিজয় নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 42, 'Haimchar', 'হাইমচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 42, 'Kachua', 'কচুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 42, 'Shahrasti', 'শাহরাস্তি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 43, 'Anwara ', 'আনোয়ারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 43, 'Banshkhali ', 'বাশখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 43, 'Boalkhali ', 'বোয়ালখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 43, 'Chandanaish ', 'চন্দনাইশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 43, 'Fatikchhari ', 'ফটিকছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 43, 'Hathazari ', 'হাঠহাজারী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 43, 'Lohagara ', 'লোহাগারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 43, 'Mirsharai ', 'মিরসরাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 43, 'Patiya ', 'পটিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 43, 'Rangunia ', 'রাঙ্গুনিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 43, 'Raozan ', 'রাউজান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 43, 'Sandwip ', 'সন্দ্বীপ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 43, 'Satkania ', 'সাতকানিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 43, 'Sitakunda ', 'সীতাকুণ্ড', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 44, 'Barura ', 'বড়ুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 44, 'Brahmanpara ', 'ব্রাহ্মণপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 44, 'Burichong ', 'বুড়িচং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 44, 'Chandina ', 'চান্দিনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 44, 'Chauddagram ', 'চৌদ্দগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 44, 'Daudkandi ', 'দাউদকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 44, 'Debidwar ', 'দেবীদ্বার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 44, 'Homna ', 'হোমনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 44, 'Comilla Sadar ', 'কুমিল্লা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 44, 'Laksam ', 'লাকসাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 44, 'Monohorgonj ', 'মনোহরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 44, 'Meghna ', 'মেঘনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 44, 'Muradnagar ', 'মুরাদনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 44, 'Nangalkot ', 'নাঙ্গালকোট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 44, 'Comilla Sadar South ', 'কুমিল্লা সদর দক্ষিণ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 44, 'Titas ', 'তিতাস', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 45, 'Chakaria ', 'চকরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 45, 'Chakaria ', 'চকরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 45, 'Cox\'s Bazar Sadar ', 'কক্স বাজার সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 45, 'Kutubdia ', 'কুতুবদিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 45, 'Maheshkhali ', 'মহেশখালী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 45, 'Ramu ', 'রামু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 45, 'Teknaf ', 'টেকনাফ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 45, 'Ukhia ', 'উখিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 45, 'Pekua ', 'পেকুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 46, 'Feni Sadar', 'ফেনী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 46, 'Parshuram', 'পরশুরাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 46, 'Fhulgazi', 'ফুলগাজি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 46, 'Sonagazi', 'সোনাগাজি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 47, 'Dighinala ', 'দিঘিনালা ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 47, 'Khagrachhari ', 'খাগড়াছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 47, 'Lakshmichhari ', 'লক্ষ্মীছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 47, 'Mahalchhari ', 'মহলছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 47, 'Manikchhari ', 'মানিকছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 47, 'Matiranga ', 'মাটিরাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 47, 'Panchhari ', 'পানছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 47, 'Ramgarh ', 'রামগড়', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 48, 'Lakshmipur Sadar ', 'লক্ষ্মীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 48, 'Raipur ', 'রায়পুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 48, 'Ramganj ', 'রামগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 48, 'Ramgati ', 'রামগতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 48, 'Komol Nagar ', 'কমল নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 49, 'Noakhali Sadar ', 'নোয়াখালী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 49, 'Begumganj ', 'বেগমগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 49, 'Chatkhil ', 'চাটখিল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 49, 'Companyganj ', 'কোম্পানীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 49, 'Shenbag ', 'শেনবাগ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 49, 'Hatia ', 'হাতিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 49, 'Kobirhat ', 'কবিরহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 49, 'Sonaimuri ', 'সোনাইমুরি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 49, 'Suborno Char ', 'সুবর্ণ চর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 50, 'Rangamati Sadar ', 'রাঙ্গামাটি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 50, 'Belaichhari ', 'বেলাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 50, 'Bagaichhari ', 'বাঘাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 50, 'Barkal ', 'বরকল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 50, 'Juraichhari ', 'জুরাইছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 50, 'Rajasthali ', 'রাজাস্থলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 50, 'Kaptai ', 'কাপ্তাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 50, 'Langadu ', 'লাঙ্গাডু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 50, 'Nannerchar ', 'নান্নেরচর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 50, 'Kaukhali ', 'কাউখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 2, 'Faridpur Sadar ', 'ফরিদপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 2, 'Boalmari ', 'বোয়ালমারী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 2, 'Alfadanga ', 'আলফাডাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 2, 'Madhukhali ', 'মধুখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 2, 'Bhanga ', 'ভাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 2, 'Nagarkanda ', 'নগরকান্ড', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 2, 'Charbhadrasan ', 'চরভদ্রাসন ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 2, 'Sadarpur ', 'সদরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 2, 'Shaltha ', 'শালথা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 3, 'Kapasia', 'কাপাসিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 3, 'Sripur', 'শ্রীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 3, 'Tongi', 'টঙ্গি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 4, 'Gopalganj Sadar ', 'গোপালগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 4, 'Kashiani ', 'কাশিয়ানি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 4, 'Kotalipara ', 'কোটালিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 4, 'Muksudpur ', 'মুকসুদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 4, 'Tungipara ', 'টুঙ্গিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 5, 'Dewanganj ', 'দেওয়ানগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 5, 'Baksiganj ', 'বকসিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 5, 'Islampur ', 'ইসলামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 5, 'Jamalpur Sadar ', 'জামালপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 5, 'Madarganj ', 'মাদারগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 5, 'Melandaha ', 'মেলানদাহা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 5, 'Sarishabari ', 'সরিষাবাড়ি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 6, 'Astagram ', 'অষ্টগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 6, 'Bajitpur ', 'বাজিতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 6, 'Bhairab ', 'ভৈরব', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 6, 'Hossainpur ', 'হোসেনপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 6, 'Itna ', 'ইটনা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 6, 'Karimganj ', 'করিমগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 6, 'Katiadi ', 'কতিয়াদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 6, 'Kishoreganj Sadar ', 'কিশোরগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 6, 'Kuliarchar ', 'কুলিয়ারচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 6, 'Mithamain ', 'মিঠামাইন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 6, 'Nikli ', 'নিকলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 6, 'Pakundia ', 'পাকুন্ডা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 6, 'Tarail ', 'তাড়াইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 7, 'Kalkini', 'কালকিনি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 7, 'Rajoir', 'রাজইর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 7, 'Shibchar', 'শিবচর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 8, 'Manikganj Sadar ', 'মানিকগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 8, 'Singair ', 'সিঙ্গাইর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 8, 'Shibalaya ', 'শিবালয়', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 8, 'Saturia ', 'সাঠুরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 8, 'Harirampur ', 'হরিরামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 8, 'Ghior ', 'ঘিওর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 8, 'Daulatpur ', 'দৌলতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 9, 'Lohajang ', 'লোহাজং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 9, 'Sreenagar ', 'শ্রীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 9, 'Munshiganj Sadar ', 'মুন্সিগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 9, 'Sirajdikhan ', 'সিরাজদিখান', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 9, 'Tongibari ', 'টঙ্গিবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 9, 'Gazaria ', 'গজারিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 10, 'Bhaluka', 'ভালুকা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 10, 'Trishal', 'ত্রিশাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 10, 'Dhobaura', 'ধবারুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 10, 'Gaffargaon', 'গফরগাঁও', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 10, 'Gauripur', 'গৌরিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 10, 'Nandail', 'নন্দাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 10, 'Phulpur', 'ফুলপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 11, 'Araihazar ', 'আড়াইহাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 11, 'Sonargaon ', 'সোনারগাঁও', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 11, 'Bandar', 'বান্দার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 11, 'Naryanganj Sadar ', 'নারায়ানগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 11, 'Rupganj ', 'রূপগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 11, 'Siddirgonj ', 'সিদ্ধিরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 12, 'Belabo ', 'বেলাবো', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 12, 'Monohardi ', 'মনোহরদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 12, 'Narsingdi Sadar ', 'নরসিংদী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 12, 'Palash ', 'পলাশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 12, 'Raipura , Narsingdi', 'রায়পুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 12, 'Shibpur ', 'শিবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 13, 'Madan Upazilla', 'মদন', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 14, 'Baliakandi ', 'বালিয়াকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 14, 'Goalandaghat ', 'গোয়ালন্দ ঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 14, 'Pangsha ', 'পাংশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 14, 'Kalukhali ', 'কালুখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 14, 'Rajbari Sadar ', 'রাজবাড়ি সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 15, 'Damudya ', 'দামুদিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 15, 'Naria ', 'নড়িয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 15, 'Jajira ', 'জাজিরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 15, 'Bhedarganj ', 'ভেদারগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 15, 'Gosairhat ', 'গোসাইর হাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 16, 'Jhenaigati ', 'ঝিনাইগাতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 16, 'Nakla ', 'নাকলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 16, 'Nalitabari ', 'নালিতাবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 16, 'Sherpur Sadar ', 'শেরপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 16, 'Sreebardi ', 'শ্রীবরদি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 17, 'Tangail Sadar ', 'টাঙ্গাইল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 17, 'Sakhipur ', 'সখিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 17, 'Basail ', 'বসাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 17, 'Madhupur ', 'মধুপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 17, 'Ghatail ', 'ঘাটাইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 17, 'Kalihati ', 'কালিহাতি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 17, 'Nagarpur ', 'নগরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 17, 'Mirzapur ', 'মির্জাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 17, 'Gopalpur ', 'গোপালপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 17, 'Delduar ', 'দেলদুয়ার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 17, 'Bhuapur ', 'ভুয়াপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 17, 'Dhanbari ', 'ধানবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 55, 'Bagerhat Sadar ', 'বাগেরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 55, 'Chitalmari ', 'চিতলমাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 55, 'Fakirhat ', 'ফকিরহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 55, 'Kachua ', 'কচুয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 55, 'Mollahat ', 'মোল্লাহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 55, 'Mongla ', 'মংলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 55, 'Morrelganj ', 'মরেলগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 55, 'Rampal ', 'রামপাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 55, 'Sarankhola ', 'স্মরণখোলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 56, 'Damurhuda ', 'দামুরহুদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 56, 'Chuadanga-S ', 'চুয়াডাঙ্গা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 56, 'Jibannagar ', 'জীবন নগর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 56, 'Alamdanga ', 'আলমডাঙ্গা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 57, 'Abhaynagar ', 'অভয়নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 57, 'Keshabpur ', 'কেশবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 57, 'Bagherpara ', 'বাঘের পাড়া ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 57, 'Jessore Sadar ', 'যশোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 57, 'Chaugachha ', 'চৌগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 57, 'Manirampur ', 'মনিরামপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 57, 'Jhikargachha ', 'ঝিকরগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 57, 'Sharsha ', 'সারশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 58, 'Jhenaidah Sadar ', 'ঝিনাইদহ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 58, 'Maheshpur ', 'মহেশপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 58, 'Kaliganj ', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 58, 'Kotchandpur ', 'কোট চাঁদপুর ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 58, 'Shailkupa ', 'শৈলকুপা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 58, 'Harinakunda ', 'হাড়িনাকুন্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 59, 'Terokhada ', 'তেরোখাদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 59, 'Batiaghata ', 'বাটিয়াঘাটা ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 59, 'Dacope ', 'ডাকপে', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 59, 'Dumuria ', 'ডুমুরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 59, 'Dighalia ', 'দিঘলিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 59, 'Koyra ', 'কয়ড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 59, 'Paikgachha ', 'পাইকগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 59, 'Phultala ', 'ফুলতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 59, 'Rupsa ', 'রূপসা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 60, 'Kumarkhali', 'কুমারখালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 60, 'Daulatpur', 'দৌলতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 60, 'Mirpur', 'মিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 60, 'Bheramara', 'ভেরামারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 60, 'Khoksa', 'খোকসা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 61, 'Magura Sadar ', 'মাগুরা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 61, 'Mohammadpur ', 'মোহাম্মাদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 61, 'Shalikha ', 'শালিখা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 61, 'Sreepur ', 'শ্রীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 62, 'angni ', 'আংনি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 62, 'Mujib Nagar ', 'মুজিব নগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 62, 'Meherpur-S ', 'মেহেরপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 63, 'Kalia Upazilla', 'কালিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 64, 'Satkhira Sadar ', 'সাতক্ষীরা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 64, 'Assasuni ', 'আসসাশুনি ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 64, 'Debhata ', 'দেভাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 64, 'Tala ', 'তালা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 64, 'Kalaroa ', 'কলরোয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 64, 'Kaliganj ', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 64, 'Shyamnagar ', 'শ্যামনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 18, 'Adamdighi', 'আদমদিঘী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 18, 'Sherpur', 'শেরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 18, 'Dhunat', 'ধুনট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 18, 'Gabtali', 'গাবতলি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 18, 'Kahaloo', 'কাহালু', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 18, 'Shibganj', 'শিবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 18, 'Sonatala', 'সোনাতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 19, 'Akkelpur', 'আক্কেলপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 19, 'Kalai', 'কালাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 19, 'Khetlal', 'খেতলাল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 19, 'Panchbibi', 'পাঁচবিবি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 20, 'Naogaon Sadar ', 'নওগাঁ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 20, 'Mohadevpur ', 'মহাদেবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 20, 'Manda ', 'মান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 20, 'Niamatpur ', 'নিয়ামতপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 20, 'Atrai ', 'আত্রাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 20, 'Raninagar ', 'রাণীনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 20, 'Patnitala ', 'পত্নীতলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 20, 'Dhamoirhat ', 'ধামইরহাট ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 20, 'Sapahar ', 'সাপাহার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 20, 'Porsha ', 'পোরশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 20, 'Badalgachhi ', 'বদলগাছি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 21, 'Natore Sadar ', 'নাটোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 21, 'Baraigram ', 'বড়াইগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 21, 'Bagatipara ', 'বাগাতিপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 21, 'Lalpur ', 'লালপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 21, 'Natore Sadar ', 'নাটোর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 21, 'Baraigram ', 'বড়াই গ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 22, 'Bholahat ', 'ভোলাহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 22, 'Gomastapur ', 'গোমস্তাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 22, 'Nachole ', 'নাচোল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 22, 'Nawabganj Sadar ', 'নবাবগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 22, 'Shibganj ', 'শিবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 23, 'Atgharia ', 'আটঘরিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 23, 'Bera ', 'বেড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 23, 'Bhangura ', 'ভাঙ্গুরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 23, 'Chatmohar ', 'চাটমোহর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 23, 'Faridpur ', 'ফরিদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 23, 'Ishwardi ', 'ঈশ্বরদী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 23, 'Pabna Sadar ', 'পাবনা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 23, 'Santhia ', 'সাথিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 23, 'Sujanagar ', 'সুজানগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 24, 'Bagha', 'বাঘা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 24, 'Bagmara', 'বাগমারা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 24, 'Charghat', 'চারঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 24, 'Durgapur', 'দুর্গাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 24, 'Godagari', 'গোদাগারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 24, 'Mohanpur', 'মোহনপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 24, 'Paba', 'পবা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 24, 'Puthia', 'পুঠিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 24, 'Tanore', 'তানোর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 25, 'Sirajganj Sadar ', 'সিরাজগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 25, 'Belkuchi ', 'বেলকুচি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 25, 'Chauhali ', 'চৌহালি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 25, 'Kamarkhanda ', 'কামারখান্দা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 25, 'Kazipur ', 'কাজীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 25, 'Raiganj ', 'রায়গঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 25, 'Shahjadpur ', 'শাহজাদপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 25, 'Tarash ', 'তারাশ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 25, 'Ullahpara ', 'উল্লাপাড়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 26, 'Birampur ', 'বিরামপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 26, 'Birganj', 'বীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 26, 'Biral ', 'বিড়াল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 26, 'Bochaganj ', 'বোচাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 26, 'Chirirbandar ', 'চিরিরবন্দর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 26, 'Phulbari ', 'ফুলবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 26, 'Ghoraghat ', 'ঘোড়াঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 26, 'Hakimpur ', 'হাকিমপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 26, 'Kaharole ', 'কাহারোল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 26, 'Khansama ', 'খানসামা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 26, 'Dinajpur Sadar ', 'দিনাজপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 26, 'Parbatipur ', 'পার্বতীপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 27, 'Fulchhari', 'ফুলছড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 27, 'Palashbari', 'পলাশবাড়ী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 27, 'Saghata', 'সাঘাটা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 28, 'Phulbari', 'ফুলবাড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 28, 'Rajarhat', 'রাজারহাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 28, 'Ulipur', 'উলিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 28, 'Chilmari', 'চিলমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 28, 'Rowmari', 'রউমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 29, 'Aditmari', 'আদিতমারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 29, 'Patgram', 'পাটগ্রাম', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 30, 'Saidpur', 'সৈয়দপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 30, 'Jaldhaka', 'জলঢাকা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 30, 'Domar', 'ডোমার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 30, 'Dimla', 'ডিমলা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 31, 'Boda', 'বোদা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 31, 'Atwari', 'আটোয়ারি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 31, 'Tetulia', 'তেতুলিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 32, 'Badarganj', 'বদরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 32, 'Gangachara', 'গঙ্গাচরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 32, 'Kaunia', 'কাউনিয়া', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 32, 'Pirgachha', 'পীরগাছা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 32, 'Pirganj', 'পীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 32, 'Taraganj', 'তারাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 33, 'Thakurgaon Sadar ', 'ঠাকুরগাঁও সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 33, 'Pirganj ', 'পীরগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 33, 'Baliadangi ', 'বালিয়াডাঙ্গি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 33, 'Haripur ', 'হরিপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 33, 'Ranisankail ', 'রাণীসংকইল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 51, 'Baniachang', 'বানিয়াচং', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 51, 'Bahubal', 'বাহুবল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 51, 'Chunarughat', 'চুনারুঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 51, 'Lakhai', 'লাক্ষাই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 51, 'Madhabpur', 'মাধবপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 51, 'Shaistagonj ', 'শায়েস্তাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 52, 'Barlekha', 'বড়লেখা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 52, 'Juri', 'জুড়ি', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 52, 'Kulaura', 'কুলাউরা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 52, 'Rajnagar', 'রাজনগর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 53, 'Chhatak', 'ছাতক', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 53, 'Derai', 'দেড়াই', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 53, 'Dharampasha', 'ধরমপাশা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 53, 'Sulla', 'সুল্লা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 53, 'Tahirpur', 'তাহিরপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 54, 'Dakshin Surma ', 'দক্ষিণ সুরমা', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 54, 'Balaganj', 'বালাগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 54, 'Kanaighat', 'কানাইঘাট', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 1, 'Adabor', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(494, 1, 'Airport', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(495, 1, 'Badda', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(496, 1, 'Banani', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(497, 1, 'Bangshal', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(498, 1, 'Bhashantek', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(499, 1, 'Cantonment', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(500, 1, 'Chackbazar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(501, 1, 'Darussalam', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(502, 1, 'Daskhinkhan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(503, 1, 'Demra', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(504, 1, 'Dhamrai', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(505, 1, 'Dhanmondi', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(506, 1, 'Dohar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(507, 1, 'Gandaria', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(508, 1, 'Gulshan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(509, 1, 'Hazaribag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(510, 1, 'Jatrabari', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(511, 1, 'Kafrul', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(512, 1, 'Kalabagan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(513, 1, 'Kamrangirchar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(514, 1, 'Keraniganj', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(515, 1, 'Khilgaon', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(516, 1, 'Khilkhet', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(517, 1, 'Kotwali', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(518, 1, 'Lalbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(519, 1, 'Mirpur Model', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(520, 1, 'Mohammadpur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(521, 1, 'Motijheel', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(522, 1, 'Mugda', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(523, 1, 'Nawabganj', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(524, 1, 'New Market', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(525, 1, 'Pallabi', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(526, 1, 'Paltan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(527, 1, 'Ramna', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(528, 1, 'Rampura', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(529, 1, 'Rupnagar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(530, 1, 'Sabujbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(531, 1, 'Savar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(532, 1, 'Shah Ali', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(533, 1, 'Shahbag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(534, 1, 'Shahjahanpur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(535, 1, 'Sherebanglanagar', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(536, 1, 'Shyampur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(537, 1, 'Sutrapur', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(538, 1, 'Tejgaon', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(539, 1, 'Tejgaon I/A', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(540, 1, 'Turag', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(541, 1, 'Uttara', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(542, 1, 'Uttara West', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(543, 1, 'Uttarkhan', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(544, 1, 'Vatara', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(545, 1, 'Wari', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(546, 1, 'Others', NULL, '2016-04-06 11:00:33', '0000-00-00 00:00:00'),
(547, 35, 'Airport', 'এয়ারপোর্ট', '2016-04-06 11:23:08', '0000-00-00 00:00:00'),
(548, 35, 'Kawnia', 'কাউনিয়া', '2016-04-06 11:24:40', '0000-00-00 00:00:00'),
(549, 35, 'Bondor', 'বন্দর', '2016-04-06 11:27:19', '0000-00-00 00:00:00'),
(550, 35, 'Others', 'অন্যান্য', '2016-04-06 11:28:14', '0000-00-00 00:00:00'),
(551, 24, 'Boalia', 'বোয়ালিয়া', '2016-04-06 11:32:13', '0000-00-00 00:00:00'),
(552, 24, 'Motihar', 'মতিহার', '2016-04-06 11:33:00', '0000-00-00 00:00:00'),
(553, 24, 'Shahmokhdum', 'শাহ্ মকখদুম ', '2016-04-06 11:36:15', '0000-00-00 00:00:00'),
(554, 24, 'Rajpara', 'রাজপারা ', '2016-04-06 11:38:32', '0000-00-00 00:00:00'),
(555, 24, 'Others', 'অন্যান্য', '2016-04-06 11:39:09', '0000-00-00 00:00:00'),
(556, 43, 'Akborsha', 'Akborsha', '2016-04-06 11:57:01', '0000-00-00 00:00:00'),
(557, 43, 'Baijid bostami', 'বাইজিদ বোস্তামী', '2016-04-06 12:09:38', '0000-00-00 00:00:00'),
(558, 43, 'Bakolia', 'বাকোলিয়া', '2016-04-06 12:10:52', '0000-00-00 00:00:00'),
(559, 43, 'Bandar', 'বন্দর', '2016-04-06 12:11:53', '0000-00-00 00:00:00'),
(560, 43, 'Chandgaon', 'চাঁদগাও', '2016-04-06 12:12:34', '0000-00-00 00:00:00'),
(561, 43, 'Chokbazar', 'চকবাজার', '2016-04-06 12:13:10', '0000-00-00 00:00:00'),
(562, 43, 'Doublemooring', 'ডাবল মুরিং', '2016-04-06 12:14:10', '0000-00-00 00:00:00'),
(563, 43, 'EPZ', 'ইপিজেড', '2016-04-06 12:14:55', '0000-00-00 00:00:00'),
(564, 43, 'Hali Shohor', 'হলী শহর', '2016-04-06 12:15:54', '0000-00-00 00:00:00'),
(565, 43, 'Kornafuli', 'কর্ণফুলি', '2016-04-06 12:16:29', '0000-00-00 00:00:00'),
(566, 43, 'Kotwali', 'কোতোয়ালী', '2016-04-06 12:17:08', '0000-00-00 00:00:00'),
(567, 43, 'Kulshi', 'কুলশি', '2016-04-06 12:18:09', '0000-00-00 00:00:00'),
(568, 43, 'Pahartali', 'পাহাড়তলী', '2016-04-06 12:19:26', '0000-00-00 00:00:00'),
(569, 43, 'Panchlaish', 'পাঁচলাইশ', '2016-04-06 12:20:24', '0000-00-00 00:00:00'),
(570, 43, 'Potenga', 'পতেঙ্গা', '2016-04-06 12:21:20', '0000-00-00 00:00:00'),
(571, 43, 'Shodhorgat', 'সদরঘাট', '2016-04-06 12:22:19', '0000-00-00 00:00:00'),
(572, 43, 'Others', 'অন্যান্য', '2016-04-06 12:22:51', '0000-00-00 00:00:00'),
(573, 44, 'Others', 'অন্যান্য', '2016-04-06 12:37:59', '0000-00-00 00:00:00'),
(574, 59, 'Aranghata', 'আড়াংঘাটা', '2016-04-06 13:30:50', '0000-00-00 00:00:00'),
(575, 59, 'Daulatpur', 'দৌলতপুর', '2016-04-06 13:32:12', '0000-00-00 00:00:00'),
(576, 59, 'Harintana', 'হারিন্তানা ', '2016-04-06 13:34:06', '0000-00-00 00:00:00'),
(577, 59, 'Horintana', 'হরিণতানা ', '2016-04-06 13:35:11', '0000-00-00 00:00:00'),
(578, 59, 'Khalishpur', 'খালিশপুর', '2016-04-06 13:35:56', '0000-00-00 00:00:00'),
(579, 59, 'Khanjahan Ali', 'খানজাহান আলী', '2016-04-06 13:37:14', '0000-00-00 00:00:00'),
(580, 59, 'Khulna Sadar', 'খুলনা সদর', '2016-04-06 13:37:58', '0000-00-00 00:00:00'),
(581, 59, 'Labanchora', 'লাবানছোরা', '2016-04-06 13:39:23', '0000-00-00 00:00:00'),
(582, 59, 'Sonadanga', 'সোনাডাঙ্গা', '2016-04-06 13:40:22', '0000-00-00 00:00:00'),
(583, 59, 'Others', 'অন্যান্য', '2016-04-06 13:42:14', '0000-00-00 00:00:00'),
(584, 2, 'Others', 'অন্যান্য', '2016-04-06 13:43:56', '0000-00-00 00:00:00'),
(585, 4, 'Others', 'অন্যান্য', '2016-04-06 13:45:07', '0000-00-00 00:00:00'),
(586, 5, 'Others', 'অন্যান্য', '2016-04-06 13:46:18', '0000-00-00 00:00:00'),
(587, 54, 'Airport', 'বিমানবন্দর', '2016-04-06 13:54:47', '0000-00-00 00:00:00'),
(588, 54, 'Hazrat Shah Paran', 'হযরত শাহ পরাণ', '2016-04-06 13:57:13', '0000-00-00 00:00:00'),
(589, 54, 'Jalalabad', 'জালালাবাদ', '2016-04-06 13:58:15', '0000-00-00 00:00:00'),
(590, 54, 'Kowtali', 'কোতোয়ালী', '2016-04-06 13:59:27', '0000-00-00 00:00:00'),
(591, 54, 'Moglabazar', 'মোগলাবাজার', '2016-04-06 14:00:58', '0000-00-00 00:00:00'),
(592, 54, 'Osmani Nagar', 'ওসমানী নগর', '2016-04-06 14:01:36', '0000-00-00 00:00:00'),
(593, 54, 'South Surma', 'দক্ষিণ সুরমা', '2016-04-06 14:02:16', '0000-00-00 00:00:00'),
(594, 54, 'Others', 'অন্যান্য', '2016-04-06 14:03:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouseId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `project_turnId` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouseId`, `name`, `mobile`, `email`, `description`, `location`, `project_turnId`, `created_on`, `created_by`) VALUES
(6, 'Warhouse (Food Mills)', '+8801444444', 'email@yahoo.com', 'Warhouse (Food Mills)', 'naogaon', 10, '0000-00-00 00:00:00', ''),
(7, 'Warhouse (Agro Plant)', '+88002222', 'email@yahoo.com', 'Warhouse (Agro Plant)', 'Santahar', 11, '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `agentinfo`
--
ALTER TABLE `agentinfo`
  ADD PRIMARY KEY (`agentinfoId`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `chartofaccount`
--
ALTER TABLE `chartofaccount`
  ADD PRIMARY KEY (`chartofaccountID`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collectionId`);

--
-- Indexes for table `contact_person`
--
ALTER TABLE `contact_person`
  ADD PRIMARY KEY (`contact_personId`),
  ADD KEY `projectId` (`projectId`);

--
-- Indexes for table `cost_center`
--
ALTER TABLE `cost_center`
  ADD PRIMARY KEY (`cost_centerId`);

--
-- Indexes for table `dailytransaction`
--
ALTER TABLE `dailytransaction`
  ADD PRIMARY KEY (`tranID`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`documentId`);

--
-- Indexes for table `groupleaderinfo`
--
ALTER TABLE `groupleaderinfo`
  ADD PRIMARY KEY (`groupleaderId`);

--
-- Indexes for table `issuesdetails`
--
ALTER TABLE `issuesdetails`
  ADD PRIMARY KEY (`issueDetailsId`);

--
-- Indexes for table `issuesinvoice`
--
ALTER TABLE `issuesinvoice`
  ADD PRIMARY KEY (`issueInvoiceId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `item_group`
--
ALTER TABLE `item_group`
  ADD PRIMARY KEY (`item_groupId`);

--
-- Indexes for table `measurement_unit`
--
ALTER TABLE `measurement_unit`
  ADD PRIMARY KEY (`measurement_unitId`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passengerId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `project_turn`
--
ALTER TABLE `project_turn`
  ADD PRIMARY KEY (`project_turnId`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`purchaseDetailsID`);

--
-- Indexes for table `purchaseinvoice`
--
ALTER TABLE `purchaseinvoice`
  ADD PRIMARY KEY (`purchaseInvoiceId`);

--
-- Indexes for table `purchasereturn`
--
ALTER TABLE `purchasereturn`
  ADD PRIMARY KEY (`purchasereturnId`);

--
-- Indexes for table `purchaseservice`
--
ALTER TABLE `purchaseservice`
  ADD PRIMARY KEY (`serviceId`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_orderId`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`purchase_order_detailsId`);

--
-- Indexes for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD PRIMARY KEY (`salesDetailsID`);

--
-- Indexes for table `salesinvoice`
--
ALTER TABLE `salesinvoice`
  ADD PRIMARY KEY (`salesInvoiceId`);

--
-- Indexes for table `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`salesOrderId`);

--
-- Indexes for table `salesorderdetails`
--
ALTER TABLE `salesorderdetails`
  ADD PRIMARY KEY (`salesOrderDetailsID`);

--
-- Indexes for table `salesreturn`
--
ALTER TABLE `salesreturn`
  ADD PRIMARY KEY (`salesreturnId`);

--
-- Indexes for table `salesservice`
--
ALTER TABLE `salesservice`
  ADD PRIMARY KEY (`salesServiceID`);

--
-- Indexes for table `servicelist`
--
ALTER TABLE `servicelist`
  ADD PRIMARY KEY (`servicelistId`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `stock_in`
--
ALTER TABLE `stock_in`
  ADD PRIMARY KEY (`itemreceiveID`);

--
-- Indexes for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD PRIMARY KEY (`stock_transferId`);

--
-- Indexes for table `supplierinfo`
--
ALTER TABLE `supplierinfo`
  ADD PRIMARY KEY (`supplierinfoId`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agentinfo`
--
ALTER TABLE `agentinfo`
  MODIFY `agentinfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bankid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_person`
--
ALTER TABLE `contact_person`
  MODIFY `contact_personId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cost_center`
--
ALTER TABLE `cost_center`
  MODIFY `cost_centerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dailytransaction`
--
ALTER TABLE `dailytransaction`
  MODIFY `tranID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `documentId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupleaderinfo`
--
ALTER TABLE `groupleaderinfo`
  MODIFY `groupleaderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `issuesdetails`
--
ALTER TABLE `issuesdetails`
  MODIFY `issueDetailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `issuesinvoice`
--
ALTER TABLE `issuesinvoice`
  MODIFY `issueInvoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item_group`
--
ALTER TABLE `item_group`
  MODIFY `item_groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `measurement_unit`
--
ALTER TABLE `measurement_unit`
  MODIFY `measurement_unitId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_turn`
--
ALTER TABLE `project_turn`
  MODIFY `project_turnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  MODIFY `purchaseDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchaseinvoice`
--
ALTER TABLE `purchaseinvoice`
  MODIFY `purchaseInvoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchasereturn`
--
ALTER TABLE `purchasereturn`
  MODIFY `purchasereturnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_orderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `purchase_order_detailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesdetails`
--
ALTER TABLE `salesdetails`
  MODIFY `salesDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `salesinvoice`
--
ALTER TABLE `salesinvoice`
  MODIFY `salesInvoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salesorder`
--
ALTER TABLE `salesorder`
  MODIFY `salesOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salesorderdetails`
--
ALTER TABLE `salesorderdetails`
  MODIFY `salesOrderDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salesreturn`
--
ALTER TABLE `salesreturn`
  MODIFY `salesreturnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_in`
--
ALTER TABLE `stock_in`
  MODIFY `itemreceiveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  MODIFY `stock_transferId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplierinfo`
--
ALTER TABLE `supplierinfo`
  MODIFY `supplierinfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
