# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'w': 'session-save --current', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'wqa': 'quit --save'}

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# Limit fullscreen to the browser window (does not expand to fill the
# screen).
# Type: Bool
c.content.fullscreen.window = False

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:131.0) Gecko/20100101 Firefox/131.0', 'https://accounts.google.com/*')

# Which method of blocking ads should be used.  Support for Adblock Plus
# (ABP) syntax blocklists using Brave's Rust library requires the
# `adblock` Python package to be installed, which is an optional
# dependency of qutebrowser. It is required when either `adblock` or
# `both` are selected.
# Type: String
# Valid values:
#   - auto: Use Brave's ABP-style adblocker if available, host blocking otherwise
#   - adblock: Use Brave's ABP-style adblocker
#   - hosts: Use hosts blocking
#   - both: Use both hosts blocking and Brave's ABP-style adblocker
c.content.blocking.method = 'both'

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Allow JavaScript to read from or write to the clipboard. With
# QtWebEngine, writing the clipboard as response to a user interaction
# is always allowed.
# Type: String
# Valid values:
#   - none: Disable access to clipboard.
#   - access: Allow reading from and writing to the clipboard.
#   - access-paste: Allow accessing the clipboard and pasting clipboard content.
c.content.javascript.clipboard = 'access'

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow locally loaded documents to access remote URLs.
# Type: Bool
config.set('content.local_content_can_access_remote_urls', True, 'file:///home/ned/.local/share/qutebrowser/userscripts/*')

# Allow locally loaded documents to access other local URLs.
# Type: Bool
config.set('content.local_content_can_access_file_urls', False, 'file:///home/ned/.local/share/qutebrowser/userscripts/*')

# Allow websites to record audio.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.media.audio_capture', True, 'https://app.zoom.us')

# Allow websites to record video.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.media.video_capture', True, 'https://app.zoom.us')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications.enabled', True, 'https://app.zoom.us')

# Display PDF files via PDF.js in the browser without showing a download
# prompt. Note that the files can still be downloaded by clicking the
# download button in the pdf.js viewer. With this set to `false`, the
# `:prompt-open-download --pdfjs` command (bound to `<Ctrl-p>` by
# default) can be used in the download prompt.
# Type: Bool
c.content.pdfjs = True

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.register_protocol_handler', True, 'https://mail.google.com?extsrc=mailto&url=%25s')

# Automatically abort insecure (HTTP) downloads originating from secure
# (HTTPS) pages. For per-domain settings, the relevant URL is the URL
# initiating the download, not the URL the download itself is coming
# from. It's not recommended to set this setting to false globally.
# Type: Bool
c.downloads.prevent_mixed_content = False

# Editor (and arguments) to use for the `edit-*` commands. The following
# placeholders are defined:  * `{file}`: Filename of the file to be
# edited. * `{line}`: Line in which the caret is found in the text. *
# `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['foot', 'nvim', '{file}', '-c', 'normal G{line}{column0}l']

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #181825'

# When/how to show the scrollbar.
# Type: String
# Valid values:
#   - always: Always show the scrollbar.
#   - never: Never show the scrollbar.
#   - when-searching: Show the scrollbar when searching for text in the webpage. With the QtWebKit backend, this is equal to `never`.
#   - overlay: Show an overlay scrollbar. On macOS, this is unavailable and equal to `when-searching`; with the QtWebKit backend, this is equal to `never`. Enabling/disabling overlay scrollbars requires a restart.
c.scrolling.bar = 'never'

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# How to behave when the last tab is closed. If the
# `tabs.tabs_are_windows` setting is set, this is ignored and the
# behavior is always identical to the `close` value.
# Type: String
# Valid values:
#   - ignore: Don't do anything.
#   - blank: Load a blank page.
#   - startpage: Load the start page.
#   - default-page: Load the default page.
#   - close: Close the window.
c.tabs.last_close = 'startpage'

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'never'

# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`). * `{0}` means the same as `{}`, but can be used
# multiple times.  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = '~/.config/qutebrowser/startpage/index.html'

# Default zoom level.
# Type: Perc
c.zoom.default = '175%'

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = '#e0def4'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#2a283e'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#2a283e'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = '#eb6f92'

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = '#232136'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#393552'

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#2a273f'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#e0def4'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#44415a'

# Top border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#2a273f'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#2a273f'

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.match.fg = '#ea9a97'

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = '#e0def4'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = '#2a273f'

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = '#393552'

# Background color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.bg = '#2a273f'

# Foreground color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.fg = '#e0def4'

# Background color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.bg = '#ea9a97'

# Foreground color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.fg = '#232136'

# Background color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.bg = '#6e6a86'

# Foreground color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.fg = '#e0def4'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#232136'

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = '#3e8fb0'

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = '#232136'

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = '#ea9a97'

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = '#232136'

# Color gradient interpolation system for download text.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.fg = 'none'

# Color gradient interpolation system for download backgrounds.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = '#f6c177'

# Background color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.bg = '#232136'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = '#e0def4'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = '#2a273f'

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = '#ea9a97'

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = '#e0def4'

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = '#ea9a97'

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = '#2a273f'

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = '#e0def4'

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = '#2a273f'

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = '#2a273f'

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = '#f6c177'

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = '#2a273f'

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = '#2a273f'

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = '#f6c177'

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = '#2a273f'

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = '#2a273f'

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = '#e0def4'

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = '#908caa'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = '#2a273f'

# Foreground color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.fg = '#e0def4'

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = '#393552'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#ea9a97'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#232136'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#3e8fb0'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#232136'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#908caa'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#2a273f'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = '#44415a'

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = '#eb6f92'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = '#eb6f92'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#232136'

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = '#393552'

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = '#232136'

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = '#c4a7e7'

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = '#232136'

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = '#9ccfd8'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = '#e0def4'

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = '#f6c177'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = '#f6c177'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = '#908caa'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#908caa'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = '#f6c177'

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = '#232136'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = '#3e8fb0'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = '#ea9a97'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = '#f6c177'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#908caa'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#232136'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#908caa'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#232136'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = '#e0def4'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#44415a'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = '#e0def4'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#44415a'

# Background color for webpages if unset (or empty to use the theme's
# color).
# Type: QtColor
c.colors.webpage.bg = 'white'

# Value to use for `prefers-color-scheme:` for websites. The "light"
# value is only available with QtWebEngine 5.15.2+. On older versions,
# it is the same as "auto". The "auto" value is broken on QtWebEngine
# 5.15.2 due to a Qt bug. There, it will fall back to "light"
# unconditionally.
# Type: String
# Valid values:
#   - auto: Use the system-wide color scheme setting.
#   - light: Force a light theme.
#   - dark: Force a dark theme.
c.colors.webpage.preferred_color_scheme = 'dark'

# Render all web contents using a dark theme. On QtWebEngine < 6.7, this
# setting requires a restart and does not support URL patterns, only the
# global setting is applied. Example configurations from Chromium's
# `chrome://flags`: - "With simple HSL/CIELAB/RGB-based inversion": Set
# `colors.webpage.darkmode.algorithm` accordingly, and   set
# `colors.webpage.darkmode.policy.images` to `never`.  - "With selective
# image inversion": qutebrowser default settings.
# Type: Bool
c.colors.webpage.darkmode.enabled = False

# Which algorithm to use for modifying how colors are rendered with dark
# mode. The `lightness-cielab` value was added with QtWebEngine 5.14 and
# is treated like `lightness-hsl` with older QtWebEngine versions.
# Type: String
# Valid values:
#   - lightness-cielab: Modify colors by converting them to CIELAB color space and inverting the L value. Not available with Qt < 5.14.
#   - lightness-hsl: Modify colors by converting them to the HSL color space and inverting the lightness (i.e. the "L" in HSL).
#   - brightness-rgb: Modify colors by subtracting each of r, g, and b from their maximum value.
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'

# Contrast for dark mode. This only has an effect when
# `colors.webpage.darkmode.algorithm` is set to `lightness-hsl` or
# `brightness-rgb`.
# Type: Float
c.colors.webpage.darkmode.contrast = 0.0

# Default font families to use. Whenever "default_family" is used in a
# font setting, it's replaced with the fonts listed here. If set to an
# empty value, a system-specific monospace default is used.
# Type: List of Font, or Font
c.fonts.default_family = 'ZedMonoNerdFont'

# Default font size to use. Whenever "default_size" is used in a font
# setting, it's replaced with the size listed here. Valid values are
# either a float value with a "pt" suffix, or an integer value with a
# "px" suffix.
# Type: String
c.fonts.default_size = '20pt'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = 'ZedMonoNerdFont'

# Font family for fixed fonts.
# Type: FontFamily
c.fonts.web.family.fixed = 'ZedMonoNerdFont'

# Font family for sans-serif fonts.
# Type: FontFamily
c.fonts.web.family.sans_serif = 'ZedMonoNerdFont'

# Bindings for normal mode
config.bind('<Ctrl+r>', 'config-cycle colors.webpage.darkmode.enabled')
config.bind('F', 'hint links userscript open_youtue_links_in_freetube')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('sl', 'cmd-set-text -s :session-load -c')

# Bindings for command mode
config.bind('<Ctrl+n>', 'completion-item-focus next', mode='command')
config.bind('<Ctrl+p>', 'completion-item-focus prev', mode='command')
