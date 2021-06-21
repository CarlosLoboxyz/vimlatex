# Before you start: #
This project is far from complete, use it at your own risk, however, fell free to ask about something relating to the script and help improving it :)

## Dependencies and use: ##
__*To start using this script you must install the following packages in your system:*__
1. [Suckless tabbed](https://tools.suckless.org/tabbed/)
2. [Suckless dmenu](https://tools.suckless.org/dmenu/)
3. Zathura PDF Reader (`pacman -S zathura zathura-pdf-poppler`)
4. Vim or Neovim (`pacman -S vim` or `pacman -S neovim`)

__*Steps to use:*__
1. Copy or clone `vimlatex` script somewhere in your `path`.
2. Create a folder where you want to store you `.tex` documents and templates, inside that folder create a `templates` folder an copy the `new article.tex` file inside.
3. Depeding which shell you use, you will need to edit your `.env` file to add vimlatex variables:
	```shell
	export VIM_LATEX_FOLDER="$HOME/Docs/latex"
	export VIM_LATEX_TEMPLATE_DIR="$VIM_LATEX_FOLDER/templates"
	export VIM_LATEX_OUTPUT="/tmp"
	export VIM_LATEX_DOC="output"
	```
4. Copy the `.exrc` file inside your `$VIM_LATEX_FOLDER` to autocompile files on save
5. execute `vimlatex` and select `Empty file` from dmenu prompt.
6. Give a name to the new file.
7. A window containing zathura should open up, depending on how you installed [tabbed](https://tools.suckless.org/tabbed/) you should be able to navigate to the next tab using vim keys, please read [tabbed](https://tools.suckless.org/tabbed) documentation for more details.

__*Your directories should look like this:*__
```shell
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
1. Manage template folder from dmenu prompt:
	1. Create new templates.
	2. Edit existing templates.
	3. Delete templates.
2. Copy PDF to your clipboard from dmenu prompt.
3. Create Workspaces from dmenu prompt:
	1. Edit multiple `.tex` files to generate a big PDF (thesis, documentation).
4. Create a CLI version.
5. Compile latex in the background when idle instead of when saved.
