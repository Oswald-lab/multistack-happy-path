import test from "node:test";
import assert from "node:assert";
import { handler } from "./server.js";

test("handler returns ok", () => {
  let body = "";
  const res = { setHeader() {}, end(b) { body = b; } };
  handler({}, res);
  assert.equal(JSON.parse(body).status, "ok");
});
