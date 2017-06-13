# proxy-pass

Simply passes http requests for a particular host to another host with a different name:port

Usage:

```
docker run -e VIRTUAL_HOST=myawesomeservice.com -e TARGET_HOST=backendserver.com:9234 davidsiaw/proxy-pass
```

Also proxies websockets!
