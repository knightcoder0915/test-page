const scriptUrl = new URL("https://res.cdn.office.net/officehub/officestartbundles/54940.6c745e6d11dd7f65f20f.chunk.js");
const originalImportScripts = self.importScripts;
console.log("Hell",originalImportScripts);
self.importScripts = (url) => originalImportScripts.call(self, new URL(url, scriptUrl).toString());
importScripts(scriptUrl.toString());