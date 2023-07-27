# Nushell Config File
#
# version = 0.82.0

# For more information on defining custom themes, see
# https://www.nushell.sh/book/coloring_and_theming.html
# And here is the theme collection
# https://github.com/nushell/nu_scripts/tree/main/themes
let snazzy_theme = {
    separator: "#e2e4e5"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#5af78e" attr: "b" }
    empty: "#57c7ff"
    bool: {|| if $in { "#9aedfe" } else { "light_gray" } }
    int: "#e2e4e5"
    filesize: {|e|
        if $e == 0b {
            "#e2e4e5"
        } else if $e < 1mb {
            "#9aedfe"
        } else {{ fg: "#57c7ff" }}
    }
    duration: "#e2e4e5"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#ff5c57" attr: "b" }
        } else if $in < 6hr {
            "#ff5c57"
        } else if $in < 1day {
            "#f3f99d"
        } else if $in < 3day {
            "#5af78e"
        } else if $in < 1wk {
            { fg: "#5af78e" attr: "b" }
        } else if $in < 6wk {
            "#9aedfe"
        } else if $in < 52wk {
            "#57c7ff"
        } else { "dark_gray" }
    }
    range: "#e2e4e5"
    float: "#e2e4e5"
    string: "#e2e4e5"
    nothing: "#e2e4e5"
    binary: "#e2e4e5"
    cellpath: "#e2e4e5"
    row_index: { fg: "#5af78e" attr: "b" }
    record: "#e2e4e5"
    list: "#e2e4e5"
    block: "#e2e4e5"
    hints: "dark_gray"
    search_result: { fg: "#ff5c57" bg: "#e2e4e5" }

    shape_and: { fg: "#ff6ac1" attr: "b" }
    shape_binary: { fg: "#ff6ac1" attr: "b" }
    shape_block: { fg: "#57c7ff" attr: "b" }
    shape_bool: "#9aedfe"
    shape_custom: "#5af78e"
    shape_datetime: { fg: "#9aedfe" attr: "b" }
    shape_directory: "#9aedfe"
    shape_external: "#9aedfe"
    shape_externalarg: { fg: "#5af78e" attr: "b" }
    shape_filepath: "#9aedfe"
    shape_flag: { fg: "#57c7ff" attr: "b" }
    shape_float: { fg: "#ff6ac1" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#9aedfe" attr: "b" }
    shape_int: { fg: "#ff6ac1" attr: "b" }
    shape_internalcall: { fg: "#9aedfe" attr: "b" }
    shape_list: { fg: "#9aedfe" attr: "b" }
    shape_literal: "#57c7ff"
    shape_match_pattern: "#5af78e"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#9aedfe"
    shape_operator: "#f3f99d"
    shape_or: { fg: "#ff6ac1" attr: "b" }
    shape_pipe: { fg: "#ff6ac1" attr: "b" }
    shape_range: { fg: "#f3f99d" attr: "b" }
    shape_record: { fg: "#9aedfe" attr: "b" }
    shape_redirection: { fg: "#ff6ac1" attr: "b" }
    shape_signature: { fg: "#5af78e" attr: "b" }
    shape_string: "#5af78e"
    shape_string_interpolation: { fg: "#9aedfe" attr: "b" }
    shape_table: { fg: "#57c7ff" attr: "b" }
    shape_variable: "#ff6ac1"

    background: "#282a36"
    foreground: "#e2e4e5"
    cursor: "#e2e4e5"
}
let one_dark_theme = {
    separator: "#abb2bf"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#98c379" attr: "b" }
    empty: "#61afef"
    bool: {|| if $in { "#56b6c2" } else { "light_gray" } }
    int: "#abb2bf"
    filesize: {|e|
        if $e == 0b {
            "#abb2bf"
        } else if $e < 1mb {
            "#56b6c2"
        } else {{ fg: "#61afef" }}
    }
    duration: "#abb2bf"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#e06c75" attr: "b" }
        } else if $in < 6hr {
            "#e06c75"
        } else if $in < 1day {
            "#d19a66"
        } else if $in < 3day {
            "#98c379"
        } else if $in < 1wk {
            { fg: "#98c379" attr: "b" }
        } else if $in < 6wk {
            "#56b6c2"
        } else if $in < 52wk {
            "#61afef"
        } else { "dark_gray" }
    }
    range: "#abb2bf"
    float: "#abb2bf"
    string: "#abb2bf"
    nothing: "#abb2bf"
    binary: "#abb2bf"
    cellpath: "#abb2bf"
    row_index: { fg: "#98c379" attr: "b" }
    record: "#abb2bf"
    list: "#abb2bf"
    block: "#abb2bf"
    hints: "dark_gray"
    search_result: { fg: "#e06c75" bg: "#abb2bf" }

    shape_and: { fg: "#c678dd" attr: "b" }
    shape_binary: { fg: "#c678dd" attr: "b" }
    shape_block: { fg: "#61afef" attr: "b" }
    shape_bool: "#56b6c2"
    shape_custom: "#98c379"
    shape_datetime: { fg: "#56b6c2" attr: "b" }
    shape_directory: "#56b6c2"
    shape_external: "#56b6c2"
    shape_externalarg: { fg: "#98c379" attr: "b" }
    shape_filepath: "#56b6c2"
    shape_flag: { fg: "#61afef" attr: "b" }
    shape_float: { fg: "#c678dd" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#56b6c2" attr: "b" }
    shape_int: { fg: "#c678dd" attr: "b" }
    shape_internalcall: { fg: "#56b6c2" attr: "b" }
    shape_list: { fg: "#56b6c2" attr: "b" }
    shape_literal: "#61afef"
    shape_match_pattern: "#98c379"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#56b6c2"
    shape_operator: "#d19a66"
    shape_or: { fg: "#c678dd" attr: "b" }
    shape_pipe: { fg: "#c678dd" attr: "b" }
    shape_range: { fg: "#d19a66" attr: "b" }
    shape_record: { fg: "#56b6c2" attr: "b" }
    shape_redirection: { fg: "#c678dd" attr: "b" }
    shape_signature: { fg: "#98c379" attr: "b" }
    shape_string: "#98c379"
    shape_string_interpolation: { fg: "#56b6c2" attr: "b" }
    shape_table: { fg: "#61afef" attr: "b" }
    shape_variable: "#c678dd"

    background: "#1e2127"
    foreground: "#5c6370"
    cursor: "#5c6370"
}

let one_light_theme = {
    separator: "#383a42"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#50a14f" attr: "b" }
    empty: "#4078f2"
    bool: {|| if $in { "#0184bc" } else { "light_gray" } }
    int: "#383a42"
    filesize: {|e|
        if $e == 0b {
            "#383a42"
        } else if $e < 1mb {
            "#0184bc"
        } else {{ fg: "#4078f2" }}
    }
    duration: "#383a42"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#ca1243" attr: "b" }
        } else if $in < 6hr {
            "#ca1243"
        } else if $in < 1day {
            "#c18401"
        } else if $in < 3day {
            "#50a14f"
        } else if $in < 1wk {
            { fg: "#50a14f" attr: "b" }
        } else if $in < 6wk {
            "#0184bc"
        } else if $in < 52wk {
            "#4078f2"
        } else { "dark_gray" }
    }
    range: "#383a42"
    float: "#383a42"
    string: "#383a42"
    nothing: "#383a42"
    binary: "#383a42"
    cellpath: "#383a42"
    row_index: { fg: "#50a14f" attr: "b" }
    record: "#383a42"
    list: "#383a42"
    block: "#383a42"
    hints: "dark_gray"
    search_result: { fg: "#ca1243" bg: "#383a42" }

    shape_and: { fg: "#a626a4" attr: "b" }
    shape_binary: { fg: "#a626a4" attr: "b" }
    shape_block: { fg: "#4078f2" attr: "b" }
    shape_bool: "#0184bc"
    shape_custom: "#50a14f"
    shape_datetime: { fg: "#0184bc" attr: "b" }
    shape_directory: "#0184bc"
    shape_external: "#0184bc"
    shape_externalarg: { fg: "#50a14f" attr: "b" }
    shape_filepath: "#0184bc"
    shape_flag: { fg: "#4078f2" attr: "b" }
    shape_float: { fg: "#a626a4" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#0184bc" attr: "b" }
    shape_int: { fg: "#a626a4" attr: "b" }
    shape_internalcall: { fg: "#0184bc" attr: "b" }
    shape_list: { fg: "#0184bc" attr: "b" }
    shape_literal: "#4078f2"
    shape_match_pattern: "#50a14f"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#0184bc"
    shape_operator: "#c18401"
    shape_or: { fg: "#a626a4" attr: "b" }
    shape_pipe: { fg: "#a626a4" attr: "b" }
    shape_range: { fg: "#c18401" attr: "b" }
    shape_record: { fg: "#0184bc" attr: "b" }
    shape_redirection: { fg: "#a626a4" attr: "b" }
    shape_signature: { fg: "#50a14f" attr: "b" }
    shape_string: "#50a14f"
    shape_string_interpolation: { fg: "#0184bc" attr: "b" }
    shape_table: { fg: "#4078f2" attr: "b" }
    shape_variable: "#a626a4"

    background: "#fafafa"
    foreground: "#383a42"
    cursor: "#383a42"
}

# External completer example
# let carapace_completer = {|spans|
#     carapace $spans.0 nushell $spans | from json
# }


# The default config record. This is where much of your global configuration is setup.
$env.config = {
  # true or false to enable or disable the welcome banner at startup
  show_banner: false
  ls: {
    use_ls_colors: true # use the LS_COLORS environment variable to colorize output
    clickable_links: true # enable or disable clickable links. Your terminal has to support links.
  }
  rm: {
    always_trash: false # always act as if -t was given. Can be overridden with -p
  }
  cd: {
    abbreviations: false # allows `cd s/o/f` to expand to `cd some/other/folder`
  }
  table: {
    mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
    index_mode: always # "always" show indexes, "never" show indexes, "auto" = show indexes when a table has "index" column
    show_empty: true # show 'empty list' and 'empty record' placeholders for command output
    trim: {
      methodology: wrapping # wrapping or truncating
      wrapping_try_keep_words: true # A strategy used by the 'wrapping' methodology
      truncating_suffix: "..." # A suffix used by the 'truncating' methodology
    }
  }

  # datetime_format determines what a datetime rendered in the shell would look like.
  # Behavior without this configuration point will be to "humanize" the datetime display,
  # showing something like "a day ago."

  datetime_format: {
    normal: '%a, %d %b %Y %H:%M:%S %z'  # shows up in displays of variables or other datetime's outside of tables
    # table: '%m/%d/%y %I:%M:%S%p'        # generally shows up in tabular outputs such as ls. commenting this out will change it to the default human readable datetime format
  }

  explore: {
    help_banner: true
    exit_esc: true

    command_bar_text: '#C4C9C6'
    # command_bar: {fg: '#C4C9C6' bg: '#223311' }

    status_bar_background: {fg: '#1D1F21' bg: '#C4C9C6' }
    # status_bar_text: {fg: '#C4C9C6' bg: '#223311' }

    highlight: {bg: 'yellow' fg: 'black' }

    status: {
      # warn: {bg: 'yellow', fg: 'blue'}
      # error: {bg: 'yellow', fg: 'blue'}
      # info: {bg: 'yellow', fg: 'blue'}
    }

    try: {
      # border_color: 'red'
      # highlighted_color: 'blue'

      # reactive: false
    }

    table: {
      split_line: '#404040'

      cursor: true

      line_index: true
      line_shift: true
      line_head_top: true
      line_head_bottom: true

      show_head: true
      show_index: true

      # selected_cell: {fg: 'white', bg: '#777777'}
      # selected_row: {fg: 'yellow', bg: '#C1C2A3'}
      # selected_column: blue

      # padding_column_right: 2
      # padding_column_left: 2

      # padding_index_left: 2
      # padding_index_right: 1
    }

    config: {
      cursor_color: {bg: 'yellow' fg: 'black' }

      # border_color: white
      # list_color: green
    }
  }

  history: {
    max_size: 100_000 # Session has to be reloaded for this to take effect
    sync_on_enter: true # Enable to share history between multiple sessions, else you have to close the session to write history to file
    file_format: "plaintext" # "sqlite" or "plaintext"
    isolation: true # true enables history isolation, false disables it. true will allow the history to be isolated to the current session. false will allow the history to be shared across all sessions.
  }
  completions: {
    case_sensitive: false # set to true to enable case-sensitive completions
    quick: true  # set this to false to prevent auto-selecting completions when only one remains
    partial: true  # set this to false to prevent partial filling of the prompt
    algorithm: "prefix"  # prefix or fuzzy
    external: {
      enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up may be very slow
      max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
      completer: null # check 'carapace_completer' above as an example
    }
  }
  filesize: {
    metric: true # true => KB, MB, GB (ISO standard), false => KiB, MiB, GiB (Windows standard)
    format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, auto
  }
  cursor_shape: {
    emacs: blink_block # block, underscore, line, blink_block, blink_underscore, blink_line (line is the default)
    vi_insert: block # block, underscore, line , blink_block, blink_underscore, blink_line (block is the default)
    vi_normal: underscore # block, underscore, line, blink_block, blink_underscore, blink_line (underscore is the default)
  }
  color_config: $snazzy_theme   # if you want a light theme, replace `$one_dark_theme` to `$one_light_theme`
  use_grid_icons: true
  footer_mode: "25" # always, never, number_of_rows, auto
  float_precision: 2 # the precision for displaying floats in tables
  # buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
  use_ansi_coloring: true
  bracketed_paste: true # enable bracketed paste, currently useless on windows
  edit_mode: emacs # emacs, vi
  shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
  render_right_prompt_on_last_line: false # true or false to enable or disable right prompt to be rendered on last line of the prompt.

  hooks: {
    pre_prompt: [{||
      null  # replace with source code to run before the prompt is shown
    }]
    pre_execution: [{||
      null  # replace with source code to run before the repl input is run
    }]
    env_change: {
      PWD: [{|before, after|
        null  # replace with source code to run if the PWD environment is different since the last repl input
      }]
    }
    display_output: {||
      if (term size).columns >= 100 { table -e } else { table }
    }
    command_not_found: {||
      null  # replace with source code to return an error message when a command is not found
    }
  }
  menus: [
      # Configuration for default nushell menus
      # Note the lack of source parameter
      {
        name: completion_menu
        only_buffer_difference: false
        marker: "| "
        type: {
            layout: columnar
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      {
        name: history_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      {
        name: help_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: description
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
      }
      # Example of extra menus created using a nushell source
      # Use the source field to create a list of records that populates
      # the menu
      {
        name: commands_menu
        only_buffer_difference: false
        marker: "# "
        type: {
            layout: columnar
            columns: 4
            col_width: 20
            col_padding: 2
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            scope commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
      {
        name: vars_menu
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            scope variables
            | where name =~ $buffer
            | sort-by name
            | each { |it| {value: $it.name description: $it.type} }
        }
      }
      {
        name: commands_with_description
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: description
            columns: 4
            col_width: 20
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: green
            selected_text: green_reverse
            description_text: yellow
        }
        source: { |buffer, position|
            scope commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
  ]
  keybindings: [
    {
      name: completion_menu
      modifier: none
      keycode: tab
      mode: [emacs vi_normal vi_insert]
      event: {
        until: [
          { send: menu name: completion_menu }
          { send: menunext }
        ]
      }
    }
    {
      name: completion_previous
      modifier: shift
      keycode: backtab
      mode: [emacs, vi_normal, vi_insert] # Note: You can add the same keybinding to all modes by using a list
      event: { send: menuprevious }
    }
    {
      name: history_menu
      modifier: control
      keycode: char_r
      mode: emacs
      event: { send: menu name: history_menu }
    }
    {
      name: next_page
      modifier: control
      keycode: char_x
      mode: emacs
      event: { send: menupagenext }
    }
    {
      name: undo_or_previous_page
      modifier: control
      keycode: char_z
      mode: emacs
      event: {
        until: [
          { send: menupageprevious }
          { edit: undo }
        ]
       }
    }
    {
      name: yank
      modifier: control
      keycode: char_y
      mode: emacs
      event: {
        until: [
          {edit: pastecutbufferafter}
        ]
      }
    }
    {
      name: unix-line-discard
      modifier: control
      keycode: char_u
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cutfromlinestart}
        ]
      }
    }
    {
      name: kill-line
      modifier: control
      keycode: char_k
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cuttolineend}
        ]
      }
    }
    # Keybindings used to trigger the user defined menus
    {
      name: commands_menu
      modifier: control
      keycode: char_t
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_menu }
    }
    {
      name: vars_menu
      modifier: alt
      keycode: char_o
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: vars_menu }
    }
    {
      name: commands_with_description
      modifier: control
      keycode: char_s
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_with_description }
    }
  ]
}

alias vim = nvim # Neovim
alias e = emacsclient -t -a "" # Emacs opens in terminal
alias ec = emacsclient -n -c -a "" # Emacs opens in GUI mode

# starship prompt init
source ~/.cache/starship/init.nu
