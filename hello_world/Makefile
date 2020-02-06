
all: project

%.qsys:%.tcl
	qsys-script --script=$<

gen:system.qsys
	qsys-generate %< --synthesis=VERILOG --simulation=VERILOG

project: system.qsys
	quartus_sh -t hello_world.tcl

clean:
	-rm -rf system incremental_db db output_files *.qpf *.qsf .qsys_edit
