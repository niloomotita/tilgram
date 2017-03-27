const express = require('express')
const router = new express.Router()

const tils = [
  {
    id: '0',
    text: 'The difference between koa and express is very unimportant'
  },
  {
    id: '1',
    text: 'The difference between koa and express is very unimportant'
  },
  {
    id: '2',
    text: 'The difference between koa and express is very unimportant'
  }
]

router.get('/tils', (req, res) => {
  res.json(tils)
})
router.get('/til/:id', (req, res) => {
  res.json(tils[req.params.id])
})

module.exports = router
