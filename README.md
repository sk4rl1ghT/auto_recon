<h3>Mô tả:</h3>
Tool auto_recon phục vụ cho việc recon dễ dàng hơn bằng 2 phướng pháp automation và semi-auto.
<h3>Cài đặt:</h3>

**Yêu cầu:** ``Go Language`` và ``Python 3``.<br>
**Tools sử dụng - Cần cài đặt các tool sau để run script**<br>

  <a href="https://github.com/projectdiscovery/subfinder">`subfinder`</a> •
  <a href="https://github.com/aboul3la/Sublist3r">`sublist3r`</a> •
  <a href="https://github.com/1ndianl33t/Gf-Patterns">`gf patterns`</a> •
  <a href="https://github.com/tomnomnom/assetfinder">`assetfinder`</a> •
  <a href="https://github.com/projectdiscovery/httpx">`httpx`</a> •
  <a href="https://github.com/Emoe/kxss">`kxss`</a> •
  <a href="https://github.com/projectdiscovery/nuclei">`nuclei`</a> •
  <a href="https://github.com/hahwul/dalfox">`dalfox`</a> •
  <a href="https://github.com/tomnomnom/anew">`anew`</a> •
  <a href="https://github.com/projectdiscovery/notify">`notify`</a> •
  <a href="https://github.com/OWASP/Amass">`amass`</a> •
  <a href="https://github.com/lc/gau">`gau`</a> •
  <a href="https://github.com/s0md3v/uro">`uro`</a> •
  <a href="https://github.com/ffuf/ffuf">`ffuf`</a> •
  <a href="https://github.com/OJ/gobuster">`gobuster`</a> •
  <a href="https://github.com/jaeles-project/gospider">`gospider`</a> •
  <a href="https://github.com/tomnomnom/waybackurls">`waybackurls`</a> •
  <a href="https://github.com/obheda12/GitDorker">`GitDork`</a><br>

```bash
:~ git clone https://github.com/sk4rl1ghT/auto_recon.git && cd auto_recon/ && chmod +x auto_recon* install.sh && ./install.sh
```

Lưu ý: Vì script có sử dụng tool GitDork, cho nên cần setup key github vào file ~/tools/GitDorker/tf/TOKENSFILE

<h3>Usage:</h3>

Đối với target Public:
```js 

./auto_recon -d testphp.vulnweb.com
```

Đối với target Internal:
Tại Burpsuite, add target vào scope và sử dụng tính năng Discovery Content(trong lúc đó nên lướt 1 luợt các chức năng có trên trang), sau đó lưu file tại đường dẫn ~/burp_output/all_url.txt (trước khi lưu nên lọc các file static, ảnh ra)

```js 

./auto_recon_internal -d internal.msb.com.vn
```
