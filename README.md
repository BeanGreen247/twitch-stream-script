# twitch-stream-script
A script that uses mpv, ffmpeg and flv to stream to Twitch

Install the packages
```
sudo apt install vlc libluajit-5.1-2 libluajit-5.1-common libobs0 libxcb-xinput0 vlc-bin vlc-l10n vlc-plugin-notify vlc-plugin-qt vlc-plugin-samba vlc-plugin-skins2 vlc-plugin-video-splitter vlc-plugin-visualization ffmpeg mpv wget
```
Get the script
```
wget -O ~/streamscript.sh https://raw.githubusercontent.com/BeanGreen247/twitch-stream-script/master/streamscript-sample.sh
```
Things to change
* **1680x1050** to your resolution
* **:0.0+1280** to **:0.0** if you use one monitor
* **xxxx_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx** in **"rtmp://live-lax.twitch.tv/app/xxxx_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"** by replacing the Xs with your **[Twitch dashboard](https://dashboard.twitch.tv/) >> Preferences >> Channel** >> Clik on **Copy** button in **Primary Stream key section** and put the copied stuff like this **"rtmp://live-lax.twitch.tv/app/1234_567891234_567891234567891234567891234567"** (just an example)

To use
```
./streamscript.sh
```
