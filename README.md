# Atlas Chess ♟️

A beautiful, modern chess game with AI opponent powered by Stockfish 16.

## Features

- 🤖 Play against AI (Stockfish 16) or human opponents
- 🎨 Beautiful dark-themed UI with smooth animations
- 🎯 Multiple difficulty levels (Beginner to Hard)
- 💡 Hint system to help you learn
- ♻️ Undo moves
- 🔄 Flip board to view from either perspective
- 👁️ Last move highlighting
- 📊 Captured pieces display
- 🎵 Sound effects for moves and captures
- 🏆 Live leaderboard with Supabase integration
- 📱 Responsive design for all devices

## Supabase Setup

### Step 1: Create a Supabase Project

1. Go to [https://supabase.com](https://supabase.com)
2. Sign up or log in
3. Click "New Project"
4. Fill in project details and wait for setup to complete

### Step 2: Create the Database Table

1. In your Supabase dashboard, go to the **SQL Editor**
2. Click "New Query"
3. Copy and paste the contents of `supabase-setup.sql`
4. Click "Run" to execute the SQL

### Step 3: Get Your API Credentials

1. In your Supabase dashboard, go to **Project Settings** (gear icon)
2. Go to **API** section
3. Copy your:
   - `Project URL` (looks like `https://xxxxx.supabase.co`)
   - `anon/public` key (under "Project API keys")

### Step 4: Update the Code

Open `index.html` and replace these lines (around line 52-53):

```javascript
const SUPABASE_URL = 'YOUR_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_ANON_KEY';
```

With your actual credentials:

```javascript
const SUPABASE_URL = 'https://xxxxx.supabase.co';
const SUPABASE_ANON_KEY = 'your-anon-key-here';
```

## Deployment to Netlify

### Quick Deploy

```bash
cd /Users/philippstegmann/Projekte/Cheessgame
netlify deploy --prod
```

Follow the prompts to:
1. Authorize Netlify CLI (if first time)
2. Create a new site or link to existing
3. Set publish directory to `.` (current directory)

Your site will be live at `https://your-site-name.netlify.app`

## Local Development

Simply open `index.html` in your browser!

No build step required - this is a single-page application using CDN-hosted libraries.

## Technologies Used

- **React 18** - UI framework
- **Chess.js** - Chess logic and validation
- **Stockfish 16** - AI engine
- **Supabase** - Cloud database for leaderboard
- **Tailwind CSS** - Styling
- **Lucide Icons** - Icon library

## How to Play

1. Choose your opponent (Human or AI)
2. If playing against AI, select difficulty level
3. Click a piece to select it
4. Valid moves will be highlighted in green
5. Click a highlighted square to move
6. Use hints if you need help
7. Flip the board to see from the other perspective
8. Resign if you want to concede

## License

Open source - feel free to modify and use!
