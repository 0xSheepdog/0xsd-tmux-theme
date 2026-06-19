#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
0XSD_THEME_COMMON_CONFIG_FILE="0xsd_common.conf"
0XSD_DEFAULT_THEME="0xsd_default.conf"
0XSD_NO_PATCHED_FONT_THEME="0xsd_no_patched_font.conf"
0XSD_NO_PATCHED_FONT_OPTION="@0xsd_no_patched_font"

main() {
  tmux source-file "$CURRENT_DIR/$0XSD_THEME_COMMON_CONFIG_FILE"

  local no_patched_font=$(tmux show-option -gqv "$0XSD_NO_PATCHED_FONT_OPTION")

  local theme_file="$0XSD_DEFAULT_THEME"
  if [ "$no_patched_font" == "1" ]; then
    theme_file="$0XSD_NO_PATCHED_FONT_THEME"
  fi
  tmux source-file "$CURRENT_DIR/$theme_file"

  unset CURRENT_DIR
  unset 0XSD_THEME_COMMON_CONFIG_FILE
  unset 0XSD_DEFAULT_THEME
  unset 0XSD_NO_PATCHED_FONT_THEME
  unset 0XSD_NO_PATCHED_FONT_OPTION
}

main
