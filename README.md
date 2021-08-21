# twitch-stream-script
A script that uses ffplay, ffmpeg and flv to stream to Twitch

Install the packages
```
sudo apt install vlc libluajit-5.1-2 libluajit-5.1-common libobs0 libxcb-xinput0 vlc-bin vlc-l10n vlc-plugin-notify vlc-plugin-qt vlc-plugin-samba vlc-plugin-skins2 vlc-plugin-video-splitter vlc-plugin-visualization ffmpeg wget
```
Get the script
```
wget -O ~/streamscript.sh https://raw.githubusercontent.com/BeanGreen247/twitch-stream-script/master/streamscript-sample.sh
```
Things to change
* **1680x1050** to your resolution
* **:0.0+1280** to **:0.0** if you use one monitor
* **xxxx_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx** in **"rtmp://live-lax.twitch.tv/app/xxxx_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"** by replacing the Xs with your **[Twitch dashboard](https://dashboard.twitch.tv/) >> Preferences >> Channel** >> Clik on **Copy** button in **Primary Stream key section** and put the copied stuff like this **"rtmp://live-lax.twitch.tv/app/1234_567891234_567891234567891234567891234567"** (just an example)

* in the **-f pulse -filter_complex amerge -ac 2 -i 3** section change the **3** acording to the output of the following command
```
pacmd list-sources
```
* And look for Monitor of **CM106 Like Sound Device Analog Stereo** and replace the **2** in **-f pulse -ac 2 -i 2** with the index number

* **-f alsa -i default -vol 2000** - sets microphone input volume and make sure that your default microphone is the one you want to use

* **-f pulse -i 2** - get desktop audio from pulse

* **-filter_complex "[1:0][2:0]amix=inputs=2:duration=shortest"** - mix both audio streams into one

Make executable
```
chmod +x streamscript.sh
```

To use
```
./streamscript.sh
```

## videos
[screenrecorder.sh - screen recording script finalized, new features](https://www.youtube.com/watch?v=08LH4z8QC_A)
