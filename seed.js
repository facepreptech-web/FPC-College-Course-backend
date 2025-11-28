const mysql = require('mysql2/promise');

// Database configuration - Hardcoded credentials (no .env needed)
const dbConfig = {
  host: 'srv1832.hstgr.io', // or use IP: '193.203.184.203'
  database: 'u461595815_fpc',
  user: 'u461595815_fpcadmin',
  password: 'f7McCB4#6IE!',
};

// Initial data to seed
const collegesData = [
  {
    name: "Alliance University",
    location: "Bangalore",
    courses: [
      { name: "BCA", semesters: createTechSemesters() },
      { name: "MCA", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Takshashila University",
    location: "Villupuram",
    courses: [
      { name: "BSc CS with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BBA with E-commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
      { name: "BCom in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "AMET University",
    location: "Chennai",
    courses: [
      { name: "BSc with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BCom in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
      { name: "BSc with Artificial Intelligence & Data Science", semesters: createTechSemesters() },
      { name: "BBA with E-commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "Noorul Islam Centre For Higher Education",
    location: "Kanyakumari",
    courses: [
      { name: "BSc with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BCom with E-commerce & Digital Marketing", semesters: createFinTechSemesters() },
      { name: "BCom in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "VMRF Chennai Campus, School of Arts & Science",
    location: "Chennai",
    courses: [
      { name: "BSc CS with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BCom in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "Rathinam College of Arts & Science",
    location: "Coimbatore",
    courses: [
      { name: "BCA in specialization with Artificial Intelligence", semesters: createTechSemesters() },
      { name: "BSc CT specialization with Gen AI", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Sasurie College of Arts & Science",
    location: "Tiruppur",
    courses: [
      { name: "BSc with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BSc with Artificial Intelligence & Data Science", semesters: createTechSemesters() },
      { name: "BSc CS in specialization with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BSc IT in specialization with Artificial Intelligence & Machine Learning", semesters: createTechSemesters() },
      { name: "BCom PA specialization in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "SDNB Vaishnav College for Women",
    location: "Chennai",
    courses: [
      { name: "BSc CS with Artificial Intelligence - Shift 1", semesters: createTechSemesters() },
      { name: "BSc CS with Artificial Intelligence - Shift 2", semesters: createTechSemesters() },
      { name: "BSc with Data Science & Artificial Intelligence - Shift 1", semesters: createTechSemesters() },
      { name: "BSc with Data Science & Artificial Intelligence - Shift 2", semesters: createTechSemesters() },
      { name: "BCom specialization in FinTech and Artificial Intelligence", semesters: createFinTechSemesters() },
      { name: "BBA with Digital Marketing & Business Analytics - Shift 1", semesters: createDigitalMarketingSemesters() },
      { name: "BBA with Digital Marketing & Business Analytics - Shift 2", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "Sree Saraswathi Thyagaraja College",
    location: "Pollachi",
    courses: [
      { name: "BBA in specialization with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
      { name: "MCA specialization with AI and ML", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Bharathidasan College of Arts and Science",
    location: "Erode",
    courses: [
      { name: "BSc CT in specialization with AI & ML", semesters: createTechSemesters() },
      { name: "BBA CA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
      { name: "BCom PA specialization in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "Kamaraj College",
    location: "Tuticorin",
    courses: [
      { name: "BCA in specialization with Artificial Intelligence", semesters: createTechSemesters() },
      { name: "BBA with Digital Marketing", semesters: createDigitalMarketingSemesters() },
      { name: "BCom Hons with CA", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "Kamaraj Women's College",
    location: "Thoothukudi",
    courses: [
      { name: "BSc CS with AI", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Terfs Academy College of Arts and Science",
    location: "Tiruppur",
    courses: [
      { name: "BSc IT in specialization with AI & ML", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Sri Amaravathi College of Arts and Science",
    location: "Karur",
    courses: [
      { name: "BSc (AI & ML)", semesters: createTechSemesters() },
      { name: "BCA in specialization with Artificial Intelligence", semesters: createTechSemesters() },
      { name: "BCom specialization in FinTech with AI", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "TJS College of Arts and Science",
    location: "Tiruvallur",
    courses: [
      { name: "BSc CS (AI)", semesters: createTechSemesters() },
      { name: "BCom CA specialization in FinTech with AI", semesters: createFinTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "Sasurie Arts, Science & Research College",
    location: "Coimbatore",
    courses: [
      { name: "BSc (AI & DS)", semesters: createTechSemesters() },
      { name: "BSc CS", semesters: createTechSemesters() },
      { name: "BSc IT in specialization with AI & ML", semesters: createTechSemesters() },
      { name: "BCom specialization in FinTech with AI", semesters: createFinTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
  {
    name: "DLR Arts & Science College",
    location: "Ranipet",
    courses: [
      { name: "BSc CS in specialization with AI & ML", semesters: createTechSemesters() },
      { name: "BCA in specialization with Artificial Intelligence", semesters: createTechSemesters() },
      { name: "BCom specialization in FinTech with Artificial Intelligence", semesters: createFinTechSemesters() },
    ],
  },
  {
    name: "Patrician College of Arts & Science",
    location: "Chennai",
    courses: [
      { name: "BSc CS in specialization with AI & ML", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Asian School of Business",
    location: "Trivandrum",
    courses: [
      { name: "BCA with Data Science & Artificial Intelligence", semesters: createTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
      { name: "BSc CS in specialization with AI & ML", semesters: createTechSemesters() },
    ],
  },
  {
    name: "Nagarathinam Angalammal Arts and Science",
    location: "Madurai",
    courses: [
      { name: "BSc CS (AI)", semesters: createTechSemesters() },
      { name: "BSc (CS) cloud computing & cyber security", semesters: createTechSemesters() },
      { name: "BSc (CS) Animation & Game Designing", semesters: createTechSemesters() },
      { name: "BSc CS (DS)", semesters: createTechSemesters() },
      { name: "BCom Fintech and Blockchain", semesters: createFinTechSemesters() },
      { name: "BBA with E-Commerce & Digital Marketing", semesters: createDigitalMarketingSemesters() },
    ],
  },
];

// Helper functions to create semester data
function createTechSemesters() {
  return [
    { semester: 1, topics: "Academic Curriculum + Fundamentals of Programming (Language aligned with University syllabus)" },
    { semester: 2, topics: "Academic Curriculum + Front End Development" },
    { semester: 3, topics: "Academic Curriculum + Data Structures & Algorithms" },
    { semester: 4, topics: "Academic Curriculum + Back-End Development or AI & Data Science.\n\nCertifications:\nUiPath Certifications, Adobe Certification Program, Celonis Rising Star Program" },
    { semester: 5, topics: "Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nMicrosoft Future Ready Talent, MongoDB Certification, Salesforce Virtual Internship" },
    { semester: 6, topics: "Academic Curriculum + Capstone Projects + Placement" },
  ];
}

function createFinTechSemesters() {
  return [
    { semester: 1, topics: "Academic Curriculum + Python Programming, Finance Related Subjects" },
    { semester: 2, topics: "Academic Curriculum + Introduction to GST, Machine Learning in Finance" },
    { semester: 3, topics: "Academic Curriculum + Investment Analysis and Portfolio Management, Financial Analytics, Corporate Finance" },
    { semester: 4, topics: "Academic Curriculum + Introduction to Block Chain, AI in Fraud Detection & Prevention, Fintech Entrepreneurship Start-up Strategy" },
    { semester: 5, topics: "Academic Curriculum + AI in credit score and lending, FinTech Security and Regulation, Cryptocurrency and Blockchain Applications" },
    { semester: 6, topics: "Academic Curriculum + Internship + Placement" },
  ];
}

function createDigitalMarketingSemesters() {
  return [
    { semester: 1, topics: "Academic Curriculum + Basics of Digital Marketing, Own Company GST Registration" },
    { semester: 2, topics: "Academic Curriculum + Website Creation in WordPress, Social Media Creation and Management, Identify and Manage a Local Business" },
    { semester: 3, topics: "Academic Curriculum + Social Media Marketing, PPC Marketing, SEO, SEMrush, E-Commerce Website Development and Management" },
    { semester: 4, topics: "Academic Curriculum + SEO-Google Analytics, SEM - Google Ads, Bing Ads, Email Marketing, CRM - Salesforce, ZOHO, Data Analytics - Google, Excel, Tableau.\n\nCertifications:\nContent Marketing and Inbound Marketing, Salesforce Virtual Internship, SEMrush and SEO Toolkit" },
    { semester: 5, topics: "Academic Curriculum + Company specific placement training, Internships.\n\nCertifications:\nGoogle Analytics, Google Ads and Google Digital Garage" },
    { semester: 6, topics: "Academic Curriculum + Capstone Projects + Placement" },
  ];
}

async function seedDatabase() {
  let connection;
  
  try {
    // Show connection details (without password)
    console.log('🔌 Attempting to connect to database...');
    console.log(`   Host: ${dbConfig.host}`);
    console.log(`   Database: ${dbConfig.database}`);
    console.log(`   User: ${dbConfig.user}`);
    
    // Connect to database
    connection = await mysql.createConnection(dbConfig);
    console.log('✅ Connected to database');

    // Clear existing data (optional - comment out if you want to keep existing data)
    console.log('🗑️  Clearing existing data...');
    await connection.query('DELETE FROM semesters');
    await connection.query('DELETE FROM courses');
    await connection.query('DELETE FROM colleges');
    console.log('✅ Existing data cleared');

    // Insert colleges, courses, and semesters
    console.log('🌱 Seeding database...');
    
    for (const college of collegesData) {
      // Insert college
      const [collegeResult] = await connection.query(
        'INSERT INTO colleges (name, location) VALUES (?, ?)',
        [college.name, college.location]
      );
      const collegeId = collegeResult.insertId;
      console.log(`  ✓ Added college: ${college.name}`);

      // Insert courses for this college
      for (const course of college.courses) {
        const [courseResult] = await connection.query(
          'INSERT INTO courses (college_id, name) VALUES (?, ?)',
          [collegeId, course.name]
        );
        const courseId = courseResult.insertId;
        console.log(`    ✓ Added course: ${course.name}`);

        // Insert semesters for this course
        for (const semester of course.semesters) {
          await connection.query(
            'INSERT INTO semesters (course_id, semester, topics) VALUES (?, ?, ?)',
            [courseId, semester.semester, semester.topics]
          );
        }
        console.log(`      ✓ Added ${course.semesters.length} semesters`);
      }
    }

    console.log('\n✅ Database seeded successfully!');
    console.log(`📊 Total: ${collegesData.length} colleges, ${collegesData.reduce((sum, c) => sum + c.courses.length, 0)} courses`);
    
  } catch (error) {
    console.error('\n❌ Error seeding database:');
    console.error(`   Code: ${error.code || 'Unknown'}`);
    console.error(`   Message: ${error.message || error}`);
    
    if (error.code === 'ECONNREFUSED') {
      console.error('\n💡 Connection refused. Possible issues:');
      console.error('   1. MySQL server is not running');
      console.error('   2. Wrong host/port in database configuration');
      console.error('   3. Firewall blocking the connection');
      console.error('   4. Database credentials are incorrect');
      console.error('\n📝 Check in hPanel:');
      console.error('   - Database host is correct: auth-db1832.hstgr.io');
      console.error('   - MySQL server is accessible from your machine');
    } else if (error.code === 'ER_ACCESS_DENIED_ERROR') {
      console.error('\n💡 Access denied. Check your database credentials:');
      console.error('   1. Password: Verify password in hPanel → Websites → Manage → Databases → MySQL Databases');
      console.error('   2. User ↔ Database link: Ensure u461595815_fpcadmin is assigned to u461595815_fpc with ALL PRIVILEGES');
      console.error('   3. Remote access: Check Remote MySQL settings - add your IP or % for remote access');
    } else if (error.code === 'ER_BAD_DB_ERROR') {
      console.error('\n💡 Database does not exist. Run setup.sql first to create the database');
    }
    
    process.exit(1);
  } finally {
    if (connection) {
      await connection.end();
      console.log('🔌 Database connection closed');
    }
  }
}

// Run seed
seedDatabase();

