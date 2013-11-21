##Description
If you change the current buffer, auto-saves.

##Installation and Usage
Use [vundle](https://github.com/gmarik/vundle) to install the plugin.

The postscript to `~/.vimrc` the next.

```
Bundle 'syui/wauto.vim'
```

Run the following command.

`:so $MYVIMRC | BundleInstall`

##Setting

`~/.vimrc`

```
nmap <Leader>s  <Plug>(AutoWriteStart)
nmap <Leader>ss <Plug>(AutoWriteStop)
```

The key to enable.

`<Leader>`+`s`

The key to disable.

`<Leader>`+`ss`

##Other
###version
vim --version 7.3.867↑

vim --version 7.3.867↓

`CursorHold,InsertLeave`

###mode

Effective at startup.

`~/.vimrc`

```
let g:auto_write = 1
```


##License
Distributed under the MIT License (see LICENSE.txt).

Copyright (c) 2013 syui

