# FACEPrep Campus Backend API

Standalone Node.js/Express API server for FACEPrep Campus. This backend connects to MySQL database and provides REST API endpoints for the frontend.

## 🗄️ Database

**Shared Database Configuration:**
- **Database**: `u461595815_fpc`
- **User**: `u461595815_fpcadmin`
- **Host**: `localhost`

Both frontend and backend use the same MySQL database.

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ and npm
- MySQL database (shared with frontend)

### Installation

```bash
# Install dependencies
npm install
```

### Configuration

Create a `.env` file:

```env
DB_HOST=localhost
DB_NAME=u461595815_fpc
DB_USER=u461595815_fpcadmin
DB_PASS=f7McCB4#6IE!
PORT=3000
```

### Database Setup

1. Run `setup.sql` in your MySQL database (phpMyAdmin)
2. This creates the required tables: `colleges`, `courses`, `semesters`

### Run Server

**Development:**
```bash
npm run dev
```

**Production:**
```bash
npm start
```

The API will be available at `http://localhost:3000`

## 📡 API Endpoints

### Colleges
- `GET /colleges` - Get all colleges with courses and semesters
- `POST /colleges` - Create a new college
- `PUT /colleges/:id` - Update a college
- `DELETE /colleges/:id` - Delete a college

### Courses
- `POST /colleges/:collegeId/courses` - Add a course to a college
- `PUT /courses/:id` - Update a course
- `DELETE /courses/:id` - Delete a course

### Semesters
- `POST /courses/:courseId/semesters` - Add a semester to a course
- `PUT /semesters/:id` - Update a semester
- `DELETE /semesters/:id` - Delete a semester

### Health Check
- `GET /health` - Check API status

## 🌐 CORS Configuration

The API is configured to accept requests from any origin. For production, update CORS settings in `server.js`.

## 📦 Dependencies

- **express** - Web framework
- **mysql2** - MySQL database driver
- **cors** - Cross-Origin Resource Sharing
- **dotenv** - Environment variables

## 🚀 Deployment

### Standalone Deployment

1. Upload this entire `backend/` folder to your Node.js hosting
2. Run `npm install`
3. Set environment variables in hosting panel
4. Set start command: `node server.js`

### With Frontend

The backend can be deployed separately from the frontend. Just make sure:
- Backend is accessible via URL (e.g., `https://api.yourdomain.com`)
- Frontend `.env` points to backend URL
- Both connect to the same MySQL database

## 🔧 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DB_HOST` | Database host | `localhost` |
| `DB_NAME` | Database name | `u461595815_fpc` |
| `DB_USER` | Database user | `u461595815_fpcadmin` |
| `DB_PASS` | Database password | (set in .env) |
| `PORT` | Server port | `3000` |

## 📝 Project Structure

```
backend/
├── server.js          # Main API server
├── package.json       # Dependencies
├── setup.sql          # Database schema
├── .env.example       # Environment template
├── .gitignore         # Git ignore rules
└── README.md          # This file
```

## 🔐 Security Notes

- Never commit `.env` files
- Use environment variables for sensitive data
- Consider adding authentication for production
- Use HTTPS in production

## 📞 Support

For issues or questions, contact:
- **Email**: connect@faceprep.in
- **Phone**: +91 79043 18695

