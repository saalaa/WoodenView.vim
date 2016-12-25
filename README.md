# WoodenView.vim

Simple and stupid Vim plugin to handle window splits.


## Installation

No other mean of installation than Pathogen has been tested.


## Configuration

You'll certainly want to map commands exported by the plugin:

    " You'll need to define a mapleader.
    let mapleader = "\<Space>"

    nmap <silent> <leader>l <Plug>WoodenViewSplit
    nmap <silent> <leader>j <Plug>WoodenViewSwitchMain


## Usage

With the above setup you'll be able to perform two things:

- Press `space l` to split the window vertically or horizontally and jump to the
  new window. Windows are split depending on available space (using `testwidth`
  and `numberwidth`).
- Press `space j` to swtich buffers between the current window and the main
  (top left) window. File positions are restored and centered in window.

That's it.


## Preview

<center>
![Preview](https://github.com/saalaa/WoodenView.vim/raw/master/preview.gif)
</center>


## License

If it matters, this plugin is release under the BSD license.
