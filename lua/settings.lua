local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '120'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang = { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.mouse = 'a'                     -- enable mouse
opt.encoding = 'utf-8'
vim.api.nvim_command("set noswapfile")
opt.scrolloff = 7

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.fileformat = "unix"
vim.api.nvim_command("filetype indent on")

-- for tabulation
opt.smartindent = true
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2

g.netrw_banner = 0                  -- hide banner above files
g.netrw_liststyle = 3               -- tree instead of plain view
g.netrw_browse_split = 3 


vim.cmd([[
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != btarget
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
nnoremap <silent> <Leader>bd :Bclose<CR>
]])
