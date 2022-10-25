#!/bin/sh

white_ip=218.17.207.53

proxy --log-level i --plugins proxy.plugin.FilterByClientIpPlugin --filtered-client-ips-mode whitelist --filtered-client-ips ${white_ip} --port 7890 --host 0.0.0.0