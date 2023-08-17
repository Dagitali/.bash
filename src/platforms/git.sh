# git.sh
# .bash
#
# Copyright © 2023 Dagitali LLC. All rights reserved.
#
# Sets default values for Git-related variables; sources Git-related scripts.
# See https://git-scm.com.
#
# REFERENCES:
# 1. https://git-scm.com/book/en/v2/Git-Internals-Environment-Variables
# 2. https://kb.novaordis.com/index.php/Git_Environment_Variables
# 3. https://pagefault.blog/2017/02/16/improved-git-cli-with-git-completion-and-git-prompt/

# shellcheck shell=bash disable=SC2154

# SECTION: VARIABLES ##########################################################

### Native ###

# Customize editor invocation during a Git merge/pull.
export GIT_MERGE_AUTOEDIT=${GIT_MERGE_AUTOEDIT:-0}

### 3rd-Party ###

# Customize Bash/Zsh completion suppor for core Git.
export GIT_COMPLETION_CHECKOUT_NO_GUESS=${GIT_COMPLETION_CHECKOUT_NO_GUESS:-1}
export GIT_COMPLETION_IGNORE_CASE=${GIT_COMPLETION_IGNORE_CASE:-1}
export GIT_COMPLETION_SHOW_ALL=${GIT_COMPLETION_SHOW_ALL:-1}
export GIT_COMPLETION_SHOW_ALL_COMMANDS=${GIT_COMPLETION_SHOW_ALL_COMMANDS:-1}

# Customize Git prompt support.
export GIT_PS1_HIDE_IF_PWD_IGNORED=${GIT_PS1_HIDE_IF_PWD_IGNORED:-1}
export GIT_PS1_SHOWCOLORHINTS=${GIT_PS1_SHOWCOLORHINTS:-1}
export GIT_PS1_SHOWDIRTYSTATE=${GIT_PS1_SHOWDIRTYSTATE:-1}
export GIT_PS1_SHOWSTASHSTATE=${GIT_PS1_SHOWSTASHSTATE:-1}
export GIT_PS1_SHOWUNTRACKEDFILES=${GIT_PS1_SHOWUNTRACKEDFILES:-1}
export GIT_PS1_SHOWUPSTREAM=${GIT_PS1_SHOWUPSTREAM:-auto}

# SECTION: SOURCES ############################################################

# Source Git-related scripts.
[[ -d "${BASH_HOME}"/lib/git ]] &&
  __bash_source "${BASH_HOME}"/lib/git/*
