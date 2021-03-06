#!/usr/bin/env bash

function _dl() {
	local tmp="tmp" docs="docs"
	[ -d "$tmp" ] || mkdir "$tmp"
	[ -d "$docs" ] || mkdir "$docs"
	curl -L "https://api.github.com/repos/$1/tarball" | tar xz --strip=1 -C "$tmp"/
	cp -r "$tmp"/after "$tmp"/autoload "$tmp"/colors .
	cp -r "$tmp"/README* "$docs"/"${1//\//-}".md
	rm -rf "$tmp"
}

function _main() {
	_dl chase/focuspoint-vim
	# _dl chriskempson/base16-vim
	_dl fmoralesc/molokayo
	_dl gilgigilgil/anderson.vim
	_dl gregsexton/Atom
	_dl jonathanfilip/vim-lucius
	_dl joshdick/onedark.vim
	_dl junegunn/seoul256.vim
	_dl keith/parsec.vim
	_dl kristijanhusak/vim-hybrid-material
	_dl MaxSt/FlatColor
	_dl mhartington/oceanic-next
	_dl morhetz/gruvbox
	_dl NLKNguyen/papercolor-theme
	_dl romainl/Apprentice
	_dl romainl/flattened
	_dl scheakur/vim-scheakur
	_dl tomasr/molokai
	_dl vim-scripts/pyte
	_dl vim-scripts/rdark-terminal2.vim
	_dl vim-scripts/twilight256.vim
	_dl vim-scripts/wombat256.vim
	_dl w0ng/vim-hybrid
	_dl wimstefan/Lightning
	_dl dikiaap/minimalist
}
_main
