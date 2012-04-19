===================
Converge-UI Example
===================

This is a simple rails application that is used to show off how to not only incorporate converge-ui but as a simple test bed for viewing styles and layouts.  This repository can be used for demo purposes or with some tweaks to the git configuration, as a development environment for converge-ui.

------------------
Getting Started
------------------

When cloning converge-ui-example, the simplest method is to use the --recursive flag::

  git clone --recursive  http://github.com/Katello/converge-ui-example.git

If you have already cloned the repository without the --recursive flag, running the following to take care of submodule setup::

  git submodule init
  git submodule update  

----------------------
Developing Converge-UI
----------------------

To develop converge-ui while using this example app, the git config needs to be updated to point to the read/write version of your converge-ui repository URL.  Then the master branch needs to be checked out since standard project cloning puts you on 'no branch' pointing to the latest commit.

Change::


  [submodule "vendor/converge-ui"]
          url = https://github.com/Katello/converge-ui.git

To::


  [submodule "vendor/converge-ui"]
          url = https://<github_username>@github.com/Katello/converge-ui.git

In order to commit back your changes (not the lack of a trailing slash on line 4)::

  cd vendor/converge-ui
  git commit -a
  cd ../../
  git add vendor/converge-ui
  git commit -a
