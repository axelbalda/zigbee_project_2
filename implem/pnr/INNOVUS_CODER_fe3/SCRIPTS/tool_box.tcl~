proc create_gds { name } { 
	streamOut $name -mapFile streamOut.map -libName DesignLib -units 1000 -mode ALL
}

proc create_pads {} {
	set module_name msk_modulator
	loadIoFile ../CONSTRAINTS/${module_name}_pads.io
}
