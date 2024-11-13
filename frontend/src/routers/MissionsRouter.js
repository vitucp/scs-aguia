const express = require('express');
const router = express.Router();
const MissionsController = require('../controller/MissionsController');
const missionsController = new MissionsController();
// const Auth = require('../middlewares/Auth'); 
const { getMessageObject } = require('../utils/messageUtils');

router.get('/', (req, res) => res.redirect('/missions'))
router.get('/missions', (req, res) => missionsController.displayMissions(req, res));


module.exports = router;
