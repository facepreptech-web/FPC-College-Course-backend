# hPanel Database Configuration Checklist

## Database Information
- **Username**: `u461595815_fpcadmin`
- **Database Name**: `u461595815_fpc`
- **Host**: `auth-db1832.hstgr.io`

## ✅ Checklist - Check These 3 Things in hPanel

### 1. Password
**Location**: Websites → Manage → Databases → MySQL Databases

1. Find user `u461595815_fpcadmin`
2. Click **"Change password"**
3. Set a new strong password
4. **Save it**
5. Update the same new password in:
   - `backend/seed.js` (line 8: `password` field)
   - `backend/server.js` (line 19: `DB_PASS` in default or `.env` file)
   - Vercel environment variables (`DB_PASS`)
6. Redeploy after updating

### 2. User ↔ Database Link
**Location**: Same page (MySQL Databases)

1. Ensure `u461595815_fpcadmin` is **assigned** to database `u461595815_fpc`
2. Verify it has **ALL PRIVILEGES**
3. If not assigned, **add/grant** the user to the database with ALL PRIVILEGES

### 3. Remote Access
**Location**: Remote MySQL / Remote access settings

1. Check Remote MySQL settings
2. Make sure **host `%`** OR your **IP address** (`103.183.240.122` or `98.92.212.149`) is added
3. Ensure it's added for user `u461595815_fpcadmin`
4. Save changes

## 🔄 After Making Changes

1. **Wait 1 minute** for changes to propagate
2. **Update password** in code files if changed:
   - `backend/seed.js`
   - `backend/server.js` (or `.env` file)
3. **Redeploy** on Vercel (if using)
4. **Test connection** again

## 🧪 Testing

After completing the checklist, test the connection:

```bash
cd backend
npm run seed
```

If it still fails, check:
- Exact error message
- Verify all 3 items above are completed
- Check if password was updated in all locations

## 📝 Current Configuration

**In `backend/seed.js`:**
```javascript
const dbConfig = {
  host: 'auth-db1832.hstgr.io',
  database: 'u461595815_fpc',
  user: 'u461595815_fpcadmin',
  password: 'f7McCB4#6IE!',  // Update this if password changed
};
```

**Note**: If you change the password in hPanel, make sure to update it in the code files above.

