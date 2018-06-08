local kpse = require('kpse') kpse.set_program_name('luatex') local lfs = require("lfs") local cacheDir = "./_markdown_digitale-bedingungen" if lfs.isdir(cacheDir) == true then else assert(lfs.mkdir(cacheDir)) end local md = require("markdown") local convert = md.new({cacheDir = "./_markdown_digitale-bedingungen", citations = true, definitionLists = true, fencedCode = true, hashEnumerators = true, hybrid = true, inlineFootnotes = true, smartEllipses = true, } ) local input = assert(io.open("digitale-bedingungen.markdown.in","r")):read("*a") print(convert(input:gsub("\r\n?", "\n")))