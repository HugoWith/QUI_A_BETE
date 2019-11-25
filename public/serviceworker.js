
self.addEventListener("push", (event) => {
  let title = (event.data && event.data.text()) || "Yay Nouveau Pari 🎉";
  let body = "Va vite voir de quoi il s'agit 😁";
  let tag = "push-simple-demo-notification-tag";
  let icon = 'http://localhost:3000/images/logoqabweb.png';

  event.waitUntil(
    self.registration.showNotification(title, { body, icon, tag })
  )
});
