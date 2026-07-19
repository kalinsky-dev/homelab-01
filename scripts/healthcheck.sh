#!/bin/bash


LOG_FILE="$HOME/homelab-01/logs/healthcheck.log"

FAILURES=0


log()
{
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}


check_system()
{
    log "Hostname: $(hostname)"
    log "User: $(whoami)"
    log "Uptime: $(uptime -p)"
}


check_resources()
{
    CPU_IDLE=$(mpstat | tail -1 | awk '{print $NF}')
    CPU_USAGE=$(echo "100-$CPU_IDLE" | bc)

    MEMORY=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')

    DISK=$(df / | awk 'NR==2 {print $5}' | tr -d '%')


    log "CPU Usage: ${CPU_USAGE}%"
    log "Memory Usage: ${MEMORY}%"
    log "Disk Usage: ${DISK}%"



    if [ "$DISK" -gt 80 ]
    then
        log "WARNING: Disk usage high"
        FAILURES=$((FAILURES+1))
    fi
}


check_network()
{

    if ping -c 2 8.8.8.8 >/dev/null
    then
        log "Internet: OK"
    else
        log "Internet: FAILED"
        FAILURES=$((FAILURES+1))
    fi



    if nslookup google.com >/dev/null
    then
        log "DNS: OK"
    else
        log "DNS: FAILED"
        FAILURES=$((FAILURES+1))
    fi
}


check_services()
{

    SERVICES=("nginx")


    for SERVICE in "${SERVICES[@]}"
    do

        if systemctl is-active --quiet "$SERVICE"
        then
            log "$SERVICE: RUNNING"
        else
            log "$SERVICE: FAILED"
            FAILURES=$((FAILURES+1))
        fi

    done
}


main()
{

    log "===== HEALTHCHECK START ====="


    check_system

    check_resources

    check_network

    check_services



    if [ "$FAILURES" -eq 0 ]
    then
        log "STATUS: HEALTHY"
        exit 0
    else
        log "STATUS: FAILED ($FAILURES problems)"
        exit 1
    fi

}


main
