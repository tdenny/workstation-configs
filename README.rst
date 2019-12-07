Tmux
====

Install the `Tmux Plugin Manager <https://github.com/tmux-plugins/tpm>`_.

Link the Tmux config file.

.. code-block:: shell

  ln -s $(pwd)/.tmux.conf ~/.tmux.conf
  ln -s $(pwd)/.tmux.conf.local ~/.tmux.conf.local

Then, install `Tmux Yank <https://github.com/tmux-plugins/tmux-yank>`_.

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
