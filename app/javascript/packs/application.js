require("@rails/ujs").start()

import "bootstrap";
import { initTypedJS } from '../components/typed';
// import { application } from '../components/stimulus';
// import { context } from '../components/stimulus';

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

initTypedJS();
// application()
// context()

// import "controllers"
