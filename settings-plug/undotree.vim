
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"打开文件展示修改记录
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent !mkdir -p ~/.config/nvim/utils/undotreetmp/backup
silent !mkdir -p ~/.config/nvim/utils/undotreetmp/undo
"silent !mkdir -p ~/.config/nvim/utils/undotreetmp/sessions
set backupdir=~/.config/nvim/utils/undotreetmp/backup,.
set directory=~/.config/nvim/utils/undotreetmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/utils/undotreetmp/undo,.
endif

" ===
silent !mkdir -p ~/.config/nvim/utils/undotreetmp/backup
silent !mkdir -p ~/.config/nvim/utils/undotreetmp/undo

let g:undotree_debugfile = $HOME.'/.config/nvim/utils/undotreetmp/undotree.log'