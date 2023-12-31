proc set_multi_cpu_usage {args} {
	array set options {-localCpu <num_of_threads> -help "" }
	while {[llength $args]} {
		switch -glob -- [lindex $args 0] {
			-localCpu {
				set args [lassign $args -options(-localCpu) ]
				puts "set_num_threads $options(-localCpu)"
			}
			-help {
				set args [lassign $args -options (-help)]
				puts "Usage:set_multi_cpu_usage -localCpu <num_of_threads>"
			}
		}
		
	}
}
set_multi_cpu_usage -localCpu 4
