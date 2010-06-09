(*
 Owned and copyright BitBlaze, 2009-2010. All rights reserved.
 Do not copy, disclose, or distribute without explicit written
 permission.
*)

type offset_strategy = UniformStrat | BiasedSmallStrat

let offset_strategy_of_string s =
  match s with
    | "uniform" -> UniformStrat
    | "biased-small" -> BiasedSmallStrat
    | _ -> failwith "Unknown offset strategy"

let max_input_string_length = ref 0
let next_periodic_influence : int ref = ref (-1)

let opt_trace_temps = ref false
let opt_use_tags = ref false
let opt_print_callrets = ref false
let opt_fail_offset_heuristic = ref true
let opt_trace_solver = ref false
let opt_measure_influence_syscall_args = ref false
let opt_solver_timeout = ref None
let opt_solver_slow_time = ref 1.0
let opt_save_solver_files = ref false
let opt_stp_path = ref "stp"
let opt_follow_path  = ref ""
let opt_iteration_limit = ref 1000000000000L
let opt_watch_expr_str = ref None
let opt_watch_expr = ref None
let opt_path_depth_limit = ref 1000000000000L
let opt_query_branch_limit = ref 999999999
let opt_random_seed = ref 0
let opt_trace_decision_tree = ref false
let opt_trace_randomness = ref false
let opt_measure_influence_derefs = ref false
let opt_measure_influence_reploops = ref false
let opt_measure_deref_influence_at = ref None
let opt_measure_expr_influence_at = ref None
let opt_multipath_influence_only = ref false
let opt_stop_at_measurement = ref false
let opt_periodic_influence = ref None
let opt_influence_bound = ref (-2.0)
let opt_disqualify_addrs = ref []
let opt_check_condition_at = ref None
let opt_trace_assigns = ref false
let opt_trace_assigns_string = ref false
let opt_trace_conditions = ref false
let opt_trace_decisions = ref false
let opt_trace_binary_paths = ref false
let opt_trace_binary_paths_delimited = ref false
let opt_trace_binary_paths_bracketed = ref false
let opt_trace_insns = ref false
let opt_trace_loads = ref false
let opt_trace_stores = ref false
let opt_trace_sym_addrs = ref false
let opt_trace_sym_addr_details = ref false
let opt_trace_syscalls = ref false
let opt_trace_detailed_ranges = ref []
let opt_extra_conditions = ref []
let opt_tracepoints = ref []
let opt_string_tracepoints = ref []
let opt_concrete_path = ref false
let opt_solve_path_conditions = ref false
let opt_trace_regions = ref false
let opt_check_for_null = ref false
let opt_offset_strategy = ref UniformStrat
let opt_concretize_divisors = ref false
let opt_trace_stopping = ref false
let opt_trace_setup = ref false
let opt_extra_env = Hashtbl.create 10
let opt_skip_call_addr = ref []
let opt_skip_call_addr_symbol = ref []
let opt_trace_eip = ref false
let opt_trace_ir = ref false
let opt_trace_orig_ir = ref false
let opt_trace_iterations = ref false
let opt_coverage_stats = ref false
let opt_gc_stats = ref false
let opt_solver_stats = ref false
let opt_time_stats = ref false
let opt_nonfatal_solver = ref false
let opt_num_paths = ref None
let opt_check_write_operands = ref false
let opt_pid = ref (-1)

let opt_fuzz_end_addrs = ref []

let opt_trace_registers = ref false
let opt_trace_segments = ref false
let opt_trace_taint = ref false
let opt_trace_unexpected = ref false
let opt_progress_interval = ref None