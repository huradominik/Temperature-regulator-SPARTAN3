
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Regulatortemperatury -dir "C:/Users/Nadlesnik/Desktop/RegTemp/Regulatortemperatury/planAhead_run_5" -part xc3s1000ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Nadlesnik/Desktop/RegTemp/Regulatortemperatury/Regulator.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Nadlesnik/Desktop/RegTemp/Regulatortemperatury} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Regulator.ucf" [current_fileset -constrset]
add_files [list {Regulator.ucf}] -fileset [get_property constrset [current_run]]
link_design
