-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Theme handling library
local beautiful = require("beautiful")

-- Theme
beautiful.init(require('theme'))

-- Layout
require('layout')

-- Init all modules                     *TODO*
require('module.notifications')
require('module.auto-start')
require('module.decorate-client')

-- Setup all configurations             *TODO*
require('configuration.client')
require('configuration.tags')

-- Enable sloppy focus, so that focus follows mouse.

client.connect_signal(
  'mouse::enter',
  function(c)
    c:emit_signal('request::activate', 'mouse_enter', {raise = true})
  end
)

client.connect_signal(
  'focus',
  function(c)
    c.border_color = beautiful.border_focus
  end
)

client.connect_signal(
  'unfocus',
  function(c)
    c.border_color = beautiful.border_normal
  end
)