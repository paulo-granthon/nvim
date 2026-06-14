return {
  -- Auto pairs for HTML tags
  {
    'windwp/nvim-ts-autotag',
    config = function() require('nvim-ts-autotag').setup() end,
  },
}
