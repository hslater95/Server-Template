async function hello(req, res) {
    res.json({ message: 'server template.' });
}

module.exports = hello;