lappend auto_path "C:/lscc/diamond/3.14/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {ZenSim}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/diamond/3.14/bin/nt64/Zen68060Firmware}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/diamond/3.14/bin/nt64/Zen68060Firmware/impl1/Zen68060Firmware_impl1_vo.vo" "C:/lscc/diamond/3.14/bin/nt64/Zen68060Firmware/ZenSim.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "work" "" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "none" }
set ::bali::simulation::Para(LANGSTDLIST) {"" "Verilog 2001" "" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {mainLogic_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {/dut}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {C:/lscc/diamond/3.14/bin/nt64/Zen68060Firmware/impl1/Zen68060Firmware_impl1_vo.sdf}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/diamond/3.14}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(SIMULATION_RESOLUTION)  {default}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
set ::bali::simulation::Para(OPTIMIZEARGS)  {+acc}
set ::bali::simulation::Para(OPTIMIZATION_DEBUG)  {1}
::bali::simulation::QuestaSim_Run
