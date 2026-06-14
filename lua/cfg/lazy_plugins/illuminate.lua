return {
  -- Highlights repetitions of the word at the cursor
  {
    'RRethy/vim-illuminate',
    config = function()
      require('illuminate').configure({
        delay = 200,
        under_cursor = false,
      })
    end,
  },
}
