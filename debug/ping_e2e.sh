for i in {1..100000}; do
  timeout 0.8s ping -c 1 $RemoteIP
  code=$?
  if [[ $code -ne 0 ]]; then
    echo "ping timeout"
    break
  fi
  sleep 0.5
done
