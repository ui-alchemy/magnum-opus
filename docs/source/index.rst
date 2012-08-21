.. ConvergeUI Example documentation master file, created by
   sphinx-quickstart on Sun Jun 17 18:07:49 2012.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to ConvergeUI Example's documentation!
==============================================

This is a simple rails application that is used to show off how to not only incorporate converge-ui but as a simple test bed for viewing styles and layouts.  This repository can be used for demo purposes or with some tweaks to the git configuration, as a development environment for converge-ui. A demo of the site running on Openshift can be seen here:

http://convergeui-ehelms.rhcloud.com/

------------------
Getting Started
------------------

When cloning converge-ui-example, the simplest method is to use the --recursive flag::

  git clone --recursive  http://github.com/Katello/converge-ui-example.git

If you have already cloned the repository without the --recursive flag, running the following to take care of submodule setup::

  git submodule init
  git submodule update  

or::

  git submodule update --init

----------------------
Developing Converge-UI
----------------------

To develop converge-ui while using this example app, the git config inside the submodule needs to be updated to point to your fork of converge-ui.  Then the master branch needs to be checked out since standard project cloning puts you on 'no branch' pointing to the latest commit.  Change directories to vendor/converge-ui and edit the .git/config file to point to your fork of converge-ui.

Command Line::
 
  git remote add <github_username> git@github.com:<github_username>/converge-ui.git

Or Add Directly::

  [remote "ehelms"]
          url = git@github.com:<github_username>/converge-ui.git
          fetch = +refs/heads/*:refs/remotes/<github_username>/*

In order to commit back your changes (not the lack of a trailing slash on line 4)::

  cd vendor/converge-ui
  git commit -a
  git push <github_username> master
  cd ../../
  git add vendor/converge-ui
  git commit -a
  git push <github_username> master
