create database HMS_project;

use HMS_project;

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
);

INSERT INTO `admintb` (`username`, `password`) VALUES
('root', '1234');


CREATE TABLE `appointmenttb` (
  `pid` int NOT NULL  ,
  `ID` int NOT NULL PRIMARY KEY auto_increment,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int NOT NULL,
  `doctorStatus` int NOT NULL
);

-- Inserting into appointmenttb
INSERT INTO appointmenttb (pid, fname, lname, gender, email, contact, doctor, docFees, appdate, apptime, userStatus, doctorStatus) 
VALUES 
(101, 'Rahul', 'Sharma', 'Male', 'rahul.sharma@example.com', '9876543210', 'Dr. Gupta', 500, '2024-04-11', '10:00', 1, 1),
(102, 'Priya', 'Patel', 'Female', 'priya.patel@example.com', '8765432109', 'Dr. Gupta', 500, '2024-04-12', '11:30', 1, 1),
(103, 'Vikram', 'Singh', 'Male', 'vikram.singh@example.com', '7654321098', 'Dr. Gupta', 500, '2024-04-13', '14:00', 1, 1),
(104, 'Ananya', 'Joshi', 'Female', 'ananya.joshi@example.com', '6543210987', 'Dr. Khan', 600, '2024-04-14', '15:30', 1, 1),
(105, 'Rohan', 'Patel', 'Male', 'rohan.patel@example.com', '5432109876', 'Dr. Khan', 600, '2024-04-15', '16:30', 1, 1),
(106, 'Naina', 'Desai', 'Female', 'naina.desai@example.com', '4321098765', 'Dr. Khan', 600, '2024-04-16', '17:30', 1, 1),
(107, 'Ajay', 'Mehta', 'Male', 'ajay.mehta@example.com', '3210987654', 'Dr. Sharma', 550, '2024-04-17', '18:30', 1, 1),
(108, 'Pooja', 'Trivedi', 'Female', 'pooja.trivedi@example.com', '2109876543', 'Dr. Sharma', 550, '2024-04-18', '19:30', 1, 1),
(109, 'Aarav', 'Patel', 'Male', 'aarav.patel@example.com', '1098765432', 'Dr. Sharma', 550, '2024-04-19', '20:30', 1, 1),
(110, 'Kavya', 'Sharma', 'Female', 'kavya.sharma@example.com', '0987654321', 'Dr. Sharma', 550, '2024-04-20', '21:30', 1, 1);



-- Table structure for table `doctb`


CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int NOT NULL
)  ;

-- Inserting into doctb
INSERT INTO doctb (username, password, email, spec, docFees) 
VALUES 
('dr_gupta', 'pass123', 'dr.gupta@example.com', 'General Health', 500),
('dr_khan', 'pass456', 'dr.khan@example.com', 'Pediatrics', 600),
('dr_sharma', 'pass789', 'dr.sharma@example.com', 'Cardiology', 550);
-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ;

-- Inserting into patreg
INSERT INTO patreg (pid, fname, lname, gender, email, contact, password, cpassword) 
VALUES 
(201, 'Aryan', 'Gupta', 'Male', 'aryan.gupta@example.com', '9876543210', 'pass123', 'pass123'),
(202, 'Diya', 'Patel', 'Female', 'diya.patel@example.com', '8765432109', 'pass456', 'pass456'),
(203, 'Arjun', 'Singh', 'Male', 'arjun.singh@example.com', '7654321098', 'pass789', 'pass789'),
(204, 'Aisha', 'Joshi', 'Female', 'aisha.joshi@example.com', '6543210987', 'passabc', 'passabc'),
(205, 'Ravi', 'Verma', 'Male', 'ravi.verma@example.com', '5432109876', 'pass1234', 'pass1234'),
(206, 'Maya', 'Shah', 'Female', 'maya.shah@example.com', '4321098765', 'pass567', 'pass567'),
(207, 'Neeraj', 'Kumar', 'Male', 'neeraj.kumar@example.com', '3210987654', 'pass890', 'pass890'),
(208, 'Nisha', 'Reddy', 'Female', 'nisha.reddy@example.com', '2109876543', 'passabc1', 'passabc1'),
(209, 'Ishaan', 'Chatterjee', 'Male', 'ishaan.chatterjee@example.com', '1098765432', 'pass234', 'pass234'),
(210, 'Kirti', 'Sharma', 'Female', 'kirti.sharma@example.com', '0987654321', 'pass5678', 'pass5678');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int NOT NULL,
  `ID` int NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ;

-- Inserting into prestb
INSERT INTO prestb (doctor, pid, ID, fname, lname, appdate, apptime, disease, allergy, prescription) 
VALUES 
('Dr. Gupta', 201, 1, 'Aryan', 'Gupta', '2024-04-11', '10:00', 'Fever', 'Penicillin', 'Paracetamol'),
('Dr. Gupta', 202, 2, 'Diya', 'Patel', '2024-04-12', '11:30', 'Cold', 'Dust', 'Antihistamines'),
('Dr. Gupta', 203, 3, 'Arjun', 'Singh', '2024-04-13', '14:00', 'Hypertension', 'Shellfish', 'Amlodipine'),
('Dr. Khan', 204, 4, 'Aisha', 'Joshi', '2024-04-14', '15:30', 'Acne', 'Salicylic Acid', 'Retin');
