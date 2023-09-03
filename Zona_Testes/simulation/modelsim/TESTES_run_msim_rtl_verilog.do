transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/teus_/Desktop/CD/Circuitos-Digitais/Zona_Testes {C:/Users/teus_/Desktop/CD/Circuitos-Digitais/Zona_Testes/decodificador_Matriz_De_Led.v}

