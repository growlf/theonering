cat > /host/etc/docker/daemon.json << ENDOFFILE
{
    "log-driver": "loki",
    "log-opts":
    {
        "loki-url":"${LOKI_ENDPOINT}",
        "loki-batch-wait": "1m",
        "max-size": "100m",
        "max-file": "3"
    }
}
ENDOFFILE
