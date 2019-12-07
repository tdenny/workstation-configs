Tmux
====

Install the `Tmux Plugin Manager <https://github.com/tmux-plugins/tpm>`_.

Link the Tmux config file.

.. code-block:: shell

  ln -s $(pwd)/.tmux.conf ~/.tmux.conf
  ln -s $(pwd)/.tmux.conf.local ~/.tmux.conf.local

Then, install `Tmux Yank <https://github.com/tmux-plugins/tmux-yank>`_.

Add Tmux to ``.bashrc``

.. code-block:: shell

  # tmux
  if [ -z "$TMUX" ]; then
      tmux attach -t default || tmux new -s default
  fi

Vim
===

Install `pathogen.vim <https://github.com/tpope/vim-pathogen>`_.

.. code-block:: shell

  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

Install `Vim Better Whitespace <https://github.com/ntpeters/vim-better-whitespace>`_.

.. code-block:: shell

  git clone https://github.com/ntpeters/vim-better-whitespace ~/.vim/bundle/vim-better-whitespace

Install `Vim reStructured Text <https://github.com/marshallward/vim-restructured-text>`_.

.. code-block:: shell

  git clone https://github.com/marshallward/vim-restructuredtext ~/.vim/bundle/vim-restructured-text

Install `Vim YAML <https://github.com/stephpy/vim-yaml>`_.

.. code-block:: shell

  git clone https://github.com/stephpy/vim-yaml ~/.vim/bundle/vim-yaml

Link Vim config file.

.. code-block:: shell

  ln -s $(pwd)/.vimrc ~/.vimrc

Liquid Prompt
=============

Clone Liquid Prompt project.

.. code-block:: shell

  git clone https://github.com/nojhan/liquidprompt

Link Liquid Prompt config files.

.. code-block:: shell

  ln -s $(pwd)/.liquidpromptrc ~/.liquidpromptrc
  ln -s $(pwd)/liquid.ps1 ~/.config/liquid.ps1

Add Liquid Prompt to ``.bashrc``.

.. code-block:: shell

  # liquidprompt
  [[ $- = *i* ]] && source ~/Projects/liquidprompt/liquidprompt

Input Font
==========

Download fonts from https://input.fontbureau.com/download/.

Unzip and copy ``*.ttf`` files to ``~/.fonts``.

.. code-block:: shell

  unzip Input-Font.zip
  cd Input_Fonts
  find . -name *.ttf -type -f -exec cp {} /home/travis/.fonts \;
  fc-cache -fvx
