require("@rails/ujs").start()
require('jquery')

import "bootstrap";
import { initTypedJS } from '../components/typed';
import { initCursorJS } from '../components/cursor';

import { initServiceWorkerJS } from '../components/serviceWorker';

import { initRoll } from '../components/roue';


import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

initTypedJS();
initCursorJS();
initServiceWorkerJS();

// initPushmanagerJS();
// initTriggerWebPush();

// initPushPermission();
initRoll();

// application()
// context()

// import "controllers"
