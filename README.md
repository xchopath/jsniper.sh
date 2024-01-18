# jsniper.sh
JavaScript Sniper is a helper script designed for web applications, with a focus on uncovering potential vulnerabilities, it excels in finding hardcoded secret keys, detecting DOM-based Cross-Site Scripting (DOM-XSS), and extracting endpoints.

![JavaScript Sniper](https://github.com/xchopath/jsniper.sh/assets/44427665/734ab3f2-4296-4306-bc92-f6decadc17f9)


## Installation

Dependencies:

```sh
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
sudo mv ~/go/bin/httpx /usr/local/bin/
go install github.com/projectdiscovery/katana/cmd/katana@latest
sudo mv ~/go/bin/katana /usr/local/bin/
go install github.com/lc/gau/v2/cmd/gau@latest
sudo mv ~/go/bin/gau /usr/local/bin/
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
sudo mv ~/go/bin/nuclei /usr/local/bin/
```

<br/>

Install:

```sh
git clone https://github.com/xchopath/jsniper.sh
cd jsniper.sh/
sudo mv jsniper.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/jsniper.sh
```

<br/>

## Usage

```
jsniper.sh <domain>
```
