-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Add the Dracula theme plugin
  {
    'Mofiqul/dracula.nvim',
    config = function()
      vim.cmd 'colorscheme dracula'
    end,
  },
}
