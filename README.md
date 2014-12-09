git-repo-setup
==============

The idea of this script is to keep everything necessary to setup your git repo inside version control.

Think of a new developer cloning your repo and starting to work on it: You most likely would want her or him to be able to quickly get his local copy of the code close to that one of the other developers.

Many projects have git hooks setup that simplify development. With this script you can easily share them among You might have custom git commands useful in the context of the project.  


Features
========

git hooks
---------
You can put your **git hooks** to `hooks` directory next to  `setup.sh`. One file per hook just like they would be placed in `.git/hooks` normally.

The hooks will be linked to `.git/hooks` upon execution of `setup.sh`, overriding any hooks of the same name already existing there.

git commands
------------
If you have created **custom git commands** for your project, you can place the files in a directory named `commands`.

Those commands will be available through the power of git aliases without being copied to the `$PATH`. This way you can have different git commands of the same name for your projects.

git config
----------
If you put a file named `config` to a directory `config` this file will be included to the **git config** already in place (global config, user config, project config).

For this feature you need at least version `1.7.10`.


Example output
==============
    user@machine$ repo/setup.sh
    --- setting up git hooks
    creating hook 'pre-commit'... ✓

    --- setting up git config
    adding include path... ✓

    --- enabling project custom git commands
    enabling command 'example' (file example)... ✓


Usage
=====
To bootstrap a version of this script that can be copied to a new project run

    mkdir /tmp/git-repo-setup
    git archive HEAD | tar -x -C /tmp/git-repo-setup
    ls -la /tmp/git-repo-setup


Testing
=======

    repo/setup.sh
    touch test
    git add test
    git my-commit
