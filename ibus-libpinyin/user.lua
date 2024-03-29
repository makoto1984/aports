-- encoding: UTF-8
_NUMBER = {
	['rc'] = { 'Ⅰ','Ⅱ','Ⅲ','Ⅳ','Ⅴ','Ⅵ','Ⅶ','Ⅷ','Ⅸ','Ⅹ','Ⅺ','Ⅻ' },
	['rs'] = { 'ⅰ','ⅱ','ⅲ','ⅳ','ⅴ','ⅵ','ⅶ','ⅷ','ⅸ','ⅹ' },
	['ci'] = { '①','②','③','④','⑤','⑥','⑦','⑧','⑨','⑩' },
	['pa'] = {'⑴','⑵','⑶','⑷','⑸','⑹','⑺','⑻','⑼','⑽','⑾','⑿','⒀','⒁','⒂','⒃','⒄','⒅','⒆','⒇'},
	['do'] = {'⒈','⒉','⒊','⒋','⒌','⒍','⒎','⒏','⒐','⒑','⒒','⒓','⒔','⒕','⒖','⒗','⒘','⒙','⒚','⒛'},
	['kh'] = {'㈠','㈡','㈢','㈣','㈤','㈥','㈦','㈧','㈨','㈩'},
	['dx'] = {'零','壹','贰','叁','肆','伍','陆','柒','捌','玖','拾','佰','仟'}
}

_GREEK = {
	['c'] = { 'Α','Β','Γ','Δ','Ε','Ζ','Η','Θ','Ι','Κ','Λ','Μ','Ν','Ξ','Ο','Π','Ρ','Σ','Τ','Υ','Φ','Χ','Ψ','Ω' },
	['s'] = { 'α','β','γ','δ','ε','ζ','η','θ','ι','κ','λ','μ','ν','ξ','ο','π','ρ','ς','σ','τ','υ','φ','χ','ψ','ω','ϑ','ϕ' }
}

_CYRILLIC = {
	['c'] = { "А","Б","В","Г","Д","Е","Ё","Ж","З","И","Й","К","Л","М","Н","О","П","Р","С","Т","У","Ф","Х","Ц","Ч","Ш","Щ","Ъ","Ы","Ь","Э","Ю","Я" },
	['s'] = { "а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я" }
}

function symbol(input)
	 return { "‐","–","—","―","‖","‘","’","“","”","‥","…","‰","′","″","‵","※","€","℃","℅","℉","№","℡","、","。","〃","々","〆","〇","〈","〉","《","》","「","」","『","』","【","】","〒","〓","〔","〕","〖","〗","〝","〞","〡","〢","〣","〤","〥","〦","〧","〨","〩","〾","︰","︱","︳","︴","︵","︶","︷","︸","︹","︺","︻","︼","︽","︾","︿","﹀","﹁","﹂","﹃","﹄","﹉","﹊","﹋","﹌","﹍","﹎","﹏","﹐","﹑","﹒","﹔","﹕","﹖","﹗","﹙","﹚","﹛","﹜","﹝","﹞","﹟","﹠","﹡","﹢","﹣","﹤","﹥","﹦","﹨","﹩","﹪","﹫","！","＂","＃","＄","％","＆","＇","（","）","＊","＋","，","－","．","／","：","；","＜","＝","＞","？","＠","［","＼","］","＾","＿","｀","｛","｜","｝","～","￠","￡","￢","￣","￤","￥","§","¨","°","±","·","×","÷","㈱" }
end

function degree(input)
	return { '°','℃','℉' }
end

function number(input)
	if #input == 0 then
		return {'rc 大写罗马数字', 'rs 小写罗马数字', 'ci 圈', 'pa 括号阿拉伯数字', 'do 点', 'kh 括号汉字数字', 'dx 大写数字'}
	end
	return _NUMBER[input]
end

function currency(input)
	return { '¤','€','＄','￠','￡','￥' }
end

function arrow(input)
	return { '←','↑','→','↓','↔','↕','↖','↗','↘','↙','↵','⇐','⇑','⇒','⇓','⇔','⇕','←','↑','→','↓','↔','↕','↖','↗','↘','↙','↵','⇐','⇑','⇒','⇓','⇔','⇕' }
end

function math(input)
	return { '∀','∂','∃','∅','∆','∇','∈','∉','∋','∏','∑','−','∕','∗','∙','√','∝','∞','∟','∠','∣','∥','∧','∨','∩','∪','∫','∬','∮','∴','∵','∶','∷','∼','∽','≅','≈','≌','≒','≠','≡','≤','≥','≦','≧','≪','≫','≮','≯','⊂','⊃','⊄','⊆','⊇','⊕','⊗','⊙','⊥','⊿','⋅','⌒','⌠','⌡','〈','〉','㏑','㏒','±','×','÷' }
end

function greek(input)
	if #input == 0 then
		return {'c 大写希腊字母', 's 小写希腊字母'}
	end
	return _GREEK[input]
end

function cyrillic(input)
	if #input == 0 then
		return {'c 大写俄语字母', 's 小写俄语字母'}
	end
	return _CYRILLIC[input]
end

function unit(input)
	return { '㎎','㎏','㎜','㎝','㎞','㎡','㏄','㏎','㏕' }
end

function xingbie(input)
	return {' ♀','♂' }
end

ime.register_command('fh', 'symbol', '标点符号', 'digit', '各种标点符号')
ime.register_command('du', 'degree', '度', 'digit', '度')
ime.register_command('sz', 'number', '数字', 'digit', '各种数字')
ime.register_command('hb', 'currency', '货币', 'digit', '货币符号')
ime.register_command('jt', 'arrow', '箭头', 'digit', '箭头')
ime.register_command('sx', 'math', '数学符号', 'digit', '数学符号')
ime.register_command('xl', 'greek', '希腊字母', 'digit', '希腊字母')
ime.register_command('ey', 'cyrillic', '俄语字母', 'digit', '俄语字母')
ime.register_command('dw', 'unit', '单位', 'digit', '度量单位')
ime.register_command('xb', 'xingbie', '性別', 'digit', '性別')

-- Note: the changes in user.lua script may take effect only after ime restart.
