require('nvim-autopairs').setup({})

-- copied straight from https://github.com/windwp/nvim-autopairs#mapping-cr idk really what below does
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
-- cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket" -- <- SOL EDIT <- commented out, throwing error and cbf figuring out. ytf need lisp anyway ()(()()()()))))) 🤷
