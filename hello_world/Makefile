
all: project

%.qsys:%.tcl
	qsys-script --script=$<

gen:system.qsys
	qsys-generate %< --synthesis=VERILOG --simulation=VERILOG

project: system.qsys
	quartus_sh -t hello_world.tcl

clean:
	-rm -rf system incremental_db db *.qpf *.qsf .qsys_edit

clean_all:clean
	-rm -rf *.sopcinfo *.qsys output_files
