// application.js
// Register the serviceWorker script at /serviceworker.js from your server if supported
const initServiceWorkerJS = () => {
if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/serviceworker.js')
  .then(function(reg) {
     console.log('Service worker change, registered the service worker');
  });
}
// Otherwise, no push notifications :(
else {
  console.error('Service worker is not supported in this browser');
}
}




const initPushmanagerJS = () => {
  navigator.serviceWorker.ready.then((serviceWorkerRegistration) => {
    console.log("ici :-)")
  serviceWorkerRegistration.pushManager
  .subscribe({
    userVisibleOnly: true,
    applicationServerKey: window.vapidPublicKey
  });
});
}


// application.js
// Send the subscription and message from the client for the backend
// to set up a push notification
const initTriggerWebPush = () => {
  $(".webpush-button").on("click", (e) => {
  navigator.serviceWorker.ready
  .then((serviceWorkerRegistration) => {
    serviceWorkerRegistration.pushManager.getSubscription()
    .then((subscription) => {
      $.post("/push", { subscription: subscription.toJSON(), message: "Un nouveau pari a été lancé! 🎉" });
    });
  });
});
}


// serviceworker.js
// The serviceworker context can respond to 'push' events and trigger
// notifications on the registration property



// application.js

const initPushPermission = () => {
// Let's check if the browser supports notifications
if (!("Notification" in window)) {
  console.error("This browser does not support desktop notification");
}

// Let's check whether notification permissions have already been granted
else if (Notification.permission === "granted") {
  console.log("Permission to receive notifications has been granted");
}

// Otherwise, we need to ask the user for permission
else if (Notification.permission !== 'denied') {
  Notification.requestPermission(function (permission) {
    // If the user accepts, let's create a notification
    if (permission === "granted") {
      console.log("Permission to receive notifications has been granted");
    }
  });
}
}



export { initServiceWorkerJS, initPushmanagerJS, initTriggerWebPush, initPushPermission };





