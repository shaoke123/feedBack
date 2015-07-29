<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户定位</title>
    <script type="text/javascript">
        function initialize() {
            var lng = document.getElementById('x').value;
            var lat = document.getElementById('y').value;
            createMap(lng, lat); //������ͼ
        }

        function createMap(lng, lat) {
            var point = new BMap.Point(lng, lat); //����һ�����ĵ�����
//            map.centerAndZoom(point, 17); //�趨��ͼ�����ĵ�����겢����ͼ��ʾ�ڵ�ͼ������
//            window.map = map; //��map�����洢��ȫ��

            var mp = new BMap.Map('map');
            mp.centerAndZoom(point, 15);
            mp.enableScrollWheelZoom();  // 开启鼠标滚轮缩放
            mp.enableKeyboard();         // 开启键盘控制
            mp.enableContinuousZoom();   // 开启连续缩放效果
            mp.enableInertialDragging(); // 开启惯性拖拽效果


            mp.addControl(new BMap.NavigationControl()); //添加标准地图控件(左上角的放大缩小左右拖拽控件)
            mp.addControl(new BMap.ScaleControl());      //添加比例尺控件(左下角显示的比例尺控件)
            mp.addControl(new BMap.OverviewMapControl()); // 缩略图控件
            mp.addControl(new BMap.MapTypeControl());

        }

        function loadScript() {
            var script = document.createElement("script");
            script.src = "http://api.map.baidu.com/api?v=1.4&callback=initialize";
            document.body.appendChild(script);
        }

        window.onload = loadScript;
    </script>
</head>
<body>
<div id="map" style="width:1300px;height:800px; margin-top: 15px;margin-left: 5px;"></div>

<p><input id="x" type="hidden" value="${lon}"/>&nbsp; &nbsp; <input id="y" type="hidden" value="${lat}"/>
</p>
</body>
</html> 