DIR="home/MyAccount/Desktop/dirToScan"
LOG_FILE="home/MyAccount/Desktop/scan.log"

echo "start scan: $(data)" >> "$LOG_FILE"
clamscan "$DIR" >> "$LOG_FILE"
echo "end scan: $(data)" >> "$LOG_FILE"

grep -E "Start Date|Scanned files|Infected files" "$LOG_FILE"