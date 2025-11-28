const express = require('express');
const cors = require('cors');
const fs = require('fs').promises;
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// JSON file path
const DATA_FILE = path.join(__dirname, 'data.json');

// Helper function to read data from JSON file
async function readData() {
  try {
    const data = await fs.readFile(DATA_FILE, 'utf8');
    return JSON.parse(data);
  } catch (error) {
    // If file doesn't exist, return empty structure
    if (error.code === 'ENOENT') {
      return { colleges: [] };
    }
    throw error;
  }
}

// Helper function to write data to JSON file
async function writeData(data) {
  await fs.writeFile(DATA_FILE, JSON.stringify(data, null, 2), 'utf8');
}

// Helper function to generate next ID
function getNextId(items) {
  if (items.length === 0) return 1;
  return Math.max(...items.map(item => item.id || 0)) + 1;
}

// Routes

// Get all colleges with courses and semesters
app.get('/colleges', async (req, res) => {
  try {
    const data = await readData();
    res.json(data.colleges);
  } catch (error) {
    console.error('Error fetching colleges:', error);
    res.status(500).json({ error: 'Failed to fetch colleges' });
  }
});

// Create a new college
app.post('/colleges', async (req, res) => {
  try {
    const { name, location } = req.body;
    
    if (!name || !location) {
      return res.status(400).json({ error: 'Name and location are required' });
    }
    
    const data = await readData();
    const newCollege = {
      id: getNextId(data.colleges),
      name,
      location,
      courses: []
    };
    
    data.colleges.push(newCollege);
    await writeData(data);
    
    res.json({ id: newCollege.id, message: 'College created successfully' });
  } catch (error) {
    console.error('Error creating college:', error);
    res.status(500).json({ error: 'Failed to create college' });
  }
});

// Update a college
app.put('/colleges/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { name, location } = req.body;
    
    if (!name || !location) {
      return res.status(400).json({ error: 'Name and location are required' });
    }
    
    const data = await readData();
    const collegeIndex = data.colleges.findIndex(c => c.id === parseInt(id));
    
    if (collegeIndex === -1) {
      return res.status(404).json({ error: 'College not found' });
    }
    
    data.colleges[collegeIndex].name = name;
    data.colleges[collegeIndex].location = location;
    await writeData(data);
    
    res.json({ message: 'College updated successfully' });
  } catch (error) {
    console.error('Error updating college:', error);
    res.status(500).json({ error: 'Failed to update college' });
  }
});

// Delete a college
app.delete('/colleges/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const data = await readData();
    
    const collegeIndex = data.colleges.findIndex(c => c.id === parseInt(id));
    if (collegeIndex === -1) {
      return res.status(404).json({ error: 'College not found' });
    }
    
    data.colleges.splice(collegeIndex, 1);
    await writeData(data);
    
    res.json({ message: 'College deleted successfully' });
  } catch (error) {
    console.error('Error deleting college:', error);
    res.status(500).json({ error: 'Failed to delete college' });
  }
});

// Create a new course
app.post('/colleges/:collegeId/courses', async (req, res) => {
  try {
    const { collegeId } = req.params;
    const { name } = req.body;
    
    if (!name) {
      return res.status(400).json({ error: 'Course name is required' });
    }
    
    const data = await readData();
    const college = data.colleges.find(c => c.id === parseInt(collegeId));
    
    if (!college) {
      return res.status(404).json({ error: 'College not found' });
    }
    
    const newCourse = {
      id: getNextId(college.courses),
      name,
      semesters: []
    };
    
    college.courses.push(newCourse);
    await writeData(data);
    
    res.json({ id: newCourse.id, message: 'Course created successfully' });
  } catch (error) {
    console.error('Error creating course:', error);
    res.status(500).json({ error: 'Failed to create course' });
  }
});

// Update a course
app.put('/courses/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { name } = req.body;
    
    if (!name) {
      return res.status(400).json({ error: 'Course name is required' });
    }
    
    const data = await readData();
    let courseFound = false;
    
    for (const college of data.colleges) {
      const courseIndex = college.courses.findIndex(c => c.id === parseInt(id));
      if (courseIndex !== -1) {
        college.courses[courseIndex].name = name;
        courseFound = true;
        break;
      }
    }
    
    if (!courseFound) {
      return res.status(404).json({ error: 'Course not found' });
    }
    
    await writeData(data);
    res.json({ message: 'Course updated successfully' });
  } catch (error) {
    console.error('Error updating course:', error);
    res.status(500).json({ error: 'Failed to update course' });
  }
});

// Delete a course
app.delete('/courses/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const data = await readData();
    let courseFound = false;
    
    for (const college of data.colleges) {
      const courseIndex = college.courses.findIndex(c => c.id === parseInt(id));
      if (courseIndex !== -1) {
        college.courses.splice(courseIndex, 1);
        courseFound = true;
        break;
      }
    }
    
    if (!courseFound) {
      return res.status(404).json({ error: 'Course not found' });
    }
    
    await writeData(data);
    res.json({ message: 'Course deleted successfully' });
  } catch (error) {
    console.error('Error deleting course:', error);
    res.status(500).json({ error: 'Failed to delete course' });
  }
});

// Create a new semester
app.post('/courses/:courseId/semesters', async (req, res) => {
  try {
    const { courseId } = req.params;
    const { semester, topics } = req.body;
    
    if (!semester || !topics) {
      return res.status(400).json({ error: 'Semester number and topics are required' });
    }
    
    const data = await readData();
    let course = null;
    
    for (const college of data.colleges) {
      course = college.courses.find(c => c.id === parseInt(courseId));
      if (course) break;
    }
    
    if (!course) {
      return res.status(404).json({ error: 'Course not found' });
    }
    
    const newSemester = {
      id: getNextId(course.semesters),
      semester: parseInt(semester),
      topics
    };
    
    course.semesters.push(newSemester);
    await writeData(data);
    
    res.json({ id: newSemester.id, message: 'Semester created successfully' });
  } catch (error) {
    console.error('Error creating semester:', error);
    res.status(500).json({ error: 'Failed to create semester' });
  }
});

// Update a semester
app.put('/semesters/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { semester, topics } = req.body;
    
    if (!semester || !topics) {
      return res.status(400).json({ error: 'Semester number and topics are required' });
    }
    
    const data = await readData();
    let semesterFound = false;
    
    for (const college of data.colleges) {
      for (const course of college.courses) {
        const semesterIndex = course.semesters.findIndex(s => s.id === parseInt(id));
        if (semesterIndex !== -1) {
          course.semesters[semesterIndex].semester = parseInt(semester);
          course.semesters[semesterIndex].topics = topics;
          semesterFound = true;
          break;
        }
      }
      if (semesterFound) break;
    }
    
    if (!semesterFound) {
      return res.status(404).json({ error: 'Semester not found' });
    }
    
    await writeData(data);
    res.json({ message: 'Semester updated successfully' });
  } catch (error) {
    console.error('Error updating semester:', error);
    res.status(500).json({ error: 'Failed to update semester' });
  }
});

// Delete a semester
app.delete('/semesters/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const data = await readData();
    let semesterFound = false;
    
    for (const college of data.colleges) {
      for (const course of college.courses) {
        const semesterIndex = course.semesters.findIndex(s => s.id === parseInt(id));
        if (semesterIndex !== -1) {
          course.semesters.splice(semesterIndex, 1);
          semesterFound = true;
          break;
        }
      }
      if (semesterFound) break;
    }
    
    if (!semesterFound) {
      return res.status(404).json({ error: 'Semester not found' });
    }
    
    await writeData(data);
    res.json({ message: 'Semester deleted successfully' });
  } catch (error) {
    console.error('Error deleting semester:', error);
    res.status(500).json({ error: 'Failed to delete semester' });
  }
});

// Health check
app.get('/health', (req, res) => {
  res.json({ status: 'ok', message: 'API is running', storage: 'JSON file' });
});

// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log(`Using JSON file storage: ${DATA_FILE}`);
});

module.exports = app;
