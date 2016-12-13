(function (lib, img, cjs) {

var p; // shortcut to reference prototypes

// library properties:
lib.properties = {
	width: 1000,
	height: 150,
	fps: 28,
	color: "#FFFFFF",
	manifest: [
		{src:"images/_1bg.png", id:"_1bg"},
		{src:"images/_1foto.png", id:"_1foto"},
		{src:"images/_1texto.png", id:"_1texto"},
		{src:"images/_2foto.png", id:"_2foto"},
		{src:"images/_2texto.png", id:"_2texto"},
		{src:"images/_3foto.png", id:"_3foto"},
		{src:"images/_3texto.png", id:"_3texto"},
		{src:"images/_4ass.png", id:"_4ass"}
	]
};

// stage content:
(lib._1000x150 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.btnclick.addEventListener("click", fl_ClickToGoToWebPage);
		
		function fl_ClickToGoToWebPage() {
			window.open("http://www.rondonia.ro.gov.br/", "_blank");
		}
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(1));

	// Layer 2
	this.btnclick = new lib.Symbol1();
	this.btnclick.setTransform(500,75,1.374,1.667,0,0,0,364,45);
	new cjs.ButtonHelper(this.btnclick, 0, 1, 2, false, new lib.Symbol1(), 3);

	this.timeline.addTween(cjs.Tween.get(this.btnclick).wait(1));

	// Layer 1
	this.instance = new lib.tudoM();
	this.instance.setTransform(364,45,1,1,0,0,0,364,45);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(500,75,1000,150);


// symbols:
(lib._1bg = function() {
	this.initialize(img._1bg);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._1foto = function() {
	this.initialize(img._1foto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._1texto = function() {
	this.initialize(img._1texto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._2foto = function() {
	this.initialize(img._2foto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._2texto = function() {
	this.initialize(img._2texto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._3foto = function() {
	this.initialize(img._3foto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._3texto = function() {
	this.initialize(img._3texto);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib._4ass = function() {
	this.initialize(img._4ass);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1000,150);


(lib.Tween31 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._4ass();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween30 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._4ass();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween29 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3foto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween28 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3foto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween27 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2foto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween26 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2foto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween25 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween24 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._3texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween23 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween22 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._2texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween21 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween20 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1texto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Tween19 = function() {
	this.initialize();

	// Layer 1
	this.instance = new lib._1foto();
	this.instance.setTransform(-364,-45);

	this.addChild(this.instance);
}).prototype = p = new cjs.Container();
p.nominalBounds = new cjs.Rectangle(-364,-45,1000,150);


(lib.Symbol1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#256193").s().dr(-364,-45,728,90);
	this.shape.setTransform(364,45);
	this.shape._off = true;

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(3).to({_off:false},0).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = null;


(lib.tudoM = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// ass
	this.instance = new lib.Tween30("synched",0);
	this.instance.setTransform(364,45);
	this.instance.alpha = 0;
	this.instance._off = true;

	this.instance_1 = new lib.Tween31("synched",0);
	this.instance_1.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance}]},355).to({state:[{t:this.instance_1}]},10).wait(122));
	this.timeline.addTween(cjs.Tween.get(this.instance).wait(355).to({_off:false},0).to({_off:true,alpha:1},10).wait(122));

	// 3-texto
	this.instance_2 = new lib.Tween24("synched",0);
	this.instance_2.setTransform(364,45);
	this.instance_2.alpha = 0;
	this.instance_2._off = true;

	this.instance_3 = new lib.Tween25("synched",0);
	this.instance_3.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_2}]},245).to({state:[{t:this.instance_3}]},48).to({state:[]},62).wait(132));
	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(245).to({_off:false},0).to({_off:true,alpha:1},48).wait(194));

	// 3-foto
	this.instance_4 = new lib.Tween28("synched",0);
	this.instance_4.setTransform(364,45);
	this.instance_4._off = true;

	this.instance_5 = new lib.Tween29("synched",0);
	this.instance_5.setTransform(365,45,1.058,1.058);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_4}]},245).to({state:[{t:this.instance_5}]},109).to({state:[]},1).wait(132));
	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(245).to({_off:false},0).to({_off:true,scaleX:1.06,scaleY:1.06,x:365},109).wait(133));

	// 2-texto
	this.instance_6 = new lib.Tween22("synched",0);
	this.instance_6.setTransform(364,45);
	this.instance_6.alpha = 0;
	this.instance_6._off = true;

	this.instance_7 = new lib.Tween23("synched",0);
	this.instance_7.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_6}]},116).to({state:[{t:this.instance_7}]},53).to({state:[]},77).wait(241));
	this.timeline.addTween(cjs.Tween.get(this.instance_6).wait(116).to({_off:false},0).to({_off:true,alpha:1},53,cjs.Ease.get(1)).wait(318));

	// 2-foto
	this.instance_8 = new lib.Tween26("synched",0);
	this.instance_8.setTransform(364,45);
	this.instance_8._off = true;

	this.instance_9 = new lib.Tween27("synched",0);
	this.instance_9.setTransform(364,45,1.022,1.022);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.instance_8}]},116).to({state:[{t:this.instance_9}]},129).to({state:[]},1).wait(241));
	this.timeline.addTween(cjs.Tween.get(this.instance_8).wait(116).to({_off:false},0).to({_off:true,scaleX:1.02,scaleY:1.02},129).wait(242));

	// 1-texto
	this.instance_10 = new lib.Tween20("synched",0);
	this.instance_10.setTransform(364,45);
	this.instance_10.alpha = 0;

	this.instance_11 = new lib.Tween21("synched",0);
	this.instance_11.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_10}]}).to({state:[{t:this.instance_11}]},40).to({state:[]},77).wait(370));
	this.timeline.addTween(cjs.Tween.get(this.instance_10).to({_off:true,alpha:1},40,cjs.Ease.get(1)).wait(447));

	// 1-foto
	this.instance_12 = new lib.Tween19("synched",0);
	this.instance_12.setTransform(364,45);

	this.timeline.addTween(cjs.Tween.get(this.instance_12).to({scaleX:1.05,scaleY:1.05},116).to({_off:true},1).wait(370));

	// bg
	this.instance_13 = new lib._1bg();

	this.timeline.addTween(cjs.Tween.get(this.instance_13).wait(487));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-16.8,-2.1,1046.3,157);

})(lib = lib||{}, images = images||{}, createjs = createjs||{});
var lib, images, createjs;