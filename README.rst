Tmux
====

Install the `Tmux Plugin Manager <https://github.com/tmux-plugins/tpm>`_.

Link the Tmux config file. Consider updating from upstream
`tmux config <https://github.com/gpakosz>`_.

.. code-block:: shell

  ln -s $(pwd)/.tmux.conf ~/.tmux.conf
  ln -s $(pwd)/.tmux.conf.local ~/.tmux.conf.local

Then, install `Tmux Yank <https://github.com/tmux-plugins/tmux-yank>`_.

Add Tmux to ``.bashrc`` or use ``.bashrc`` in this repo.

.. code-block:: shell

  # tmux
  if [ -z "$TMUX" ]; then
      tmux attach -t default || tmux new -s default
  fi

Vim
===

Compile `vim <https://github.com/vim/vim/`_.

.. code-block:: shell

   PY_CONFIG_DIR=$(pyenv prefix)/lib/python3.12/config-3.12-x86_64-linux-gnu
   PY_LIB_DIR=$(pyenv prefix)/lib
   ./configure \
       --with-python3-config-dir="$(pyenv prefix)/lib/python3.12/config-3.12-x86_64-linux-gnu" \
       --enable-python3interp=dynamic \
       --with-features=huge \
       --enable-multibyte \
       LDFLAGS="-Wl,-rpath=${PY_LIB_DIR}" \
       --prefix=/usr/local
   make
   sudo make install

Install `Vundle.vim <https://github.com/VundleVim/Vundle.vim>`_.

.. code-block:: shell

   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

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

Add Liquid Prompt to ``.bashrc`` or use ``.bashrc`` in this repo.

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

Install Tools
=============

.. code-block:: shell

  sudo dnf install xclip ripgrep

- `eza <https://github.com/eza-community/eza/blob/main/INSTALL.md>`_
- `restview <https://pypi.org/project/restview/>`_
- `pyenv <https://github.com/pyenv/pyenv>`_
- `nvm <https://github.com/nvm-sh/nvm>`_
- `bat <https://github.com/sharkdp/bat?tab=readme-ov-file#installation>`_

MacOS
=====

- Install raycast.
- Install brew and raycast brew plugin
- Install rectangle window management

