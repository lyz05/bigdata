(function() {
  // 1. 实例化对象
  var myChart = echarts.init(document.querySelector(".map .chart"));
  // 2. 指定配置和数据
  // 2. 指定配置和数据
  var geoCoordMap = {
    上海: [121.4648, 31.2891],
    东莞: [113.8953, 22.901],
    东营: [118.7073, 37.5513],
    中山: [113.4229, 22.478],
    临汾: [111.4783, 36.1615],
    临沂: [118.3118, 35.2936],
    丹东: [124.541, 40.4242],
    丽水: [119.5642, 28.1854],
    乌鲁木齐: [87.9236, 43.5883],
    佛山: [112.8955, 23.1097],
    保定: [115.0488, 39.0948],
    兰州: [103.5901, 36.3043],
    包头: [110.3467, 41.4899],
    北京: [116.4551, 40.2539],
    北海: [109.314, 21.6211],
    南京: [118.8062, 31.9208],
    南宁: [108.479, 23.1152],
    南昌: [116.0046, 28.6633],
    南通: [121.1023, 32.1625],
    厦门: [118.1689, 24.6478],
    台州: [121.1353, 28.6688],
    合肥: [117.29, 32.0581],
    呼和浩特: [111.4124, 40.4901],
    咸阳: [108.4131, 34.8706],
    哈尔滨: [127.9688, 45.368],
    唐山: [118.4766, 39.6826],
    嘉兴: [120.9155, 30.6354],
    大同: [113.7854, 39.8035],
    大连: [122.2229, 39.4409],
    天津: [117.4219, 39.4189],
    太原: [112.3352, 37.9413],
    威海: [121.9482, 37.1393],
    宁波: [121.5967, 29.6466],
    宝鸡: [107.1826, 34.3433],
    宿迁: [118.5535, 33.7775],
    常州: [119.4543, 31.5582],
    广州: [113.5107, 23.2196],
    廊坊: [116.521, 39.0509],
    延安: [109.1052, 36.4252],
    张家口: [115.1477, 40.8527],
    徐州: [117.5208, 34.3268],
    德州: [116.6858, 37.2107],
    惠州: [114.6204, 23.1647],
    成都: [103.9526, 30.7617],
    扬州: [119.4653, 32.8162],
    承德: [117.5757, 41.4075],
    拉萨: [91.1865, 30.1465],
    无锡: [120.3442, 31.5527],
    日照: [119.2786, 35.5023],
    昆明: [102.9199, 25.4663],
    杭州: [119.5313, 29.8773],
    枣庄: [117.323, 34.8926],
    柳州: [109.3799, 24.9774],
    株洲: [113.5327, 27.0319],
    武汉: [114.3896, 30.6628],
    汕头: [117.1692, 23.3405],
    江门: [112.6318, 22.1484],
    沈阳: [123.1238, 42.1216],
    沧州: [116.8286, 38.2104],
    河源: [114.917, 23.9722],
    泉州: [118.3228, 25.1147],
    泰安: [117.0264, 36.0516],
    泰州: [120.0586, 32.5525],
    济南: [117.1582, 36.8701],
    济宁: [116.8286, 35.3375],
    海口: [110.3893, 19.8516],
    淄博: [118.0371, 36.6064],
    淮安: [118.927, 33.4039],
    深圳: [114.5435, 22.5439],
    清远: [112.9175, 24.3292],
    温州: [120.498, 27.8119],
    渭南: [109.7864, 35.0299],
    湖州: [119.8608, 30.7782],
    湘潭: [112.5439, 27.7075],
    滨州: [117.8174, 37.4963],
    潍坊: [119.0918, 36.524],
    烟台: [120.7397, 37.5128],
    玉溪: [101.9312, 23.8898],
    珠海: [113.7305, 22.1155],
    盐城: [120.2234, 33.5577],
    盘锦: [121.9482, 41.0449],
    石家庄: [114.4995, 38.1006],
    福州: [119.4543, 25.9222],
    秦皇岛: [119.2126, 40.0232],
    绍兴: [120.564, 29.7565],
    聊城: [115.9167, 36.4032],
    肇庆: [112.1265, 23.5822],
    舟山: [122.2559, 30.2234],
    苏州: [120.6519, 31.3989],
    莱芜: [117.6526, 36.2714],
    菏泽: [115.6201, 35.2057],
    营口: [122.4316, 40.4297],
    葫芦岛: [120.1575, 40.578],
    衡水: [115.8838, 37.7161],
    衢州: [118.6853, 28.8666],
    西宁: [101.4038, 36.8207],
    西安: [109.1162, 34.2004],
    贵阳: [106.6992, 26.7682],
    连云港: [119.1248, 34.552],
    邢台: [114.8071, 37.2821],
    邯郸: [114.4775, 36.535],
    郑州: [113.4668, 34.6234],
    鄂尔多斯: [108.9734, 39.2487],
    重庆: [107.7539, 30.1904],
    金华: [120.0037, 29.1028],
    铜川: [109.0393, 35.1947],
    银川: [106.3586, 38.1775],
    镇江: [119.4763, 31.9702],
    长春: [125.8154, 44.2584],
    长沙: [113.0823, 28.2568],
    长治: [112.8625, 36.4746],
    阳泉: [113.4778, 38.0951],
    青岛: [120.4651, 36.3373],
    韶关: [113.7964, 24.7028]
  };

  var XAData = [
    [{ name: "西安" }, { name: "北京", value: 100 }],
    [{ name: "西安" }, { name: "上海", value: 100 }],
    [{ name: "西安" }, { name: "广州", value: 100 }],
    [{ name: "西安" }, { name: "西宁", value: 100 }],
    [{ name: "西安" }, { name: "拉萨", value: 100 }]
  ];

  var XNData = [
    [{ name: "西宁" }, { name: "北京", value: 100 }],
    [{ name: "西宁" }, { name: "上海", value: 100 }],
    [{ name: "西宁" }, { name: "广州", value: 100 }],
    [{ name: "西宁" }, { name: "西安", value: 100 }],
    [{ name: "西宁" }, { name: "银川", value: 100 }]
  ];

  var YCData = [
    [{ name: "拉萨" }, { name: "北京", value: 100 }],
    [{ name: "拉萨" }, { name: "潍坊", value: 100 }],
    [{ name: "拉萨" }, { name: "哈尔滨", value: 100 }]
  ];

		let iconRQ = "image://data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAUCAYAAABiS3YzAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjNCRkRBMEJBQzgwRjExRUFBNUI0RTMyMThEN0UxMzFEIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjNCRkRBMEJCQzgwRjExRUFBNUI0RTMyMThEN0UxMzFEIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6M0JGREEwQjhDODBGMTFFQUE1QjRFMzIxOEQ3RTEzMUQiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6M0JGREEwQjlDODBGMTFFQUE1QjRFMzIxOEQ3RTEzMUQiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5mT42iAAABQ0lEQVR42mL8LabOQCQIBOL1xChkItJAkLp+IBajpqFWQCwPxJ7UNDQCSgdQy1BmIA6Bsl2AmJMahjoAsTiUzQPETtQwNAKN709IAwvUayZQ/hcg/o0k/x6Ig9D0+ABxKJT9HYh/oMm/BBm6GYitgTgfiBmJcLkkEK/CIXcGiGNB3v8JxIVQF31gIA/8AeIWaNK7gRymG4BYH4hPkGjgXSC2A+JaWNChR9QjqIJeIP5PhIGzgdgAiI8Tin2QbSVAvIOAgROBOA0auUQlKV4gtidgqBGp6RSUFrmIKA/ESDEUPcGfBOIUIH6Lln29iTVUCIjdkJJKExDbAPFcqJdPEMpd2AwF5TBWaFKxBeJ6qOHIqaMbmjrcsBUw2AwNh7rKAEeaBaWOMiD2BeJvQOxOyFBuaFJJwZZU0MBWaHCIo0sABBgAetA4Jx5t/ToAAAAASUVORK5CYII="

		let data = [{
		        name: "北京",
		        value: [116.24, 39.55, 100]
		    },
		    {
		        name: "深圳",
		        value: [114.271522, 22.753644]
		    },

		    {
		        // name: "重庆",
		        value: [106.54, 29.59]
		    },
		    {
		        // name: "浙江",
		        value: [120.19, 30.26]
		    },
			{
				name: "上海",
				value: [121.4648, 31.2891]
			},
			    // 上海: [121.4648, 31.2891],
    // 东莞: [113.8953, 22.901],
    // 东营: [118.7073, 37.5513],
    // 中山: [113.4229, 22.478],
		// 	    鄂尔多斯: [108.9734, 39.2487],
    // 重庆: [107.7539, 30.1904],
    // 金华: [120.0037, 29.1028],
    // 铜川: [109.0393, 35.1947],
    // 银川: [106.3586, 38.1775],
    // 镇江: [119.4763, 31.9702],
    // 长春: [125.8154, 44.2584],
    // 长沙: [113.0823, 28.2568],
    // 长治: [112.8625, 36.4746],
    // 阳泉: [113.4778, 38.0951],
    // 青岛: [120.4651, 36.3373],
    // 韶关: [113.7964, 24.7028]
			{
		        // name: "东莞",
		        value:  [113.8953, 22.901]
		    },
		    {
		        // name: "东营",
		        value: [118.7073, 37.5513],
		    },

		    {
		        // name: "中山",
		        value: [113.4229, 22.478]
		    },
		    {
		        name: "鄂尔多斯",
		        value: [108.9734, 39.2487]
		    },
			{
				// name: "重庆",
				value: [107.7539, 30.1904]
			},
{
		        name: "铜川",
		        value: [109.0393, 35.1947]
		    },
		    {
		        // name: "镇江",
		        value: [119.4763, 31.9702]
		    },

		    {
		        name: "长春",
		        value: [125.8154, 44.2584]
		    },
		    {
		        // name: "青岛",
		        value: [120.4651, 36.3373]
		    },
			{
				// name: "韶关",
				value: [113.7964, 24.7028]
			},
{
		        // name: "扬州",
		        value: [119.4653, 32.8162]
		    },
		    {
		        // name: "承德",
		        value: [117.5757, 41.4075]
		    },

		    {
		        // name: "拉萨",
		        value: [125.8154, 44.2584]
		    },
		    {
		        // name: "无锡",
		        value: [120.3442, 31.5527]
		    },
			{
				// name: "日照",
				value: [119.2786, 35.5023]
			},
{
		        // name: "昆明",
		        value:[102.9199, 25.4663]
		    },
		    {
		        // name: "杭州",
		        value: [119.5313, 29.8773]
		    },

		    {
		        // name: "枣庄",
		        value: [117.323, 34.8926]
		    },
		    {
		        // name: "柳州",
		        value: [109.3799, 24.9774]
		    },
			{
				// name: "株洲",
				value:[113.5327, 27.0319]
			},
{
		        // name: "武汉",
		        value: [114.3896, 30.6628]
		    },
			{
				value:[43.793026,87.627704]
			}
    // 扬州: [119.4653, 32.8162],
    // 承德: [117.5757, 41.4075],
    // 拉萨: [91.1865, 30.1465],
    // 无锡: [120.3442, 31.5527],
    // 日照: [119.2786, 35.5023],
    // 昆明: [102.9199, 25.4663],
    // 杭州: [119.5313, 29.8773],
    // 枣庄: [117.323, 34.8926],
    // 柳州: [109.3799, 24.9774],
    // 株洲: [113.5327, 27.0319],
    // 武汉: [114.3896, 30.6628],
    // 汕头: [117.1692, 23.3405],
    // 江门: [112.6318, 22.1484],
		]
		let LableData = [
		//     {
		//     name: "北京",
		//     coords: [
		//         [116.24, 39.55, 100],
		//         [120.24, 46.55, 100]
		//     ], // 线条位置[开始位置，结束位置]
		//     value: [31282211]
		// },
		// {
		//     name: "深圳",
		//     coords: [
		//         [114.271522, 22.753644],
		//         [118.24, 18.55, 100]
		//     ], // 线条位置[开始位置，结束位置]
		//     value: [7259379]
		// },
		// {
		//     name: "重庆",
		//     coords: [
		//         [106.54, 29.59],
		//         [104.24, 35.55]
		//     ], // 线条位置[开始位置，结束位置]
		//     value: [2243]
		// },
		// {
		//     name: "浙江",
		//     coords: [
		//         [120.19, 30.26],
		//         [125.24, 27.55, 100]
		//     ], // 线条位置[开始位置，结束位置]
		//     value: [70]
		// },
		// 	{
		// 		// name: "上海",
		// 		coords: [
		// 			[121.4648, 31.2891],
		// 			[122.4648, 32.2891]
		// 		], // 线条位置[开始位置，结束位置]
		// 		value: [737]
		// 	},

		];

		option = {
		    /*backgroundColor: '#000f1e',*/
		    geo: {
		        map: 'china',
		        aspectScale: 0.85,
		        layoutCenter: ["50%", "50%"], //地图位置
		        layoutSize: '100%',
		        itemStyle: {
		            normal: {
		                shadowColor: '#276fce',
		                shadowOffsetX: 0,
		                shadowOffsetY: 15,
		                opacity: 0.5,
		            },
		            emphasis: {
		                areaColor: '#276fce',

		            }
		        },
		        regions: [{
		            name: '南海诸岛',
		            itemStyle: {
		                areaColor: 'rgba(0, 10, 52, 1)',

		                borderColor: 'rgba(0, 10, 52, 1)',
		                normal: {
		                    opacity: 0,
		                    label: {
		                        show: false,
		                        color: "#009cc9",
		                    }
		                },


		            },
		            label: {
		                show: false,
		                color: '#FFFFFF',
		                fontSize: 12,
		            },


		        }],

		    },
		    series: [
		        // 常规地图
		        {
		            type: 'map',
		            mapType: 'china',
		            aspectScale: 0.85,
		            layoutCenter: ["50%", "50%"], //地图位置
		            layoutSize: '100%',
		            zoom: 1, //当前视角的缩放比例
		            // roam: true, //是否开启平游或缩放
		            scaleLimit: { //滚轮缩放的极限控制
		                min: 1,
		                max: 2
		            },
		            itemStyle: {
		                normal: {
		                    areaColor: '#0c487c',
		                    borderColor: '#1cccff',
		                    borderWidth: 1.5


		                },
		                emphasis: {
		                    areaColor: '#021a65',
		                    label: {
		                        color: "#fff"
		                    }

		                }
		            },


		        },
		        { //首都星图标
		            name: '首都',
		            type: 'scatter',
		            coordinateSystem: 'geo',
		            data: [{
		                name: '首都',
		                value: [116.24, 41.55, 100],

		            }, ],
		            symbol: iconRQ,
		            symbolSize: 20,
		            label: {
		                normal: {
		                    show: false,

		                },
		                emphasis: {
		                    show: false
		                }
		            },

		        },
		        // 区域散点图
		        {
		            type: 'effectScatter',
		            coordinateSystem: 'geo',
		            zlevel: 2,
		            symbolSize: 10,
		            rippleEffect: { //坐标点动画
		                period: 3,
		                scale: 5,
		                brushType: 'fill'
		            },
		            label: {
		                normal: {
		                    show: true,
		                    position: 'right',
		                    formatter: '{b}',
		                    color: '#b3e2f2',
		                    fontWeight: "bold",
		                    fontSize: 16
		                }
		            },

		            data: data,
		            itemStyle: { //坐标点颜色
		                normal: {
		                    show: true,
		                    color: '#ff8003',
		                    shadowBlur: 20,
		                    shadowColor: '#fff'
		                },
		                emphasis: {
		                    areaColor: '#f00'
		                }
		            },

		        },
		        {

		            type: 'lines',
		            zlevel: 3,
		            symbol: 'circle',
		            symbolSize: [5, 5],
		            color: '#ff8003',
		            opacity: 1,
		            label: {
		                show: true,
		                padding: [10, 20],
		                color: '#fff',
		                backgroundColor: "#1a3961",
		                borderColor: '#aee9fb',
		                borderWidth: 1,
		                borderRadius: 6,
		                formatter(params) {

		                    // let arr = [params.name, "废水污染：" + params.value[1] + "家", "废气污染：" + params.value[0] + "家"];
		                    // return arr.join("\n")
		                },
		                textStyle: {
		                    align: 'left',
		                    lineHeight: 20,
		                }
		                /* normal: {

		                     textStyle: {
		                         color: '#fff',
		                         fontSize: 9,
		                     },
		                     formatter (value){
		                         return value.data.value[2]
		                     },

		                 }*/
		            },
		            lineStyle: {
		                type: 'solid',
		                color: '#fff',
		                width: 0.5,
		                opacity: 1,

		            },
		            data: LableData,


		        },
		    ]
		};
  myChart.setOption(option);
  window.addEventListener("resize", function() {
    myChart.resize();
  });
})();
