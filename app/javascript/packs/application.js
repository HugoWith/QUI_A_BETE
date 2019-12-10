require("@rails/ujs").start()
require('jquery')

import "bootstrap";
import { initTypedJS } from '../components/typed';
import { initCursor } from '../components/cursor';
import { initCanvas } from '../components/cursor';
import { initHovers } from '../components/cursor';
import { initServiceWorkerJS } from '../components/serviceWorker';

import { initRoll } from '../components/roue';
import { initTippy } from '../components/init_tippy';
import { initWinnerJS } from '../components/winner';

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"





const application = Application.start()
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

initTypedJS();

initCursor();
initCanvas();
initHovers();
initServiceWorkerJS();
initRoll();
initTippy();
initWinnerJS();

// initPushmanagerJS();
// initTriggerWebPush();

// initPushPermission();

// application()
// context()

// import "controllers"



