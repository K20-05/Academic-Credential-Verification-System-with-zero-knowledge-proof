# Academic Credential Verification System (Frontend)

## Run Frontend

### Option A (recommended on this machine)

Use helper scripts:

```bash
./npm-install.cmd
./npm-dev.cmd
```

### Option B (standard npm)

```bash
npm install
npm run dev
```

Frontend runs on `http://localhost:5173` by default.

## Backend Requirement

This frontend calls a backend API using:

- `VITE_API_BASE` from `.env`
- default: `http://localhost:3000`

Create `.env` from `.env.example` and set your backend URL.

Required backend endpoints:

- `POST /initialize`
- `POST /create-user-did`
- `POST /issue-academic-credential`
- `POST /get-academic-credentials`

If backend is not running, UI actions show `"Network Error"`.

## Typical Usage Flow

1. Open `Initialize` and run once.
2. Open `Create DID` and submit student email.
3. Open `Issue Credential` and use returned `ownerDid`.
4. Open `Get Credentials` and fetch using the same `ownerDid`.
