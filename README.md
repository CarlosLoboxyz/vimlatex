# Before you start: #
This project is not meant to be a replacement of already existence latex plugins for vim. The script is far from complete, use it at your own risk, however, fell free to ask about something relating to the script and help improving it :)

## Dependencies and use: ##
__*To start using this script you must install the following packages in your system:*__
1. [Suckless tabbed](https://tools.suckless.org/tabbed/)
2. [Suckless dmenu](https://tools.suckless.org/dmenu/)
3. Zathura PDF Reader (`pacman -S zathura zathura-pdf-poppler`)
4. Vim or Neovim (`pacman -S vim` or `pacman -S neovim`)

__*Steps to use:*__
1. Copy or clone `vimlatex` script somewhere in your `path`.
2. vimlatex will create a folder `$HOME/Docs/latex` if `$VL_DIR` is unset.
3. Copy the `new-article.tex` file inside `$VL_TEMPLATE_DIR`. This is `$HOME/Docs/latex/templates` if `$VL_TEMPLATE_DIR` is unset.
4. Depending which shell you use, you will need to edit your `.env` file to override vimlatex default variables:
	```shell
	export VL_DIR="$HOME/Docs/latex"
	export VL_TEMPLATE_DIR="$VL_FOLDER/templates"
	export VL_OUTPUT="/tmp"
	export VL_COMPILE_METHOD="xelatex"
	```
4. vimlatex will create a `.exrc` automatically inside your `$VL_FOLDER`, but you can override it if you wish.
5. execute `vimlatex` and select `Empty file` from dmenu prompt.
6. Give a name to the new file.
7. A window containing zathura should open up, depending on how you installed [tabbed](https://tools.suckless.org/tabbed/) you should be able to navigate to the next tab using vim keys, please read [tabbed](https://tools.suckless.org/tabbed) documentation for more details.

__*Your directories should look like this:*__
```graphql
├── /home
│   └── /user # Your user directory.
│       ├── ~/Documents
│       │   ├── .env # Depending which shell you use (zsh, bash) you should modify your own (.zshenv, .bashrc)
│       │   └── /latex # Latex main folder, here is where you store all you .tex files
│       │       ├── .exrc # External vim file where compile command is stored.
│       │       ├── example.tex
│       │       ├── github.tex
│       │       ├── my thesis.tex
│       │       └── /templates # Latex template directory, you can create many templates as you need.
│       │           ├── math.tex
│       │           ├── new article.tex
│       │           ├── resume.tex
│       │           ├── thesis.tex
│       │           └── todo list.tex
│       └── /.local
│           └── bin # Your .local/bin here is where you should put your own scripts.
│               └── vimlatex # The vimlatex script
└── /tmp # Ouput folder, you can change this with vimlatex .env variables
    └── output.pdf # The resulting PDF file.
```

### TODO: ###
__*Topics and features i would like to add in the near future to the script*:__
- [] Manage template folder from dmenu prompt:
	- [] Create new templates.
	- [] Edit existing templates.
	- [] Delete templates.
- [] Copy PDF to your clipboard from dmenu prompt.
- [] Create Workspaces from dmenu prompt:
	- [] Edit multiple `.tex` files to generate a big PDF (thesis, documentation).
- [] Create a CLI version.
- [] Compile latex in the background when idle instead of when saved.
