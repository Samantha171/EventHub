CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(40) UNIQUE,
    hod VARCHAR(30),
    director VARCHAR(30),
    dept_email VARCHAR(40) UNIQUE,
    dept_website VARCHAR(50) UNIQUE
);

INSERT INTO department VALUES
(1, 'Computer Science', 'Dr. Smith', 'Dr. Johnson', 'cs@university.edu', 'www.cs.university.edu'),
(2, 'Electrical Engineering', 'Dr. Williams', 'Dr. Brown', 'ee@psgtech.ac.in', 'www.ee.psgtech.ac.in'),
(3, 'Mechanical Engineering', 'Dr. Jones', 'Dr. Garcia', 'me@psgtech.ac.in', 'www.me.psgtech.ac.in'),
(4, 'AMCS', 'Dr. Shina Sheen', 'Dr. R. Nadarajan', 'amcs@psgtech.ac.in', 'www.amcs.psgtech.ac.in');


CREATE TABLE venue(
    v_id INT PRIMARY KEY,
    v_name VARCHAR(30) UNIQUE,
    v_block VARCHAR(20),
    capacity INT, 
    v_email VARCHAR(40),
    v_contact BIGINT UNIQUE CHECK (v_contact <= 9999999999)
);

INSERT INTO venue VALUES
(1, 'Conference Hall', 'D Block', 400, 'conference_d@edu', 9789237963),
(2, 'Assembly Hall', 'F Block', 250, 'assembly_f@edu', 8297037432),
(3, 'SIL', 'M Block', 60, 'sil_m@university.edu', 9238693463),
(4, 'Quadrangle', 'A Block', 400, 'quadrangle_a@edu', 9123888886),
(5, 'Library', 'Y Block', 200, 'library@edu', 8632387436);


CREATE TABLE events(
    eid INT PRIMARY KEY,
    ename VARCHAR(20),
    eemail VARCHAR(40),
    econtact VARCHAR(10)
);

ALTER TABLE events
ADD start_date DATE,
ADD end_date DATE,
ADD event_coordinator VARCHAR(40),
ADD dept_id INT,
ADD v_id INT;

ALTER TABLE events
ADD FOREIGN KEY (dept_id) REFERENCES department(dept_id),
ADD FOREIGN KEY (v_id) REFERENCES venue(v_id);

INSERT INTO events VALUES
(1, 'login', 'login@example.com', '1234567890', '2024-11-01', '2024-11-02', 'Alice Smith', 1, 1),
(2, 'shrishti', 'shrishti@example.com', '2345678901', '2024-11-05', '2024-11-06', 'Bob Johnson', 2, 2),
(3, 'axios', 'axios@example.com', '3456789012', '2024-11-10', '2024-11-11', 'Charlie Brown', 1, 3),
(4, 'thiran', 'thiran@example.com', '4567890123', '2024-11-15', '2024-11-16', 'Diana Prince', 3, 1),
(5, 'intrams', 'intrams@example.com', '5678901234', '2024-11-20', '2024-11-21', 'Ethan Hunt', 2, 2);


CREATE TABLE sponsors (
    sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(15),
    amount DECIMAL(10,2),
    mode_of_transaction VARCHAR(30),
    ratings INT,
    sponsor_contactno BIGINT UNIQUE,
    eid INT,
    address VARCHAR(30),
    FOREIGN KEY (eid) REFERENCES events(eid)
);


INSERT INTO sponsors VALUES
(1, 'TechCorp', 50000.00, 'Bank Transfer', 4, 9876543210, 1, '123 Main St'),
(2, 'GreenEnergy', 75000.00, 'Cheque', 5, 9876543211, 2, '456 Green Blvd'),
(3, 'InnovateX', 60000.00, 'Credit Card', 3, 9876543212, 3, '789 Innovation Ave'),
(4, 'EduFund', 30000.00, 'UPI', 4, 9876543213, 1, '101 Knowledge Rd'),
(5, 'BuildIT', 45000.00, 'Bank Transfer', 5, 9876543214, 4, '202 Construction Dr');

CREATE TABLE contests (
    contest_id VARCHAR(20) PRIMARY KEY,
    contest_name VARCHAR(50),
    event_id INT,
    start_time DATETIME,
    end_time DATETIME,
    venue_id INT,
    registration_fee DECIMAL(10,2),
    contest_email VARCHAR(40),
    coordinator VARCHAR(30),
    coordinator_contact BIGINT UNIQUE CHECK (coordinator_contact <= 9999999999),
    FOREIGN KEY (event_id) REFERENCES events(eid),
    FOREIGN KEY (venue_id) REFERENCES venue(v_id)
);
INSERT INTO contests VALUES
('C001','Coding Challenge',1,'2024-11-01 09:00:00','2024-11-01 17:00:00',1,100,'coding@event.com','Alice Smith',9876543210),
('C002','Art Competition',1,'2024-11-02 10:00:00','2024-11-02 16:00:00',2,50,'art@event.com','Bob Johnson',9123456780),
('C003','Debate Championship',2,'2024-11-03 11:00:00','2024-11-03 15:00:00',3,75,'debate@event.com','Charlie Brown',9988776655),
('C004','Science Fair',2,'2024-11-04 09:30:00','2024-11-04 14:30:00',4,60,'science@event.com','Diana Prince',8765432109),
('C005','CodeFest',2,'2024-11-25 10:00:00','2024-11-25 18:00:00',2,300,'codefest@example.com','Ethan Hunt',5678901234),
('C006','Robotics Battle',3,'2024-12-01 09:00:00','2024-12-01 17:00:00',1,150,'robotics@example.com','Charlie Brown',3456789012),
('C007','Art and Design Contest',4,'2024-12-05 10:00:00','2024-12-05 16:00:00',2,100,'artcontest@example.com','Diana Prince',4567890123),
('C008','Hackathon 2024',1,'2024-12-10 09:00:00','2024-12-11 18:00:00',1,500,'hackathon@example.com','Bob Johnson',2345678901),
('C009','Intams Contest',5,'2024-11-10 09:00:00','2024-11-10 17:00:00',1,100,'axioscontest@example.com','Charlie Brown',6734645654),
('C0010','Thiran Contest',4,'2024-11-15 10:00:00','2024-11-15 18:00:00',1,150,'thirancontest@example.com','Diana Prince',4567890142),
('C0011','Intrams Cultural fest',5,'2024-11-05 09:00:00','2024-11-05 17:00:00',2,200,'shrishticontest@example.com','Bob Johnson',2345678900),
('C0012','Axios Sports Competition',3,'2024-11-20 08:00:00','2024-11-20 17:00:00',2,150,'intramsports@example.com','Ethan Hunt',5678907234),
('C0013','Axios Cultural Fest',3,'2024-12-15 10:00:00','2024-12-15 19:00:00',1,200,'thirancultural@example.com','Diana Prince',4567890723);

CREATE TABLE volunteers(
    volunteer_id VARCHAR(10) PRIMARY KEY,
    volunteer_roll_no VARCHAR(20) UNIQUE,
    volunteer_name VARCHAR(20),
    volunteer_age INT,
    volunteer_contact BIGINT UNIQUE CHECK(volunteer_contact <= 9999999999),
    volunteer_email VARCHAR(40) UNIQUE,
    dept_id INT,
    eid INT,
    FOREIGN KEY (eid) REFERENCES events(eid),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
INSERT INTO volunteers VALUES
('1','AMCS06','Sindhiya',20,1234567890,'sindhiya@yahoo.com',4,1),
('2','EE202','Ashrithaa',21,1234567891,'ashrithaa@gmail.com',2,2),
('3','ME303','Dhanyashree',22,1234567892,'dhanya@email.com',3,3),
('4','CS404','Samantha',23,1234567893,'samantha@yahoo.com',1,4),
('5','AMCS33','Sruthi',24,1234567894,'sruthi@gmail.com',4,2);


CREATE TABLE registration (
    participant_id INT AUTO_INCREMENT PRIMARY KEY,
    participant_name VARCHAR(30),
    college VARCHAR(50),
    participant_age INT,
    participant_gender CHAR(1) CHECK (participant_gender IN ('F','M')),
    dept_name VARCHAR(40),
    participant_contact BIGINT UNIQUE CHECK(participant_contact <= 9999999999),
    participant_email VARCHAR(40) UNIQUE,
    payment_status VARCHAR(20) CHECK(payment_status IN ('Received','Pending')),
    registration_date DATE,
    contest_id VARCHAR(20),
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES events(eid),
    FOREIGN KEY (contest_id) REFERENCES contests(contest_id)
);
INSERT INTO registration (participant_name, college, participant_age, participant_gender, dept_name, participant_contact, participant_email, payment_status, registration_date, contest_id, event_id) 
VALUES 
('John Doe','ABC College',20,'M','Computer Science',9876543210,'john.doe@example.com','Received','2024-10-15','C001',1),
('Jane Smith','XYZ University',22,'F','Arts',9123456780,'smith@example.com','Pending','2024-10-20','C002',1),
('Alice Johnson','LMN Institute',19,'F','Physics',9988776655,'alice.j@example.com','Received','2024-10-18','C003',2),
('Michael Brown','OPQ College',21,'M','Biology',8765432109,'michael@example.com','Received','2024-10-22','C004',2);

INSERT INTO registration (participant_name, college, participant_age, participant_gender, dept_name, participant_contact, participant_email, payment_status, registration_date, contest_id, event_id) 
VALUES 
('John Doe','ABC College',20,'M','Computer Science',9876543211,'john.doe2@example.com','Received','2024-10-15','C003',2);
