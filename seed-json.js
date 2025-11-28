const fs = require('fs').promises;
const path = require('path');

const DATA_FILE = path.join(__dirname, 'data.json');

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

async function seedJSON() {
  try {
    console.log('🌱 Seeding JSON file...');
    
    // Convert to format with IDs
    let idCounter = 1;
    const colleges = collegesData.map(college => {
      const collegeId = idCounter++;
      let courseIdCounter = 1;
      
      const courses = college.courses.map(course => {
        const courseId = courseIdCounter++;
        let semesterIdCounter = 1;
        
        const semesters = course.semesters.map(sem => ({
          id: semesterIdCounter++,
          semester: sem.semester,
          topics: sem.topics
        }));
        
        return {
          id: courseId,
          name: course.name,
          semesters
        };
      });
      
      return {
        id: collegeId,
        name: college.name,
        location: college.location,
        courses
      };
    });
    
    const data = { colleges };
    await fs.writeFile(DATA_FILE, JSON.stringify(data, null, 2), 'utf8');
    
    console.log('\n✅ JSON file seeded successfully!');
    console.log(`📊 Total: ${colleges.length} colleges, ${colleges.reduce((sum, c) => sum + c.courses.length, 0)} courses`);
    console.log(`📁 File saved to: ${DATA_FILE}`);
    
  } catch (error) {
    console.error('❌ Error seeding JSON file:', error);
    process.exit(1);
  }
}

// Run seed
seedJSON();

