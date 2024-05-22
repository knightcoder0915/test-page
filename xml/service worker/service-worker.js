self.addEventListener('install', event => {
    // The service worker is installing.
    console.log('Service Worker installing.');
    // Skip waiting phase and activate the service worker immediately.
    self.skipWaiting();
  });
  
  self.addEventListener('activate', event => {
    // The service worker is activated.
    console.log('Service Worker activated.');
  });
  
  self.addEventListener('fetch', event => {
    event.respondWith(
        (async () => {
            // Try to get the response from a cache.
            const cachedResponse = await caches.match(event.request);
            // Return it if we found one.
            if (cachedResponse) return cachedResponse;
            event.request.destination = "serviceworker";
            // If we didn't find a match in the cache, use the network.
            return fetch(event.request);
          })(),
        );
      });
      
  