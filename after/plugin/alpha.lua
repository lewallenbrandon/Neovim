local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
                                                                    
[[   ,ggg, ,ggg,_,ggg,         ,gggg,                                ]],
[[   dP""Y8dP""Y88P""Y8b       d8" "8I                               ]], 
[[   Yb, `88'  `88'  `88       88  ,dP                               ]], 
[[    `"  88    88    88    8888888P"                                ]], 
[[        88    88    88       88                                    ]], 
[[        88    88    88       88                                    ]], 
[[        88    88    88  ,aa,_88                                    ]], 
[[        88    88    88 dP" "88P                                    ]], 
[[        88    88    Y8,Yb,_,d88b,,_                                ]], 
[[        88    88    `Y8 "Y8P"  "Y8888                              ]],
[[        =============================                              ]],




[[    .+x+;;;;;;;+xx:   ;x+;;;;xx;.                                  ]], 
[[  .x+;;;;;;;;;;;;;+XXx+;;;;;;;;;++                                 ]], 
[[ X+;;;;;;;;;;;;;;;;+$;;;;;;;;;;;;+x.                               ]], 
[[X+;;;;;+XXXxxxxxxxxx$X+;;;;++++++;;x.                              ]], 
[[;;;;;+XX+;;;;;;;;;;;;+X$XXxxx+++xxXX$                              ]], 
[[;;;;;++;;;;;;;;;;;;;;;;+xX+;;;;;;;;;+x+                            ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;xX+;;;;;;;;;;;xx                          ]], 
[[;;;;;;;+x$XXXX$$$$$&&XXXX$X$+;;;;;;++xxxXX:                        ]], 
[[;;;;;+XX+x$$XXXxxXX$Xxx$x+x&x;;;;;+$$XXXXX$$+                      ]], 
[[;;;+XXx$x++;;;;;;;;;+X$XX$X+Xx;+X$X$$XxxxxXXX+                     ]], 
[[;;;+X&&XXx;;;x&&&&&&&...:XX$x$;;+X&&&&&++X+X&.                     ]], 
[[;;;;;;;+++x. &&&&&. &.    :+$X++x;x+&&X$    x:                     ]], 
[[;;;;;;;;+X++X&&&&&x&&:     x+$+x &&&&& x.   ;:                     ]], 
[[;;;;;;;;;+X&+;+++X&&&     :X&X+XX&&&&&&&:;xXX.                     ]], 
[[;;;;;;;;;;;;+xX$$$Xxx+++++x$$++XXx+;;;;;+x$x                       ]], 
[[;;;;;;;;;;;;;;;;;;;;+++++$x+;;;;+$&x+;;xX$$X:                      ]], 
[[;;+++;;;;;;;;;;;;;;;;;+XX+;;;;;;;;+x$+;;;;;;x.                     ]], 
[[;;x$$Xx+;;;;;;;;;;;x&Xx;;;;;;;;;;;;;;+;;;;;;+X$                    ]], 
[[;+x$XX&&$+;;;;;;+++;;;;;;;;;;;;;;;;;;;;;;;;;XX$                    ]], 
[[;;+$Xx$$Xxx$$&&$Xx+;;;;;;;;;;;;;;;;;;;;;;;+x$$                     ]], 
[[;;;;+X$xx$&$Xxxxxxx$$&$$$Xx++++++++++++++$$X$                      ]], 
[[;;;;;;;+X&XxxxxX$$$$$$$XxxxxxxxxxxxxxxxxxX$XX                      ]], 
[[;;;;;;;;;;;+X$xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                      ]], 
[[;;;;;;;;;;;;;;+X$$xxxxxxxxxxxxxxxxxxxxxxxx$;                       ]], 
[[;;;;;;;;;;;;;;;;;;;;++XXX$$$$$$$$$X$$$$$$xx.                       ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;+x$$++++                        ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;+x$X+;;+$X                         ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;++;;+X$+;;;;;;;+X+                       ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;+XXx$X$X$+;+X$$+x+x++x.                    ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;xX+;+$xx$XXXx; ;$$+;;;+x                   ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;+$X+;+xX+x+..xx+;;;;;;;X;                 ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;;XX;;+X. ;x+;;;+xx;;;;;+x                ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;;;$;;;+xXX+;;+x$+;;;++;;+x               ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;;;$+;;;;x$&X+xX;;;+XX+;xx+:              ]], 
[[;;;;;;;;;;;;;;;;;;;;;;;;;;xx.X+;;;;;;+xXX;+xX+;+X$+;+.             ]], 


}
dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}



dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
