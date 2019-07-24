local awful = require('awful')
local gears = require('gears')
local icons = require('theme.icons')

local tags = {
    {
        icon = icons.main,
        type = 'Main',
        defaultApp = '',
        screen = 1
    },
    {
        icon = icons.web,
        type = 'Web',
        defaultApp = 'firefox-developer-edition',
        screen = 1
    },
    {
        icon = icons.code,
        type = 'Code',
        defaultApp = 'code',
        screen = 1
    },
    {
        icon = icons.work,
        type = 'Work',
        defaultApp = 'libreoffice',
        screen = 1
    },
    {
        icon = icons.game,
        type = 'Gaming',
        defaultApp = '',
        screen = 1
    },
    {
        icon = icons.creative,
        type = 'Creative',
        defaultApp = '',
        screen = 1
    },
    {
        icon = icons.main,
        type = 'Main',
        defaultApp = '',
        screen = 2
    },
    {
        icon = icons.web,
        type = 'Web',
        defaultApp = 'firefox-developer-edition',
        screen = 2
    },
    {
        icon = icons.music,
        type = 'Music',
        defaultApp = 'cantata',
        screen = 2
    }
}

--- I don't understand this
awful.layout.layouts = {
  awful.layout.suit.tile,
  awful.layout.suit.max
}
---

awful.screen.connect_for_each_screen(
  function(s)
    for i, tag in pairs(tags) do
      awful.tag.add(
        i,
        {
          icon = tag.icon,
          icon_only = true,
          layout = awful.layout.suit.tile,
          gap_single_client = false,
          gap = 4,
          screen = s,
          defaultApp = tag.defaultApp,
          selected = i == 1
        }
      )
    end
  end
)

--- I don't understand this
_G.tag.connect_signal(
  'property::layout',
  function(t)
    local currentLayout = awful.tag.getproperty(t, 'layout')
    if (currentLayout == awful.layout.suit.max) then
      t.gap = 0
    else
      t.gap = 4
    end
  end
)
---