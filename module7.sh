#!/bin/bash

# Log file to store script activities
log_file="system_health_check_log.txt"

# Clear old log information
echo "Clearing old log information..."
echo "" > "$log_file"
echo "Old log information cleared."

# Function to log output with timestamp
log() {
    echo "$(date '+%a %b %d %T %Z %Y'): $1" >> "$log_file"
}

# Function to check service status
check_services() {
    log "Checking essential services..."

    # Check SSH service
    if systemctl is-active ssh > /dev/null; then
        log "SSH is running"
    else
        log "SSH is down"
    fi

    # Check HTTP service
    if systemctl is-active http > /dev/null; then
        log "HTTP is running"
    else
        log "HTTP is down"
    fi

    # Check HTTPS service
    if systemctl is-active https > /dev/null; then
        log "HTTPS is running"
    else
        log "HTTPS is down"
    fi

    # Check MySQL service
    if systemctl is-active mysql > /dev/null; then
        log "MySQL is running"
    else
        log "MySQL is down"
    fi

    log "Essential services check completed."
}

# Function to monitor disk usage
monitor_disk_usage() {
    log "Checking disk usage..."
    threshold=80

    # Check disk usage for root partition
    usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ "$usage" -gt "$threshold" ]; then
        log "WARNING: Root partition usage is ${usage}%, exceeding ${threshold}% threshold."
    fi

    log "Disk usage check completed."
}

# Function to check for read-only file systems
check_read_only() {
    log "Checking for read-only file systems..."

    # Check for read-only file systems
    if mount | grep " ro," > /dev/null; then
        log "WARNING: Read-only file systems detected."
    fi

    log "Read-only file systems check completed."
}

# Function to monitor CPU and memory usage for each running process
monitor_processes() {
    log "Monitoring CPU and Memory usage for each running process..."

    # Monitor CPU and memory usage for each process
    top -b -n 1 | head -n 20 >> "$log_file"

    log "Process monitoring completed."
}

# Function to list failed SSH login sessions
list_failed_ssh_logins() {
    log "Listing current user failed SSH login sessions..."

    # List failed SSH login sessions
    grep "Failed password" /var/log/auth.log >> "$log_file"

    log "Failed SSH login sessions check completed."
}

# Function to scan for unexpected open ports
scan_open_ports() {
    log "Scanning for unexpected open ports..."

    # Scan for open ports
    netstat -tuln >> "$log_file"

    log "Port scanning completed."
}

# Main function executing health checks
run_health_checks() {
    check_services
    monitor_disk_usage
    check_read_only
    monitor_processes
    list_failed_ssh_logins
    scan_open_ports

    log "All health checks completed."
}

# Run health checks and log errors if any
run_health_checks || log "Health checks encountered errors."

# Display informational message
echo "Health checks completed. Please check '$log_file' for details."

