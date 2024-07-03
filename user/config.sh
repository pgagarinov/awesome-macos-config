#!/bin/bash
set -e
MSGCOLOR=$(tput setaf 3)
NOCOLOR=$(tput sgr0)

full_path=$(realpath $0)
dir_path=$(dirname $full_path)
printf "${MSGCOLOR}CONFIGURING USER PROFILE...${NOCOLOR}\n"

printf "${MSGCOLOR}Configuring NeoVim...${NOCOLOR}\n"
$dir_path/config_neovim.sh
printf "${MSGCOLOR}Configuring NeoVim: done${NOCOLOR}\n\n"

printf "${MSGCOLOR}Configuring Jupyter...${NOCOLOR}\n"
$dir_path/config_jupyter.sh
printf "${MSGCOLOR}Configuring Jupyter: done${NOCOLOR}\n\n"

printf "${MSGCOLOR}Installing and configuring OhMyZsh...${NOCOLOR}\n"
$dir_path/config_ohmyzsh.sh
printf "${MSGCOLOR}Installing and configuring OhMyZsh: done${NOCOLOR}\n"

printf "${MSGCOLOR}Configuring Diff so Fancy...${NOCOLOR}\n"
$dir_path/config_diff_so_fancy.sh
printf "${MSGCOLOR}Configuring Diff so Fancy: done${NOCOLOR}\n\n"

printf "${MSGCOLOR}Configuring git...${NOCOLOR}\n"
$dir_path/config_git.sh
printf "${MSGCOLOR}Configuring git: done${NOCOLOR}\n"

printf "${MSGCOLOR}Configuring tig...${NOCOLOR}\n"
$dir_path/config_tig.sh
printf "${MSGCOLOR}Configuring tig: done${NOCOLOR}\n"

printf "${MSGCOLOR}Configuring broot...${NOCOLOR}\n"
$dir_path/config_broot.sh
printf "${MSGCOLOR}Configuring broot: done${NOCOLOR}\n"

printf "${MSGCOLOR}Configuring broot...${NOCOLOR}\n"
$dir_path/config_vscode.sh
printf "${MSGCOLOR}Configuring broot: done${NOCOLOR}\n"

printf "${MSGCOLOR}CONFIGURING USER PROFILE: COMPLETED SUCCESSFULLY!!!${NOCOLOR}\n"