#!/usr/bin/env python3
"""This program copies the dotfiles from this directory to your your home directory"""

import shutil
import os


def copy_file():
    """This copies the .dotfiles in current directory to ~/"""
    dst_dir = (os.getenv("HOME") + "/")
    dotfiles = [".vimrc", ".Xresources", ".zshrc"]
    yes = {'Y', 'y'}
    no = {'N', 'n'}
    for dotfile in dotfiles:
        print("Copy", dotfile, "?")
        while True:
            menu = input("Y/y for yes, N/n for no: ")
            if menu in yes:
                print("copying", dotfile)
                shutil.copy(dotfile, dst_dir)
                break
            elif menu in no:
                print("Won't copy", dotfile)
                break
            else:
                print("try again")

def copy_directory():
    """This copies the .dotfiles that are in .config"""
    yes = {'Y', 'y'}
    no = {'N', 'n'}
    src_dir = (".config/")
    dst_dir = (os.getenv("HOME") + "/.config/")
    dotfiles = os.listdir(src_dir)
    print(dst_dir)
    for dotfile in dotfiles:
        src_file = os.path.join(src_dir, dotfile)
        dst_file = os.path.join(dst_dir, dotfile)
        print("Copy", dotfile, "?")
        while True:
            menu = input("Y/y for yes, N/n for no: ")
            if menu in yes:
                print("copying", dotfile)
                if os.path.exists(dst_file):
                    shutil.rmtree(dotfile, dst_dir)
                shutil.copytree(src_file, dst_file)
                break
            elif menu in no:
                print("Won't copy", dotfile)
                break
            else:
                print("try again")

def main():
    """main function"""
    copy_file()
    copy_directory()

main()
