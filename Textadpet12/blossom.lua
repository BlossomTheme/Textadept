
local view, colors, styles = view, view.colors, view.styles

colors.fg1       = 0x8d05ff
colors.fg2       = 0x8205eb
colors.fg3       = 0x7604d6
colors.fg4       = 0x6b04c2
colors.fg6       = 0xa841ff
colors.bg1       = 0x1b1110
colors.bg2       = 0x2d2423
colors.bg3       = 0x3f3736
colors.bg4       = 0x524a49
colors.builtin   = 0xd2b326
colors.keyword   = 0x006ef4
colors.const     = 0x8f74ea
colors.comment   = 0xe2e234
colors.func      = 0xff0092
colors.str       = 0x55ff55
colors.type      = 0xcf9f72
colors.var       = 0x00acf5
colors.selection = 0xff0000
colors.warning   = 0x4700f7
colors.warning2  = 0x3000ff

-- Normal colors.
-- Used by some modules, like file-diff or lsp
colors.red = 0x000099
colors.orange = 0x0066CC
colors.yellow = 0x009999
colors.green = 0x009900
colors.blue = 0xCC6600

-- Default font.
if not font then
  font = WIN32 and 'Consolas' or OSX and 'Monaco' or
    'Bitstream Vera Sans Mono'
end
if not size then size = OSX and 12 or 11 end

-- Find/replace dialog
ui.find.entry_font = font .. ' ' .. (size - 1)
-- Predefined styles.
styles[view.STYLE_DEFAULT] = { font = font, size = size, fore = colors.fg1, back = colors.bg1}
styles[view.STYLE_LINENUMBER] = {fore = colors.fg6, back = colors.bg2}
styles[view.STYLE_BRACELIGHT] = {fore = colors.func,back=colors.bg2, bold = true}
styles[view.STYLE_BRACEBAD] = {fore=colors.warning,back=colors.bg3, bold=true}
-- styles[view.STYLE_CONTROLCHAR] = {}
styles[view.STYLE_INDENTGUIDE] = {fore = colors.comment}
styles[view.STYLE_CALLTIP] = {fore = colors.fg1, back = colors.bg2}
styles[view.STYLE_FOLDDISPLAYTEXT] = {fore = colors.bg2}

-- Tgag styles.
-- styles[lexer.ANNOTATION] = {fore = colors.magenta}
styles[lexer.ATTRIBUTE] = {fore = colors.fg3}
styles[lexer.BOLD] = {bold = true}
styles[lexer.CLASS] =  {fore = colors.func, bold = true}
--styles[lexer.CODE] =  {}
styles[lexer.COMMENT] =  {fore = colors.comment}
styles[lexer.CONSTANT] =  {fore = colors.const}
styles[lexer.CONSTANT_BUILTIN] =  {fore = colors.const, bold=true}
styles[lexer.EMBEDDED] =  {fore = colors.builtin, back = colors.bg2}
styles[lexer.ERROR] =  {fore = colors.warning, italics = true}
styles[lexer.FUNCTION] = {fore = colors.func}
styles[lexer.FUNCTION_BUILTIN] = {fore = colors.func, bold=true}
-- styles[lexer.FUNCTION_METHOD] = {}
styles[lexer.HEADING] =  {fore=colors.var}
styles[lexer.IDENTIFIER] =  {fore=colors.var}
styles[lexer.ITALIC] =  {italic=true}
styles[lexer.KEYWORD] =  {fore = colors.keyword}
styles[lexer.LABEL] =  {fore = colors.warning}
-- styles[lexer.LINK] =  {}
-- styles[lexer.LIST] =  {}
styles[lexer.NUMBER] =  {fore = colors.const}
styles[lexer.OPERATOR] =  {fore = colors.fg2}
styles[lexer.PREPROCESSOR] =  {fore = colors.str}
styles[lexer.REFERENCE] =  {fore = colors.var}
styles[lexer.REGEX] =  {fore = colors.str}
styles[lexer.STRING] =  {fore = colors.str}
styles[lexer.TAG] =  {fore = colors.fg3}
styles[lexer.TYPE] =  {fore = colors.func}
-- styles[lexer.UNDERLINE] =  {fore = colors.warning}
styles[lexer.VARIABLE] =  {fore = colors.warning}
styles[lexer.VARIABLE_BUILTIN] =  {fore = colors.warning, bold=true}
-- styles[lexer.WHITESPACE] =  {}

-- CSS.
-- styles.property = styles[lexer.ATTRIBUTE]
-- styles.pseudoclass = {}
-- styles.pseudoelement = {}
-- Diff.
styles.addition = {fore = colors.green}
styles.deletion = {fore = colors.red}
styles.change = {fore = colors.blue}
-- HTML.
styles.tag_unknown = styles.tag .. {italics = true}
styles.attribute_unknown = styles.attribute .. {italics = true}
-- Latex, TeX, and Texinfo.
styles.command = styles[lexer.KEYWORD]
styles.command_section = styles[lexer.HEADING]
styles.environment = styles[lexer.TYPE]
styles.environment_math = styles[lexer.NUMBER]
-- Makefile.
-- styles.target = {}
-- Markdown.
-- styles.hr = {}
-- XML.
-- styles.cdata = {}
-- YAML.
styles.error_indent = {back = colors.warning}

-- Element colors.
-- view.element_color[view.ELEMENT_SELECTION_TEXT] = colors.black
view.element_color[view.ELEMENT_SELECTION_BACK] = colors.selection
-- view.element_color[view.ELEMENT_SELECTION_ADDITIONAL_TEXT] = colors.black
-- view.element_color[view.ELEMENT_SELECTION_ADDITIONAL_BACK] = colors.light_grey
-- view.element_color[view.ELEMENT_SELECTION_SECONDARY_TEXT] = colors.black
-- view.element_color[view.ELEMENT_SELECTION_SECONDARY_BACK] = colors.light_grey
-- view.element_color[view.ELEMENT_SELECTION_INACTIVE_TEXT] = colors.black
-- view.element_color[view.ELEMENT_SELECTION_INACTIVE_BACK] = colors.light_grey
view.element_color[view.ELEMENT_CARET] = colors.fg2
-- view.element_color[view.ELEMENT_CARET_ADDITIONAL] =
-- view.element_color[view.ELEMENT_CARET_LINE_BACK] = colors.light_grey | 0x60000000
view.caret_line_layer = view.LAYER_UNDER_TEXT

-- Fold Margin.
view:set_fold_margin_color(true, colors.bg2)
view:set_fold_margin_hi_color(true, colors.bg2)

-- Markers.
--view.marker_fore[textadept.bookmarks.MARK_BOOKMARK] = colors.bg1
view.marker_back[textadept.bookmarks.MARK_BOOKMARK] = colors.str
--view.marker_fore[textadept.run.MARK_WARNING] = colors.bg1
view.marker_back[textadept.run.MARK_WARNING] = colors.warning2
--view.marker_fore[textadept.run.MARK_ERROR] = colors.bg1
view.marker_back[textadept.run.MARK_ERROR] = colors.warning
for i = view.MARKNUM_FOLDEREND, view.MARKNUM_FOLDEROPEN do -- fold margin
  view.marker_fore[i] = colors.bg1
  view.marker_back[i] = colors.comment
  view.marker_back_selected[i] = colors.bg3
end

-- Indicators.
view.indic_fore[ui.find.INDIC_FIND] = colors.const
view.indic_alpha[ui.find.INDIC_FIND] = 255
view.indic_fore[textadept.editing.INDIC_HIGHLIGHT] = colors.fg4
view.indic_alpha[textadept.editing.INDIC_HIGHLIGHT] = 64
view.indic_fore[textadept.snippets.INDIC_PLACEHOLDER] = colors.fg1

-- Call tips.
view.call_tip_fore_hlt = colors.fg3

-- Long Lines.
view.edge_color = colors.bg3

-- Find & replace pane entries.
ui.find.entry_font = font .. ' ' .. (size - 1)
