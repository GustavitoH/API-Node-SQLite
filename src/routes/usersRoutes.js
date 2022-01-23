const { Router } = require('express');
const router = Router();

const { getUsers } = require('../controller/users.controller');

router.get("/users", getUsers);

module.exports = router;
