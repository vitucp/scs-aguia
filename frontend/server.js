const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
//const cookieParser = require('cookie-parser');
const session = require('express-session'); 

const PORT = 83;

// Configurações do EJS
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middlewares
app.use(express.static(path.join(__dirname, 'assets')));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Configuração da sessão
app.use(session({
  secret: 'hhajsdkkkkkasdi',  // Substitua por uma chave secreta segura, usar .env
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false } 
}));

// Rotas
const MissionsRouter = require('./src/routers/MissionsRouter')

app.use('/', MissionsRouter);

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});