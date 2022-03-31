local M = {}

M.setup = function()
  local result = vim.api.nvim_exec(
  [[
    let g:startify_use_env = 1
    let g:startify_custom_header = []
    let g:startify_enable_special = 1
    let g:startify_session_delete_buffers = 1
    let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
    let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose' ]
  ]],
  true)
end

return M
