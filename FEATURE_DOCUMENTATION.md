# 🎯 YamzzBot WhatsApp Caller - Complete Feature Documentation

**Version:** 2.0  
**Last Updated:** September 18, 2026  
**Bot Name:** Spartan X Aman (Configurable)

---

## 📋 Table of Contents

1. [Basic Commands](#basic-commands)
2. [Call Features](#call-features)
3. [Media Features](#media-features)
4. [Group Management](#group-management)
5. [AI & Voice Features](#ai--voice-features)
6. [Admin Commands](#admin-commands)
7. [Configuration](#configuration)

---

## 🎮 Basic Commands

### **`.menu` / `-menu`**
**Description:** Display the interactive bot menu with all available features  
**Usage:** `.menu` or `-menu`  
**Access:** All users  
**Note:** Each paired user gets their own isolated menu session

### **`.help`**
**Description:** Shows quick help guide  
**Usage:** `.help`  
**Access:** All users

### **`.ping`**
**Description:** Check bot response time and status  
**Usage:** `.ping`  
**Response:** Bot latency and online status

### **`.runtime` / `.uptime`**
**Description:** Shows how long the bot has been running  
**Usage:** `.runtime`  
**Access:** All users

---

## 📞 Call Features

### **`.playcall <song name>` / `.pc <song>`**
**Description:** Start a 1-on-1 voice call with audio playback  
**Usage:** 
- `.playcall Despacito`
- `.pc Shape of You`
**Features:**
- Automatically downloads audio from YouTube/JioSaavn
- Loops audio continuously
- Supports hot-swapping audio during active call
**Access:** Admin only

### **`.groupcall <song name>` / `.gc <song>`**
**Description:** Start a group voice call with audio playback  
**Usage:** 
- `.groupcall Bohemian Rhapsody`
- `.gc Imagine Dragons`
**Features:**
- Starts group call with selected audio
- All group members can join
- Audio loops automatically
**Access:** Admin only

### **`.playvideo <video name>` / `.pv <video>`**
**Description:** Start a video call with screen sharing  
**Usage:** 
- `.playvideo Funny Cat Video`
- `.pv Anime Opening`
**Features:**
- Downloads and encodes video to H.264
- Streams video via screen share
- Loops video continuously
**Access:** Admin only

### **`.stopcall` / `.endcall`**
**Description:** End the current active call on specified sender  
**Usage:** 
- `.stopcall` (ends call on any active sender)
- `.stopcall sender1` (ends call on specific sender)
**Access:** Admin only

### **`.stopallcalls` / `.killallcalls`**
**Description:** Terminate ALL active calls across ALL sender nodes  
**Usage:** `.stopallcalls`  
**Warning:** This will disconnect ALL ongoing calls immediately  
**Access:** Admin only

### **`.skip` / `.next`**
**Description:** Skip current video in video call queue  
**Usage:** `.skip`  
**Access:** Admin only

### **`.acceptcall` / `.answer`**
**Description:** Accept an incoming call automatically  
**Usage:** `.acceptcall`  
**Note:** Bot auto-accepts incoming calls and plays default audio  
**Access:** Admin only

---

## 🎵 Media Features

### **`.play <song name>`**
**Description:** Search and download audio from YouTube/JioSaavn  
**Usage:** `.play Believer Imagine Dragons`  
**Features:**
- Fast JioSaavn download for Indian songs
- YouTube fallback with bot-detection bypass
- Returns audio file for offline use
**Access:** All users

### **`.ytdl <video URL>`**
**Description:** Download YouTube video  
**Usage:** `.ytdl https://youtube.com/watch?v=xxxxx`  
**Access:** All users

### **`.cyt <song name>` / `.changeyt <song>`**
**Description:** Change currently playing song in active call  
**Usage:** `.cyt Despacito`  
**Features:**
- Hot-swaps audio without ending call
- Works for both 1-on-1 and group calls
**Access:** Admin only

### **`.changeaudio <file path>`**
**Description:** Change audio to local file in active call  
**Usage:** `.changeaudio recordings/mysong.mp3`  
**Access:** Admin only

### **`.playcallfile <filename>` / `.playrd <filename>`**
**Description:** Play audio file from recordings folder  
**Usage:** 
- `.playcallfile mysong`
- `.playrd audio123`
**Note:** Looks for file in `recordings/` folder  
**Access:** Admin only

---

## 👥 Group Management

### **`.lockgroup` / `.lock`**
**Description:** Lock group - only admins can send messages  
**Usage:** `.lockgroup`  
**Access:** Admin only  
**Requires:** Bot must be group admin

### **`.unlockgroup` / `.unlock`**
**Description:** Unlock group - all members can send messages  
**Usage:** `.unlockgroup`  
**Access:** Admin only

### **`.tagall` / `.everyone`**
**Description:** Mention all group members  
**Usage:** 
- `.tagall` (mentions everyone)
- `.tagall Important announcement!` (with message)
**Access:** Admin only

### **`.kick @user` / `.remove @user`**
**Description:** Remove specific user from group  
**Usage:** `.kick @1234567890` (mention user)  
**Access:** Admin only  
**Requires:** Bot must be group admin

### **`.kickall` / `.removeall`**
**Description:** Remove all members except admins  
**Usage:** `.kickall`  
**Warning:** This removes ALL non-admin members!  
**Access:** Owner only  
**Requires:** Bot must be group admin

### **`.promote @user`**
**Description:** Make user a group admin  
**Usage:** `.promote @1234567890`  
**Access:** Admin only  
**Requires:** Bot must be group admin

### **`.demote @user`**
**Description:** Remove admin privileges from user  
**Usage:** `.demote @1234567890`  
**Access:** Admin only  
**Requires:** Bot must be group admin

### **`.online` / `.onlinemembers`**
**Description:** Check which group members are currently online  
**Usage:** `.online`  
**Response:** List of online members with real-time status  
**Access:** All users

### **`.lastseen @user`**
**Description:** Check when a user was last online  
**Usage:** `.lastseen @1234567890`  
**Note:** Requires user to have last seen visible  
**Access:** All users

---

## 🤖 AI & Voice Features

### **`.cvnmodi <text>` / `.cvnamit <text>` / `.cvntrump <text>`**
**Description:** Clone celebrity voice and inject speech into active call  
**Available Voices:**
- `.cvnmodi` - Narendra Modi voice
- `.cvnamit` - Amit Shah voice  
- `.cvntrump` - Donald Trump voice
- `.cvnobama` - Barack Obama voice

**Usage:** `.cvnmodi Hello, how are you doing today?`  
**Features:**
- Generates AI voice clone in real-time
- Injects directly into active call
- Natural speech synthesis
**Access:** Admin only  
**Requires:** Active call must be running

### **`.tts <text>` / `.speak <text>`**
**Description:** Text-to-speech in multiple languages  
**Usage:** `.tts Hello World`  
**Languages Supported:** English, Hindi, Spanish, French, Arabic  
**Access:** All users

---

## 🔧 Admin Commands

### **`.addadmin @user` / `.makeadmin @user`**
**Description:** Add user as bot admin  
**Usage:** `.addadmin @1234567890`  
**Note:** Admins can use restricted commands  
**Access:** Owner only

### **`.deladmin @user` / `.removeadmin @user`**
**Description:** Remove admin privileges from user  
**Usage:** `.deladmin @1234567890`  
**Access:** Owner only

### **`.listadmins` / `.admins`**
**Description:** Show all bot admins  
**Usage:** `.listadmins`  
**Access:** All users

### **`.setprefix <new prefix>`**
**Description:** Change command prefix  
**Usage:** `.setprefix !`  
**Default:** `-` (dash)  
**Alternative:** `.` (dot) also works  
**Access:** Owner only

### **`.setemoji <emoji>`**
**Description:** Change default reaction emoji  
**Usage:** `.setemoji 🔥`  
**Access:** Owner only

### **`.mode <self|public|adminonly>`**
**Description:** Change bot operation mode  
**Modes:**
- `self` - Only owner can use
- `public` - Everyone can use
- `adminonly` - Only admins can use
**Usage:** `.mode adminonly`  
**Access:** Owner only

---

## ⚙️ Configuration

### **Bot Admin System**

The bot has a **3-tier admin system**:

1. **Master Owner** (Highest privilege)
   - Set via `OWNER_NUMBER` and `OWNER_JID` environment variables
   - Full control over all bot features
   - Can add/remove sub-admins

2. **Bot Node Owner** (Per-session owner)
   - The user who paired/connected each specific WhatsApp session
   - Has full admin access to their own bot instance
   - Set automatically when pairing

3. **Sub-Admins** (Additional admins)
   - Added by Master Owner or Bot Node Owner
   - Can use admin commands on specific bot instance
   - Can be added/removed dynamically

### **Multi-Bot Setup**

- Bot supports **multiple paired WhatsApp accounts** (multi-sender system)
- Each sender can handle calls independently
- If `sender1` is busy in a call, `.playcall` automatically uses `sender2`
- Each paired user has **isolated menu sessions** - User 1's menu won't open for User 2

### **Environment Variables**

```bash
BOT_PREFIX="-"                              # Command prefix
OWNER_NUMBER="6281959348726"                # Master owner phone number
OWNER_JID="6281959348726@lid"               # Master owner WhatsApp JID
DEFAULT_EMOJI="👑"                          # Default reaction emoji
THERESAV_APIKEY="your_api_key"              # Theresav video download API key
FISH_AUDIO_API_KEY="your_fish_api_key"     # Fish.Audio voice clone API key (optional)
WP_PORT="20825"                             # HTTP API port
```

**Voice Clone API Configuration:**
- The bot includes a default Fish.Audio API key for immediate functionality
- For production/heavy use, get your own API key from [Fish.Audio](https://fish.audio)
- Set `FISH_AUDIO_API_KEY` environment variable to use your personal key
- This prevents rate limits and ensures reliable voice cloning service

### **API Endpoints**

The bot exposes a REST API on port `20825`:

- `GET /health` - Check bot health
- `GET /sessions/all` - Get all paired sessions
- `POST /session/init` - Initialize new session
- `POST /session/{uid}/pair` - Request pairing code
- `GET /session/{uid}/status` - Check session status
- `POST /session/{uid}/set_admin` - Add admin to specific bot instance
- `POST /session/{uid}/del_admin` - Remove admin from specific bot instance

### **Rate Limiting & Ban Prevention**

To avoid WhatsApp bans:

1. **Call Cooldown**: Default 0 seconds between calls (configurable)
2. **Message Rate Limiting**: Built-in delays between bulk messages
3. **Auto-unmute Protection**: Automatically unmutes if WhatsApp mutes during call
4. **Heartbeat System**: Keeps calls alive with 8-second intervals
5. **Gradual Activity**: Don't spam commands repeatedly

**Recommended Settings:**
- Don't use `.kickall` or mass operations frequently
- Space out calls by 30-60 seconds
- Avoid sending 100+ messages in quick succession
- Use the bot naturally, not robotically

---

## 🚨 Troubleshooting

### **Call disconnects after 3 minutes**
**Solution:** This has been fixed. Heartbeat system now runs indefinitely. If issue persists:
1. Check internet connection stability
2. Ensure WhatsApp session is not logged out
3. Check for WhatsApp number restrictions

### **Bot doesn't respond**
**Checklist:**
1. Verify bot is online: `.ping`
2. Check if you're using correct prefix (default: `-`)
3. Verify you have admin access for restricted commands
4. Check bot mode: `.mode` (make sure it's not in `self` mode)

### **"Not authorized" error**
**Solution:**
1. Ask bot owner to add you as admin: `.addadmin @your_number`
2. Or ask owner to change mode to `public`: `.mode public`

### **Voice clone not working**
**Solution:**
1. Ensure `THERESAV_APIKEY` is set correctly
2. Verify active call is running before using `.cvn*` commands
3. Check API credits/quota

### **Menu opens for wrong user**
**Fixed:** Each paired user now has isolated menu sessions. User 1's menu only opens for User 1.

---

## 📝 Notes

- All admin commands require proper authorization
- Bot must be group admin for group management features
- Calls require stable internet connection (minimum 2 Mbps upload)
- Video calls use H.264 codec at 720p max resolution
- Audio is encoded at 128kbps MP3
- Default video/audio files: `52.mp4`, `51.mp3` (if no file specified)

---

## 🔗 Support

For issues or feature requests:
1. Check logs at `/sessions/all` API endpoint
2. Verify bot configuration in `bot_config.json`
3. Restart bot if session becomes unresponsive
4. Check console output for detailed error messages

---

**Built with:**
- [Whatsmeow](https://github.com/tulir/whatsmeow) - WhatsApp Web Multi-Device API
- [MeowCaller](https://github.com/purpshell/meowcaller) - WhatsApp Voice/Video Call Library
- Go 1.25+ - Backend runtime

**License:** Private/Commercial Use
