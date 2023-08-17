# profile.sh
# .bash
#
# Copyright © 2023 Dagitali LLC. All rights reserved.
#
# Sets variables and sources aliases/functions for interactive login shell
# sessions (e.g., for Bash: ~/.bash_profile).

# shellcheck shell=bash

# SECTION: VARIABLES ##########################################################

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# SECTION: SOURCES ############################################################

# Source Git-related shell scripts.
__bash_source "${BASH_HOME}"/src/platforms/git.sh
