import 'dotenv/config';
import app from './app.js';

const PORT = Number(process.env.NODE_DOCKER_PORT) || 8080;

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});