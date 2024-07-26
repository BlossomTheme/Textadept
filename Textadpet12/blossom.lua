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
