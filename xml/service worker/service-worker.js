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
      new Response(`
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Dummy Page</title>
          <style>
            body {
              font-family: Arial, sans-serif;
              display: flex;
              justify-content: center;
              align-items: center;
              height: 100vh;
              margin: 0;
              background-color: #f0f0f0;
            }
            .container {
              text-align: center;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <h1>Dummy Page</h1>
            <p>This is a dummy page served by the service worker.</p>
          </div>
        </body>
        </html>
      `, {
        headers: { 'Content-Type': 'text/html' }
      })
    );
  });
  