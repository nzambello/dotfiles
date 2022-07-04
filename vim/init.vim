"
"
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"
"                 @nzambello
"
"



"------------------------------------------------------------
" Plugin list and install
" Using https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Dashboard
" Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'

" Theming and colors
Plug 'joshdick/onedark.vim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" Completion, linting and formatting
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'folke/trouble.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'creativenull/diagnosticls-configs-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jxnblk/vim-mdx-js'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'folke/trouble.nvim'

" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'David-Kunz/cmp-npm'
Plug 'github/copilot.vim'

" Code utilities
Plug 'scrooloose/nerdcommenter'
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-sleuth'

" Vim mappings and motions
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'chaoren/vim-wordmotion'

" File Management
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-grepper'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'APZelos/blamer.nvim'

call plug#end()


"------------------------------------------------------------
" General options

" Enables 24-bit RGB color in the TUI
set termguicolors

" Turn on filetype detection
filetype on

" Filetype indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Always display the status line, even if only one window is displayed
set laststatus=2

" enable 256 colors
set t_Co=256

" highlight search
set hlsearch

" search as you type
set incsearch

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Show partial commands in the last line of the screen
set showcmd

" Better command-line completion
set wildmenu

" Show matching brackets
set showmatch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Lines with equal indent form a fold
set foldmethod=indent

set foldexpr=nvim_treesitter#foldexpr()

" Display line numbers on the left
set number

" Mouse events
set mouse=a

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" turn backup on
set backupcopy=yes

" sane text files
set encoding=utf-8

" Default indentation settings for using 4 spaces instead of tabs.
set tabstop=4 shiftwidth=4 expandtab

" syntax color scheme
colorscheme onedark

" autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

" Switch active buffer (tab)
noremap gt <cmd>bn<CR>

" GUI Font
set guifont=DejaVu\ Sans\ Code

" Saves the position of screen at exit
autocmd BufWinLeave *.* mkview

" Restores screen last position
autocmd BufWinEnter *.* silent loadview

" Ignores node_modules
set wildignore+=*/node_modules/**

" Undo history
set undodir=~/.vim/undodir
set undofile

" Open files to the right when vertical splitted
set splitright

" Open files at the bottom when horizontal splitted
set splitbelow

" attempt to speed-up vim
set ttyfast
set lazyredraw

" completion
set completeopt=menu,menuone,noselect


"------------------------------------------------------------
" File type config
"
" Syntax associations for file types
autocmd BufNewFile,BufRead *.zcml set ft=xml
autocmd BufNewFile,BufRead *.overrides set ft=less
autocmd BufNewFile,BufRead *.variables set ft=less
autocmd BufNewFile,BufRead *.pt set ft=html syntax=xml
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.md,*.mdx,*.markdown set filetype=markdown

" Set whitespace managing for every filetype, overriding standard
autocmd FileType xml,htmldjango,python,python.django setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript,js,jsx,ts,tsx setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType makefile setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType tex setlocal wm=3
autocmd FileType pt set sw=4 ts=4 expandtab
autocmd FileType xml set sw=4 ts=4 expandtab
autocmd FileType html set sw=4 ts=4 expandtab

" Configure vim to be PEP8 compliant when editing Python code
autocmd FileType python,python.django set colorcolumn=80

" Set highlight sync
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" To get correct comment highlighting (from CoC)
autocmd FileType json syntax match Comment +\/\/.\+$+

" activate prettier for typescript
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript



"------------------------------------------------------------
" vim better whitespace
"
" Ref: ntpeters/vim-better-whitespace
autocmd FileType css,less,scss,js,jsx,json,ts,tsx,py,html,sh autocmd BufEnter <buffer> EnableStripWhitespaceOnSave


"------------------------------------------------------------
" NerdCommenter config
"
" Ref: scrooloose/nerdcommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 0

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"------------------------------------------------------------
" Bufferline
"
" Ref: akinsho/nvim-bufferline.lua
lua << EOF
require("bufferline").setup{}
EOF


"------------------------------------------------------------
" Auto pairs
"
" Ref: windwp/nvim-autopairs
lua << EOF
require('nvim-autopairs').setup()
EOF


"------------------------------------------------------------
" LuaLine
"
" Ref: nvim-lualine/lualine.nvim
lua << EOF
require('plenary.reload').reload_module('lualine', true)
require('lualine').setup({
  options = {
    theme = 'powerline_dark',
    disabled_types = { 'NvimTree' }
  },
  sections = {
    lualine_x = {},
    -- lualine_y = {},
    -- lualine_z = {},
  }
})
EOF


"------------------------------------------------------------
" vim-grepper config
"
" Ref: mhinz/vim-grepper
"
" Use ag in :Ack if available, otherwise falls back to ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Mappings
nnoremap <leader>g :Grepper -tool ack<cr>


"------------------------------------------------------------
" colorizer
"
" Ref: norcalli/nvim-colorizer.lua
lua require'colorizer'.setup()


"------------------------------------------------------------
" gitsigns
"
" Ref: lewis6991/gitsigns.nvim
lua << EOF
  require('gitsigns').setup {
    current_line_blame = true,
  }
EOF


"------------------------------------------------------------
" Telescope
"
" Ref: nvim-telescope/telescope.nvim
lua << EOF
    require('telescope').setup()
    require('telescope').load_extension('fzf')
    require("telescope").load_extension "file_browser"
EOF
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"------------------------------------------------------------
" GitHub Copilot
"
" Ref: github/copilot.vim
" Set Node path
" ref: https://github.com/github-community/community/discussions/13310
let g:copilot_node_command = '/opt/homebrew/opt/node@16/bin/node'


"------------------------------------------------------------
" Tabnine cmp
"
" Ref: https://github.com/tzachar/cmp-tabnine
" local tabnine = require('cmp_tabnine.config')
" tabnine:setup({
"         max_lines = 1000;
"         max_num_results = 20;
"         sort = true;
"         run_on_every_keystroke = true;
"         snippet_placeholder = '..';
"         ignored_file_types = { -- default is not to ignore
"                 -- uncomment to ignore in lua:
"                 -- lua = true
"         };
"         show_prediction_strength = false;
" })
" lua << EOF
" local tabnine = require('cmp_tabnine.config')
" tabnine:setup({
"         max_lines = 1000;
"         max_num_results = 20;
"         sort = true;
"         run_on_every_keystroke = true;
"         snippet_placeholder = '..';
"         ignored_file_types = { -- default is not to ignore
"                 -- uncomment to ignore in lua:
"                 -- lua = true
"         };
"         show_prediction_strength = false;
" })
" EOF


"------------------------------------------------------------
" LSP Config
"
" Ref: neovim/nvim-lspconfig
" npm i -g typescript typescript-language-server
lua << EOF
local util = require "lspconfig/util"
require 'lspconfig'.tsserver.setup{
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false

        local ts_utils = require("nvim-lsp-ts-utils")
        ts_utils.setup({})
        ts_utils.setup_client(client)

        buf_map(bufnr, "n", "gs", ":TSLspOrganize<CR>")
        buf_map(bufnr, "n", "gi", ":TSLspRenameFile<CR>")
        buf_map(bufnr, "n", "go", ":TSLspImportAll<CR>")
        on_attach(client, bufnr)
    end,
    root_dir = util.root_pattern(".git", "tsconfig.json", "jsconfig.json"),
}
EOF

lua << EOF
local lspconfig = require("lspconfig")
local null_ls = require("null-ls")
local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end
local on_attach = function(client, bufnr)
    vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    vim.cmd("command! LspDiagPrev lua vim.diagnostic.goto_prev()")
    vim.cmd("command! LspDiagNext lua vim.diagnostic.goto_next()")
    vim.cmd("command! LspDiagLine lua vim.diagnostic.open_float()")
    vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    buf_map(bufnr, "n", "gd", ":LspDef<CR>")
    buf_map(bufnr, "n", "gr", ":LspRename<CR>")
    buf_map(bufnr, "n", "gy", ":LspTypeDef<CR>")
    buf_map(bufnr, "n", "K", ":LspHover<CR>")
    buf_map(bufnr, "n", "[a", ":LspDiagPrev<CR>")
    buf_map(bufnr, "n", "]a", ":LspDiagNext<CR>")
    buf_map(bufnr, "n", "ga", ":LspCodeAction<CR>")
    buf_map(bufnr, "n", "<Leader>a", ":LspDiagLine<CR>")
    buf_map(bufnr, "i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>")
    if client.resolved_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
end
lspconfig.tsserver.setup({
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
        local ts_utils = require("nvim-lsp-ts-utils")
        ts_utils.setup({})
        ts_utils.setup_client(client)
        buf_map(bufnr, "n", "gs", ":TSLspOrganize<CR>")
        buf_map(bufnr, "n", "gi", ":TSLspRenameFile<CR>")
        buf_map(bufnr, "n", "go", ":TSLspImportAll<CR>")
        on_attach(client, bufnr)
    end,
})
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.formatting.prettier,
    },
    on_attach = on_attach,
})
EOF

lua << EOF
-- npm install -g diagnostic-languageserver eslint_d prettier_d_slim prettier
local function on_attach(client)
  print('Attached to ' .. client.name)
end
local dlsconfig = require 'diagnosticls-configs'
dlsconfig.init {
  default_config = false,
  format = true,
  on_attach = on_attach,
}
local eslint = require 'diagnosticls-configs.linters.eslint'
local prettier = require 'diagnosticls-configs.formatters.prettier'
prettier.requiredFiles = {
    '.prettierrc',
    '.prettierrc.json',
    '.prettierrc.toml',
    '.prettierrc.json',
    '.prettierrc.yml',
    '.prettierrc.yaml',
    '.prettierrc.json5',
    '.prettierrc.js',
    '.prettierrc.cjs',
    'prettier.config.js',
    'prettier.config.cjs',
  }
dlsconfig.setup {
  ['javascript'] = {
    linter = eslint,
    formatter = { prettier }
  },
  ['javascriptreact'] = {
    linter = { eslint },
    formatter = { prettier }
  },
  ['css'] = {
    formatter = prettier
  },
  ['html'] = {
    formatter = prettier
  },
}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gh    <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gca   <cmd>:Telescope lsp_code_actions<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>fo <cmd>lua vim.lsp.buf.formatting()<CR>


"--------------------------------------------------------
" Dashboard
"
" Ref: glephir/dashboard-nvim
let s:header = [
    \ '',
    \ '',
    \ '            ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
    \ '            ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
    \ '            ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
    \ '            ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
    \ '            ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
    \ '            ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
    \ '',
    \ '                              [ @nzambello ]',
    \ ]
let s:footer = []
let g:startify_custom_header = s:header
let g:dashboard_custom_header = s:header
let g:dashboard_custom_footer = s:footer


"----------------------------------------------------------
" NeoVim Tree
"
" Ref: kyazdani42/nvim-tree.lua
lua << EOF
require'nvim-tree'.setup {
  open_on_setup_file = true,
  open_on_setup = true,
  open_on_tab = true,
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
}
EOF

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>



"------------------------------------------------------------
" integrated terminal mappings
"
" :terminal
noremap <leader>t :vertical terminal<cr>
noremap <leader>T :terminal<cr>



"------------------------------------------------------------
" vim-closetag
"
" Ref: alvan/vim-closetag
"
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.pt,*.zcml,*.jsx'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.pt, *.zcml'

" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 0

" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'


"------------------------------------------------------------
" editorconfig
"
" Ref: editorconfig/editorconfig-vim
"
" To ensure that editorconfig works well with Tim Pope's fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']



"------------------------------------------------------------
" prettier
"
" Ref: prettier/vim-prettier

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


"------------------------------------------------------------
" easy align
"
" Ref: junegunn/vim-easy-align
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"------------------------------------------------------------
" trouble.vim
"
" Ref: folke/trouble.nvim
lua << EOF
  require("trouble").setup()
EOF


"-------------------------------------------------------------
" LSP installer + cmp
"
" Ref: williamboman/nvim-lsp-installer
" Ref: hrsh7th/nvim-cmp
lua << EOF
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {
      capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
    server:setup(opts)
end)
EOF

"-------------------------------------------------------------
" cmp
"
" Ref: hrsh7th/nvim-cmp
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    auto_select = false,
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-Space>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      ['<Tab>'] = function(fallback)
        if not cmp.select_next_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if not cmp.select_prev_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      -- { name = 'TabNine' },
      -- { name = 'cmp_tabnine' },
      -- For vsnip user.
      -- { name = 'vsnip' },
      -- For luasnip user.
      { name = 'path' },
      -- For ultisnips user.
      -- { name = 'ultisnips' },
      { name = 'luasnip' },
      { name = 'buffer', keywork_length = 5 },
      { name = 'npm', keyword_length = 4 },
    },
    formatting = {
      -- format = require('lspkind').cmp_format {
      --   with_text = true,
      --   menu = {
      --     buffer = "[buf]",
      --     nvim_lsp = "[LSP]",
      --     path = "[path]",
      --     luasnip = "[snip]"
      --   }
      -- }
    },
    experimental = {
      ghost_text = true
    }
  })
EOF
