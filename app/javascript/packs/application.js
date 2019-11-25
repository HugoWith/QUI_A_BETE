require("@rails/ujs").start()
require('jquery')

import "bootstrap";
import { initTypedJS } from '../components/typed';
import { initCursorJS } from '../components/cursor';
import {  initServiceWorkerJS, initPushmanagerJS, initTriggerWebPush, initPushPermission } from '../components/serviceWorker';

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

initTypedJS();
initCursorJS();
initServiceWorkerJS();
initPushmanagerJS();
initTriggerWebPush();

initPushPermission();

// application()
// context()

// import "controllers"
