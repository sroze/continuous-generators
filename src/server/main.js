import Koa from 'koa'
import path from 'path'
const app = new Koa()

app.use(ctx => {
  ctx.body = 'Hello Koa';
});

module.exports = app
