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

Before using the FAI script, you'll need to clone the Git repository and navigate to its directory. Here are the steps:Clone the Git repository:
```
git clone https://github.com/faithful1ofall/Auto-suite
```

Change directory to the repository:
```
cd Auto-suite
```

After you've cloned the repository and changed to its directory

You can install or upgrade the FAI script by executing the following command in the terminal:
```bash
./upgrade
```
This will ensure you have the latest version of the script available for use.

## Usage

To use the FAI script, you can run it from the command line with the following options:
fai [-a|--add-shebang] [-x|--make-executable] [-v|--vi] [-e|--emacs] [-t|--terminal]

-a or --add-shebang: Adds a shebang to the file.

-x or --make-executable: Makes the file executable.

-v or --vi: Edits the file with Vi.

-e or --emacs: Edits the file with Emacs.

-t or --terminal: Interactively adds content to the file in the terminal.

## Example Usage

Here are some examples of how to use the FAI script:

Add a shebang to a file: 
```bash
fai -a filename
```

Add a shebang and make a file executable: 
```bash
fai -a -x filename
```

Edit a file with Vi: fai -v filename

Add a shebang, make a file executable, and edit with Vi: 
```bash
fai -a -x -v filename
```

Interactively edit a file in the terminal (mobile friendly)  with the -t option: 
```bash
fai -t filename
```
This command allows you to interactively add content to the file. To finish adding input and save the content, type FAI on a new line and press Enter.
