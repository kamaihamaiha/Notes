### 外接显示器步骤
* xrandr显示当前连接显示设备的信息
   xxx connected primary[shell输出内容]	    找到作为主连接接口的设备

* HDMI-0 connected[shell输出内容，表示发现了外接的HDMI设备]

* xrandr --output HDMI-0 --same-as xxx[主屏幕名称] --auto   复制到第二个屏幕，(auto为最高分辨率)

* xrandr --output HDMI-0 --same-as xxx[主屏幕名称] --mode 1280×1024	指定外接显示器分辨率

*  xrandr --output HDMI-0 --right-of [主屏幕名称] --auto	    打开外接显示器，设置为右侧扩展

*  xrandr --output HDMI-0 -off	    关闭外接的HDMI屏幕

   
