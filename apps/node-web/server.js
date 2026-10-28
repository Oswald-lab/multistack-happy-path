import http from "node:http";

export function handler(req, res) {
  res.setHeader("Content-Type", "application/json");
  res.end(JSON.stringify({ status: "ok", service: "node-web" }));
}

if (process.argv[1] === new URL(import.meta.url).pathname) {
  http.createServer(handler).listen(3000, () => console.log("listening on :3000"));
}
