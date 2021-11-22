execute pathogen#infect()
syntax on
filetype plugin indent on

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" toggle clipboard paste mode
set pastetoggle=<F2>

" set hybrid line numbering
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
