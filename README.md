# skelvim :space_invader:

## Setup (English below) 
1. loggaðu þig inn á skel 
2. búðu til folder sem heitir .config í home directoryrinu þínu á skel (mkdir .config) 
3. færðu þig inn í .config (cd .config)
4. búðu til folder sem heitir nvim inni í .config (mkdir nvim) og færðu þig inn í hann (cd nvim)
5. clone-aðu skelvim repo-ið í nvim folderinn (git clone https://github.com/lsig/skelvim.git .)
6. clone-aðu packer, sjá quickstart (plug-in manager, skel er á linux) [packer.nvim](https://github.com/wbthomason/packer.nvim)
7. "install-aðu" plugins
    - opnaðu file-ið packer.lua (nvim ./.config/nvim/lua/lsig/packer.lua)
    - Skrifaðu ":so" og ýttu á enter og svo ":PackerSync" og ýttu aftur á enter. 
    - Ýttu síðan q og skrifaðu ":wq" og enter til þess að save-a og exit-a neovim
8. Njóttu skelvim

##
1. log into skel
2. make a folder called .config in your home directory on skel (mkdir .config)
3. move into .config folder (cd .config) 
4. make a folder called nvim inside of .config (mkdir nvim) and move into it (cd nvim)
5. clone the skelvim repo into the .config folder (git clone https://github.com/lsig/skelvim.git)
6. clone packer, see quickstart (plug-in manager, remember skel runs on linux) [packer.nvim](https://github.com/wbthomason/packer.nvim)
7. install plugins
    - open the file packer.lua like this: nvim ./.config/nvim/lua/lsig/packer.lua
    - Write ":so" and press enter and then write ":PackerSync" and press enter again. 
    - Press q when the plugins are finished installing an write ":wq" and enter to save and exit neovim
8. Enjoy skelvim
