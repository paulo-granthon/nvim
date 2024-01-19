require 'colorizer'.setup(
  { '*' }, {
    RGB      = true; -- 'red' "green" blue #123123
    RRGGBB   = true;
    names    = true;
    RRGGBBAA = true;
    rgb_fn   = true;
    hsl_fn   = true;
    css      = true;
    css_fn   = true;
    mode     = 'background';
  }
)
