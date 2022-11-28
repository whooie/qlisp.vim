" Vim syntax file
" Language:         QLisp
" First author:     Will Huie

if exists('b:current_syntax')
    finish
endif

syn match       qlispBool       "\v(true|false)>"
syn match       qlispInt        "\v[\-]?\d+>"
syn match       qlispFloat      "\v[\-]?(\d*\.)?\d+([eE][+\-]?\d+)?>"
syn match       qlispComplex    "\v[\-]?(\d*\.)?\d+([eE][+\-]?\d+)?i>"
syn match       qlispComplex    "\v[\-]?(\d*\.)?\d+([eE][+\-]?\d+)?[+\-](\d*\.)?\d+([eE][+\-]?\d+)?i>"

syn match       qlispEscapeError        display contained /\\./
syn match       qlispEscape             display contained /\\\([nrt\\"]\|x\x\{2}\)/
syn match       qlispStringContinuation display contained /\\\n\s*/
syn region      qlispString             matchgroup=qlispStringDelimiter start=+b"+ skip=+\\\\\|\\"+ end=+"+ contains=qlispEscape,qlispEscapeError,qlispStringContinuation
syn region      qlispString             matchgroup=qlispStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=qlispEscape,qlispEscapeUnicode,qlispEscapeError,qlispStringContinuation,@Spell
syn region      qlispString             matchgroup=qlispStringDelimiter start='b\?r\z(#*\)"' end='"\z1' contains=@Spell

syn keyword     qlispKeyword def let fn defn if print println halt
syn match       qlispKeyword "\v(\s|[(]|^)@<=\:\=(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\*\:\=(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\@\:(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\@\:\=(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\=\>(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\$-(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\$_(\s|[)]|$)@="
syn match       qlispKeyword "\v(\s|[(]|^)@<=\!\!(\s|[)]|$)@="

syn keyword     qlispOperator and or xor neg add sub mul div idiv eq neq gt geq lt leq mod padd
syn match       qlispOperator "\v(\s|[(]|^)@<=\&\&(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\|\|(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\^(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\!(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\+(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\-(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\*(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\/(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\/\/(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\=(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\!\=(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\>(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\>\=(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\<(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\<\=(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=\%(\s|[)]|$)@="
syn match       qlispOperator "\v(\s|[(]|^)@<=p\+(\s|[)]|$)@="

syn keyword     qlispBuiltin all
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\&\&\*(\s|[)]|$)@="
syn keyword     qlispBuiltin any
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|\|\*(\s|[)]|$)@="
syn keyword     qlispBuiltin xany
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\^\*(\s|[)]|$)@="
syn keyword     qlispBuiltin range
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\.(\s|[)]|$)@="
syn keyword     qlispBuiltin range-inc
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\.\=(\s|[)]|$)@="
syn keyword     qlispBuiltin repeat
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\#\=(\s|[)]|$)@="
syn keyword     qlispBuiltin length
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\#(\s|[)]|$)@="
syn keyword     qlispBuiltin get
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.(\s|[)]|$)@="
syn keyword     qlispBuiltin set
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\:\=(\s|[)]|$)@="
syn keyword     qlispBuiltin slice
syn match       qlispBuiltin "\v(\s|[(]|^)@<=--(\s|[)]|$)@="
syn keyword     qlispBuiltin slice-inc
syn match       qlispBuiltin "\v(\s|[(]|^)@<=--\=(\s|[)]|$)@="
syn keyword     qlispBuiltin slice-by
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\~(\s|[)]|$)@="
syn keyword     qlispBuiltin slice-inc-by
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\~\=(\s|[)]|$)@="
syn keyword     qlispBuiltin step-by
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~(\s|[)]|$)@="
syn keyword     qlispBuiltin enumerate
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\#\#(\s|[)]|$)@="
syn keyword     qlispBuiltin pick
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\*(\s|[)]|$)@="
syn keyword     qlispBuiltin reverse
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\<\>(\s|[)]|$)@="
syn keyword     qlispBuiltin cycle
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\<\#\>(\s|[)]|$)@="
syn keyword     qlispBuiltin first
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.-(\s|[)]|$)@="
syn keyword     qlispBuiltin take
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\.(\s|[)]|$)@="
syn keyword     qlispBuiltin take-while
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\.\@(\s|[)]|$)@="
syn keyword     qlispBuiltin last
syn match       qlispBuiltin "\v(\s|[(]|^)@<=-\.(\s|[)]|$)@="
syn keyword     qlispBuiltin skip
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\~(\s|[)]|$)@="
syn keyword     qlispBuiltin skip-while
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\~\@(\s|[)]|$)@="
syn keyword     qlispBuiltin split-at
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|\.(\s|[)]|$)@="
syn keyword     qlispBuiltin split-on
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|\@(\s|[)]|$)@="
syn keyword     qlispBuiltin split-on-inc
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|\@\=(\s|[)]|$)@="
syn keyword     qlispBuiltin append
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\+(\s|[)]|$)@="
syn keyword     qlispBuiltin prepend
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\+\.(\s|[)]|$)@="
syn keyword     qlispBuiltin insert
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\+\.\+(\s|[)]|$)@="
syn keyword     qlispBuiltin map
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\@(\s|[)]|$)@="
syn keyword     qlispBuiltin filter
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\@\!(\s|[)]|$)@="
syn keyword     qlispBuiltin unique
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\*\!\=(\s|[)]|$)@="
syn keyword     qlispBuiltin flatten
syn match       qlispBuiltin "\v(\s|[(]|^)@<=__(\s|[)]|$)@="
syn keyword     qlispBuiltin contains
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\*\=(\s|[)]|$)@="
syn keyword     qlispBuiltin index-of
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\#\*\=(\s|[)]|$)@="
syn keyword     qlispBuiltin fold
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\@\.(\s|[)]|$)@="
syn keyword     qlispBuiltin min
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\<\<(\s|[)]|$)@="
syn keyword     qlispBuiltin max
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\>\>(\s|[)]|$)@="
syn keyword     qlispBuiltin select-by
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\*\@\.(\s|[)]|$)@="
syn keyword     qlispBuiltin sort
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\<\*(\s|[)]|$)@="
syn keyword     qlispBuiltin sort-by
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\<\@(\s|[)]|$)@="
syn keyword     qlispBuiltin permute
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\.\~\.(\s|[)]|$)@="
syn keyword     qlispBuiltin format
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\$(\s|[)]|$)@="
syn keyword     qlispBuiltin istype
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\?(\s|[)]|$)@="
syn keyword     qlispBuiltin type
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\?\~(\s|[)]|$)@="
syn keyword     qlispBuiltin recip
syn match       qlispBuiltin "\v(\s|[(]|^)@<=1\/(\s|[)]|$)@="
syn keyword     qlispBuiltin sqrt
syn keyword     qlispBuiltin cbrt
syn keyword     qlispBuiltin exp
syn match       qlispBuiltin "\v(\s|[(]|^)@<=e\*\*(\s|[)]|$)@="
syn keyword     qlispBuiltin floor
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~_(\s|[)]|$)@="
syn keyword     qlispBuiltin ceil
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\^(\s|[)]|$)@="
syn keyword     qlispBuiltin round
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~\.(\s|[)]|$)@="
syn keyword     qlispBuiltin log
syn keyword     qlispBuiltin ln
syn keyword     qlispBuiltin pow
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\*\*(\s|[)]|$)@="
syn keyword     qlispBuiltin sin
syn keyword     qlispBuiltin cos
syn keyword     qlispBuiltin tan
syn keyword     qlispBuiltin asin
syn keyword     qlispBuiltin acos
syn keyword     qlispBuiltin atan
syn keyword     qlispBuiltin atan2
syn keyword     qlispBuiltin sinh
syn keyword     qlispBuiltin cosh
syn keyword     qlispBuiltin tanh
syn keyword     qlispBuiltin asinh
syn keyword     qlispBuiltin acosh
syn keyword     qlispBuiltin atanh
syn keyword     qlispBuiltin arg
syn keyword     qlispBuiltin cis
syn keyword     qlispBuiltin conj
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\~z(\s|[)]|$)@="
syn keyword     qlispBuiltin real
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Re(\s|[)]|$)@="
syn keyword     qlispBuiltin imag
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Im(\s|[)]|$)@="
syn keyword     qlispBuiltin sum
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{S\}(\s|[)]|$)@="
syn keyword     qlispBuiltin product
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{P\}(\s|[)]|$)@="
syn keyword     qlispBuiltin mean
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{E\}(\s|[)]|$)@="
syn keyword     qlispBuiltin variance
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Var(\s|[)]|$)@="
syn keyword     qlispBuiltin stddev
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Std(\s|[)]|$)@="
syn keyword     qlispBuiltin moment
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{En\}(\s|[)]|$)@="
syn keyword     qlispBuiltin covariance
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Cov(\s|[)]|$)@="
syn keyword     qlispBuiltin correlation
syn match       qlispBuiltin "\v(\s|[(]|^)@<=Corr(\s|[)]|$)@="
syn keyword     qlispBuiltin convolve
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{\*\}(\s|[)]|$)@="
syn keyword     qlispBuiltin histogram
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|\#\|(\s|[)]|$)@="
syn keyword     qlispBuiltin histogram-prob
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\|p\|(\s|[)]|$)@="
syn keyword     qlispBuiltin fft
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{F\}(\s|[)]|$)@="
syn keyword     qlispBuiltin ifft
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\{iF\}(\s|[)]|$)@="
syn keyword     qlispBuiltin findpeaks
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\^\?(\s|[)]|$)@="
syn keyword     qlispBuiltin sample
syn match       qlispBuiltin "\v(\s|[(]|^)@<=\?\.(\s|[)]|$)@="


syn keyword     qlispType bool
syn match       qlispType "\"bool\""
syn keyword     qlispType int
syn match       qlispType "\"int\""
syn keyword     qlispType float
syn match       qlispType "\"float\""
syn keyword     qlispType complex
syn match       qlispType "\"complex\""
syn keyword     qlispType list
syn match       qlispType "\"list\""
syn keyword     qlispType str
syn match       qlispType "\"str\""
syn match       qlispType "\"function\""
syn match       qlispType "\"any\""

syn match       qlispComment "\v\;.*$"

hi def link qlispBool       qlispNumber
hi def link qlispInt        qlispNumber
hi def link qlispFloat      qlispNumber
hi def link qlispComplex    qlispNumber

hi def link qlispNumber     Constant

hi def link qlispEscapeError        Error
hi def link qlispEscape             Special
hi def link qlispStringContinuation Special
hi def link qlispString             String
hi def link qlispStringDelimiter    String

hi def link qlispKeyword    Keyword
hi def link qlispOperator   Operator
hi def link qlispBuiltin    Builtin
hi def link qlispType       Type

hi def link qlispComment    Comment
