# Auto-suite
Get automated scripts 
# fai Script README

## Overview

The fai script provides a set of functions to perform various tasks on a given file, including adding a shebang, making it executable, and editing it with different text editors. It is designed to be used from the command line with specific flags and a target filename.

## Functions

### 1. `add_shebang()`

- Adds a shebang (`#!/bin/bash`) to the beginning of a file if it doesn't already have one.

### 2. `make_executable()`

- Makes the specified file executable by changing its permissions.

### 3. `edit_with_vi()`

- Opens the file for editing using the Vi text editor.

### 4. `edit_with_emacs()`

- Opens the file for editing using the Emacs text editor.

### 5. `edit_in_terminal()`

- Allows you to interactively add content to the file in the terminal, with a special marker to finish input.

   **Note:** The `-t` option is mobile-friendly and suitable for use on mobile devices.

   To exit the interactive mode, you can type `FAI` (stands for "Finish Adding Input") on a new line and press Enter. This will finish the input and save the content to the file.

## Installation and Upgrade

You can install or upgrade the FAI script by executing the following command in the terminal:

```bash
./upgrade
