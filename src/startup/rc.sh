# rc.sh
# .bash
#
# Copyright © 2023 Dagitali LLC. All rights reserved.
#
# Sets variables and sources aliases/functions for interactive non-login shell
# sessions (e.g., for Bash: ~/.bashrc or /etc/bashrc).

# shellcheck shell=bash disable=SC2086 source=/dev/null

# SECTION: VARIABLES ======================================================== #

BASH_HOME="${BASH_HOME:-$(dirname "$(dirname "$(dirname "${_}")")")}"
ENV_HOME="${ENV_HOME:-${HOME}/.env}"

# SECTION: ALIASES ========================================================== #

# Match non-comment, non-empty lines.
alias __bash_strip='grep -Ev "^#|^$"'

# SECTION: FUNCTIONS ======================================================== #

__bash_error() {
  echo "$0: $*" >&2
}

# FIXME: Line 32 doesn't cumulatively export recursively-set variables.
# __bash_export() {
#   for path in "${@}"; do
#     if [[ -f "${path}" ]]; then
#       echo "Exporting variables from ${path}..."
#       for line in $(__bash_strip "${path}"); do
#         export "${line?}"
#       done
#     elif [[ -d "${path}" ]]; then
#       __bash_error "${path}: Is a directory"
#     else
#       __bash_error "${path}: No such file or directory"
#     fi
#   done
# }

__bash_source() {
  for path in "${@}"; do
    if [[ -f "${path}" ]]; then
      echo "Sourcing ${path}..."
      . "${path}"
    elif [[ -d "${path}" ]]; then
      __bash_error "${path}: Is a directory"
    else
      __bash_error "${path}: No such file or directory"
    fi
  done
}

# SECTION: SOURCES ========================================================== #

# Export environment variables.
__bash_source "${ENV_HOME}"/{secrets,settings}.env

# Source custom Git-ignored shell scripts.
__bash_source "$(ls ${BASH_HOME}/lib/custom)" || true
