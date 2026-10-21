#!/usr/bin/env bash
set -u

DESIGN="results/sky130hd/digital_pwm_motor_controller/base"
LIBDIR="$HOME/Desktop/skywater-pdk-libs-sky130_fd_sc_hd/timing"
OUT="reports/sky130hd/digital_pwm_motor_controller/sta_16_variants_15ns"

mkdir -p "$OUT"

for LIB in "$LIBDIR"/*.lib; do
    [ -f "$LIB" ] || continue
    NAME=$(basename "$LIB" .lib)
    TCL="$OUT/${NAME}.tcl"
    LOG="$OUT/${NAME}.log"

    cat > "$TCL" <<TCL_EOF
read_liberty {$LIB}
read_db {$DESIGN/6_final.odb}
read_sdc {/tmp/pwm_test_15ns.sdc}
source platforms/sky130hd/setRC.tcl
read_spef {$DESIGN/6_final.spef}
puts "===== STA RESULTS: $NAME | CLOCK 15 ns ====="
report_checks -path_delay max -format full_clock_expanded
report_worst_slack -max
report_tns -max
report_checks -path_delay min -format full_clock_expanded
report_worst_slack -min
report_tns -min
exit
TCL_EOF

    echo "Running $NAME ..."
    if openroad -exit "$TCL" > "$LOG" 2>&1; then
        echo "Finished: $NAME"
    else
        echo "ERROR: $NAME — inspect $LOG"
    fi
done

echo "All STA attempts finished. Check logs for errors and slack."