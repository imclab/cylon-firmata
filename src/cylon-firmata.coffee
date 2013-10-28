###
 * cylon-firmata
 * http://cylonjs.com
 *
 * Copyright (c) 2013 The Hybrid Group
 * Licensed under the Apache 2.0 license.
###

'use strict';

require "./firmata"
GPIO = require "cylon-gpio"

module.exports =
  adaptor: (args...) ->
    new Cylon.Adaptor.Firmata(args...)

  driver: (args...) ->
    GPIO.driver(args...)

  register: (robot) ->
    Logger.debug "Registering Firmata adaptor for #{robot.name}"
    robot.registerAdaptor 'cylon-firmata', 'firmata'

    GPIO.register robot