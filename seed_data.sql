-- Clear existing data (optional - comment out if you want to keep existing data)
DELETE FROM semesters;
DELETE FROM courses;
DELETE FROM colleges;

-- Insert Colleges, Courses, and Semesters
-- Note: This uses LAST_INSERT_ID() to link courses to colleges and semesters to courses

-- 1. Alliance University
INSERT INTO colleges (name, location) VALUES ('Alliance University', 'Bangalore');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'MCA');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 2. Takshashila University
INSERT INTO colleges (name, location) VALUES ('Takshashila University', 'Villupuram');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 3. AMET University
INSERT INTO colleges (name, location) VALUES ('AMET University', 'Chennai');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Artificial Intelligence & Data Science');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 4. Noorul Islam Centre For Higher Education
INSERT INTO colleges (name, location) VALUES ('Noorul Islam Centre For Higher Education', 'Kanyakumari');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom with E-commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 5. VMRF Chennai Campus, School of Arts & Science
INSERT INTO colleges (name, location) VALUES ('VMRF Chennai Campus, School of Arts & Science', 'Chennai');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 6. Rathinam College of Arts & Science
INSERT INTO colleges (name, location) VALUES ('Rathinam College of Arts & Science', 'Coimbatore');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA in specialization with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CT specialization with Gen AI');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 7. Sasurie College of Arts & Science
INSERT INTO colleges (name, location) VALUES ('Sasurie College of Arts & Science', 'Tiruppur');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Artificial Intelligence & Data Science');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS in specialization with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc IT in specialization with Artificial Intelligence & Machine Learning');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom PA specialization in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 8. SDNB Vaishnav College for Women
INSERT INTO colleges (name, location) VALUES ('SDNB Vaishnav College for Women', 'Chennai');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS with Artificial Intelligence - Shift 1');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS with Artificial Intelligence - Shift 2');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Data Science & Artificial Intelligence - Shift 1');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc with Data Science & Artificial Intelligence - Shift 2');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom specialization in FinTech and Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with Digital Marketing & Business Analytics - Shift 1');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with Digital Marketing & Business Analytics - Shift 2');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 9. Sree Saraswathi Thyagaraja College
INSERT INTO colleges (name, location) VALUES ('Sree Saraswathi Thyagaraja College', 'Pollachi');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA in specialization with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'MCA specialization with AI and ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 10. Bharathidasan College of Arts and Science
INSERT INTO colleges (name, location) VALUES ('Bharathidasan College of Arts and Science', 'Erode');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CT in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA CA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom PA specialization in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 11. Kamaraj College
INSERT INTO colleges (name, location) VALUES ('Kamaraj College', 'Tuticorin');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA in specialization with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom Hons with CA');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 12. Kamaraj Women's College
INSERT INTO colleges (name, location) VALUES ('Kamaraj Women''s College', 'Thoothukudi');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS with AI');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 13. Terfs Academy College of Arts and Science
INSERT INTO colleges (name, location) VALUES ('Terfs Academy College of Arts and Science', 'Tiruppur');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc IT in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 14. Sri Amaravathi College of Arts and Science
INSERT INTO colleges (name, location) VALUES ('Sri Amaravathi College of Arts and Science', 'Karur');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc (AI & ML)');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA in specialization with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom specialization in FinTech with AI');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 15. TJS College of Arts and Science
INSERT INTO colleges (name, location) VALUES ('TJS College of Arts and Science', 'Tiruvallur');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS (AI)');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom CA specialization in FinTech with AI');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 16. Sasurie Arts, Science & Research College
INSERT INTO colleges (name, location) VALUES ('Sasurie Arts, Science & Research College', 'Coimbatore');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc (AI & DS)');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc IT in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom specialization in FinTech with AI');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 17. DLR Arts & Science College
INSERT INTO colleges (name, location) VALUES ('DLR Arts & Science College', 'Ranipet');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA in specialization with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom specialization in FinTech with Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

-- 18. Patrician College of Arts & Science
INSERT INTO colleges (name, location) VALUES ('Patrician College of Arts & Science', 'Chennai');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 19. Asian School of Business
INSERT INTO colleges (name, location) VALUES ('Asian School of Business', 'Trivandrum');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCA with Data Science & Artificial Intelligence');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS in specialization with AI & ML');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

-- 20. Nagarathinam Angalammal Arts and Science
INSERT INTO colleges (name, location) VALUES ('Nagarathinam Angalammal Arts and Science', 'Madurai');
SET @college_id = LAST_INSERT_ID();

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS (AI)');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc (CS) cloud computing & cyber security');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc (CS) Animation & Game Designing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BSc CS (DS)');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)'),
(@course_id, 2, 'Academic Curriculum + Front End Development'),
(@course_id, 3, 'Academic Curriculum + Data Structures & Algorithms'),
(@course_id, 4, 'Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BCom Fintech and Blockchain');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Python Programming, Finance Related Subjects'),
(@course_id, 2, 'Academic Curriculum + Introduction to GST, Machine Learning in Finance'),
(@course_id, 3, 'Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance'),
(@course_id, 4, 'Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy'),
(@course_id, 5, 'Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications'),
(@course_id, 6, 'Academic Curriculum + Internship + Placement');

INSERT INTO courses (college_id, name) VALUES (@college_id, 'BBA with E-Commerce & Digital Marketing');
SET @course_id = LAST_INSERT_ID();
INSERT INTO semesters (course_id, semester, topics) VALUES 
(@course_id, 1, 'Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration'),
(@course_id, 2, 'Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business'),
(@course_id, 3, 'Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management'),
(@course_id, 4, 'Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit'),
(@course_id, 5, 'Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage'),
(@course_id, 6, 'Academic Curriculum + Capstone Projects + Placement');

