#!/usr/bin/env bash

# Convert MarkDown file to PDF via Pandoc wrapper script
# Copyright (C) 2024 S0AndS0
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, version 3 of the License.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

_input="${1:?No input file provided}";
_output="${2:?No output file provided}";
shift 2

_options=(
  -f markdown-blank_before_blockquote
  -f markdown
  -V colorlinks
  -V includesource
  --highlight-style=tango
  "${@}"
)

[[ -f "${_input}" ]] || {
  printf >&2 'Cannot find input file -> %s\n' "${_input}";
  exit 1;
}

[[ -f "${_output}" ]] && ! (( CLOBBER )) && {
  printf >&2 'File already exists for output -> %s\n' "${_output}";
  exit 1;
}

pandoc "${_options[@]}" -o "${_output}" "${_input}";

