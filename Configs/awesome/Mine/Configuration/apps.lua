local filesystem = require('gears.filesystem')

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'urxvt',
    editor = 'code',
    rofi = 'rofi -show drun -theme ' .. filesystem.get_homedir*TODO*() .. '/configuration/rofi.rasi',
    lock = '',
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    ''
  }
}