#!/bin/bash

echo ">> upgrading the system"
pacman -Syu

echo ">> upgrading the database"
pacman -Syy

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo ">> Install python2 and python3"

echo ">> Install python3 pip, setup tools and virtualenv"
sudo pacman -S --needed --noconfirm python-pip python-setuptools python-virtualenv

echo ">> Install python2 pip setup tools and virtualenv"
sudo pacman -S --needed --noconfirm python2-pip python2-setuptools python2-virtualenv python-virtualenvwrapper

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo ">> Install Haskell platform"

echo ">> Install the haskell compiler ghc"
sudo pacman -S --needed --noconfirm ghc

echo ">> Install a command-line interface for Cabal and Hackage"
sudo pacman -S --needed --noconfirm cabal-install

echo ">> Install haddock, tools for generating documentation"
sudo pacman -S --needed --noconfirm haddock

echo ">> Install happy, a parser generator"
sudo pacman -S --needed --noconfirm happy

echo ">> Install alex, a lexical parser generator"
sudo pacman -S --needed --noconfirm alex

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo ">> Installing Golang"
sudo pacman -S --needed --noconfirm go

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo ">> Install jekyll"

echo ">> Install nodejs"
sudo pacman -S --needed --noconfirm nodejs

echo ">> Update gem"
gem Update

echo ">> install jekyll"
gem install jekyll
