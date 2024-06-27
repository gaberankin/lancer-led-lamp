all: base inset

base: 
	openscad lancer-led-lamp-base.scad -o lancer-led-lamp-base.stl

inset:
	openscad lancer-led-lamp-inset.scad -o lancer-led-lamp-inset.stl