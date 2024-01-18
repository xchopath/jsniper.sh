# JSniper.sh
JavaScript Sniper is a helper script designed for web applications, with a focus on uncovering potential vulnerabilities, it excels in finding hardcoded secret keys, detecting DOM-based Cross-Site Scripting (DOM-XSS), and extracting endpoints.

![JavaScript Sniper](https://github.com/xchopath/jsniper.sh/assets/44427665/734ab3f2-4296-4306-bc92-f6decadc17f9)


# Installation

### Dependencies

1. <https://github.com/projectdiscovery/httpx> (HTTP Prober).
```sh
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
sudo mv ~/go/bin/httpx /usr/local/bin/
```

2. <https://github.com/projectdiscovery/katana> (URL Crawler).
```sh
go install github.com/projectdiscovery/katana/cmd/katana@latest
sudo mv ~/go/bin/katana /usr/local/bin/
```

3. <https://github.com/lc/gau> (Passive URL Extractor Through OSINT).
```sh
go install github.com/lc/gau/v2/cmd/gau@latest
sudo mv ~/go/bin/gau /usr/local/bin/
```

4. <https://github.com/projectdiscovery/nuclei> (Scanner).
```sh
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
sudo mv ~/go/bin/nuclei /usr/local/bin/
```

### Script Install

```sh
git clone https://github.com/xchopath/jsniper.sh
cd jsniper.sh/
sudo mv jsniper.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/jsniper.sh
```

# Usage

Common
```
jsniper.sh <domain>
```

Save the output to file
```
jsniper.sh <domain> | tee -a <output>
```

# Disclaimer

This tool is intended for educational and research purposes only. The author is not responsible for any misuse or damage caused by this tool. Unauthorized access to computer systems, networks, and data is illegal and may result in legal consequences. Users are solely responsible for compliance with all applicable laws. Use of this tool on systems without explicit authorization is strictly prohibited.
