(function (lib, img, cjs) {

    var p; // shortcut to reference prototypes

// library properties:
    lib.properties = {
        width: 1000,
        height: 150,
        fps: 24,
        color: "#FFFFFF",
        manifest: [
            {src: "images/_1bg.png", id: "_1bg"},
            {src: "images/_1horas.png", id: "_1horas"},
            {src: "images/_1minutos.png", id: "_1minutos"},
            {src: "images/_1relogio.png", id: "_1relogio"},
            {src: "images/_1segundos.png", id: "_1segundos"},
            {src: "images/_2frame.png", id: "_2frame"},
            {src: "images/_3frame.png", id: "_3frame"},
            {src: "images/_4frame.png", id: "_4frame"},
            {src: "images/_5frame.png", id: "_5frame"}
        ]
    };

// stage content:
    (lib._1000x150 = function (mode, startPosition, loop) {
        this.initialize(mode, startPosition, loop, {});

        // timeline functions:
        this.frame_0 = function () {
            this.btnclick.addEventListener("click", fl_ClickToGoToWebPage);

            function fl_ClickToGoToWebPage() {
                window.open("http://www.detran.ro.gov.br", "_blank");
            }
        }

        // actions tween:
        this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(1));

        // Layer 3
        this.btnclick = new lib.Symbol1();
        this.btnclick.setTransform(500, 75, 1.374, 1.667, 0, 0, 0, 364, 45);
        new cjs.ButtonHelper(this.btnclick, 0, 1, 2, false, new lib.Symbol1(), 3);

        this.timeline.addTween(cjs.Tween.get(this.btnclick).wait(1));

        // Layer 1
        this.instance = new lib.tudoMovie();
        this.instance.setTransform(364, 45, 1, 1, 0, 0, 0, 364, 45);

        this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(500, 75, 1000.1, 150);


// symbols:
    (lib._1bg = function () {
        this.initialize(img._1bg);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._1horas = function () {
        this.initialize(img._1horas);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._1minutos = function () {
        this.initialize(img._1minutos);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._1relogio = function () {
        this.initialize(img._1relogio);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._1segundos = function () {
        this.initialize(img._1segundos);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._2frame = function () {
        this.initialize(img._2frame);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._3frame = function () {
        this.initialize(img._3frame);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._4frame = function () {
        this.initialize(img._4frame);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib._5frame = function () {
        this.initialize(img._5frame);
    }).prototype = p = new cjs.Bitmap();
    p.nominalBounds = new cjs.Rectangle(0, 0, 1000, 150);


    (lib.Tween9 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._4frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween8 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._4frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween7 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._5frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween6 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._5frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween5 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._3frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween4 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._2frame();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween3 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._1minutos();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Tween2 = function () {
        this.initialize();

        // Layer 1
        this.instance = new lib._1segundos();
        this.instance.setTransform(-364, -45);

        this.addChild(this.instance);
    }).prototype = p = new cjs.Container();
    p.nominalBounds = new cjs.Rectangle(-364, -45, 1000, 150);


    (lib.Symbol1 = function (mode, startPosition, loop) {
        this.initialize(mode, startPosition, loop, {});

        // Layer 1
        this.shape = new cjs.Shape();
        this.shape.graphics.f("#256193").s().dr(-364, -45, 728, 90);
        this.shape.setTransform(364, 45);
        this.shape._off = true;

        this.timeline.addTween(cjs.Tween.get(this.shape).wait(3).to({_off: false}, 0).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = null;


    (lib.tudoMovie = function (mode, startPosition, loop) {
        this.initialize(mode, startPosition, loop, {});

        // frame5
        this.instance = new lib.Tween6("synched", 0);
        this.instance.setTransform(364, 45);
        this.instance.alpha = 0;
        this.instance._off = true;

        this.instance_1 = new lib.Tween7("synched", 0);
        this.instance_1.setTransform(364, 45);

        this.timeline.addTween(cjs.Tween.get({}).to({state: []}).to({state: [{t: this.instance}]}, 276).to({state: [{t: this.instance_1}]}, 11).wait(86));
        this.timeline.addTween(cjs.Tween.get(this.instance).wait(276).to({_off: false}, 0).to({_off: true, alpha: 1}, 11, cjs.Ease.get(1)).wait(86));

        // frame4
        this.instance_2 = new lib.Tween8("synched", 0);
        this.instance_2.setTransform(364, 45);
        this.instance_2.alpha = 0;
        this.instance_2._off = true;

        this.instance_3 = new lib.Tween9("synched", 0);
        this.instance_3.setTransform(364, 45);

        this.timeline.addTween(cjs.Tween.get({}).to({state: []}).to({state: [{t: this.instance_2}]}, 192).to({state: [{t: this.instance_3}]}, 11).to({state: []}, 73).wait(97));
        this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(192).to({_off: false}, 0).to({_off: true, alpha: 1}, 11, cjs.Ease.get(1)).wait(170));

        // frame3
        this.instance_4 = new lib.Tween5("synched", 0);
        this.instance_4.setTransform(364, 45);
        this.instance_4.alpha = 0;
        this.instance_4._off = true;

        this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(77).to({_off: false}, 0).to({alpha: 1}, 11).to({_off: true}, 104).wait(181));

        // frame2
        this.instance_5 = new lib.Tween4("synched", 0);
        this.instance_5.setTransform(486, 44, 1, 1, 0, 0, 0, 122, -1);
        this.instance_5.alpha = 0;
        this.instance_5._off = true;

        this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(49).to({_off: false}, 0).to({regX: 110.4, regY: 0.9, scaleX: 1.11, scaleY: 1.11, x: 487.1, y: 46.1, alpha: 0.43}, 3, cjs.Ease.get(1)).to({regX: 120, regY: -2, scaleX: 1, scaleY: 1, x: 484, y: 43, alpha: 1}, 3, cjs.Ease.get(1)).to({_off: true}, 137).wait(181));

        // seg
        this.instance_6 = new lib.Tween2("synched", 0);
        this.instance_6.setTransform(505, 69.9, 1, 1, 0, 0, 0, 141, 24.9);

        this.timeline.addTween(cjs.Tween.get(this.instance_6).to({regY: 25.1, rotation: 720, y: 70.1}, 47).to({_off: true}, 51).wait(275));

        // hora
        this.instance_7 = new lib._1horas();

        this.timeline.addTween(cjs.Tween.get(this.instance_7).to({_off: true}, 98).wait(275));

        // min
        this.instance_8 = new lib.Tween3("synched", 0);
        this.instance_8.setTransform(505.1, 69.8, 1, 1, 0, 0, 0, 141.1, 24.8);

        this.timeline.addTween(cjs.Tween.get(this.instance_8).to({regX: 141, regY: 25, rotation: 360, x: 505, y: 70}, 47).to({_off: true}, 51).wait(275));

        // rel
        this.instance_9 = new lib._1relogio();

        this.timeline.addTween(cjs.Tween.get(this.instance_9).to({_off: true}, 98).wait(275));

        // fundo
        this.instance_10 = new lib._1bg();

        this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(373));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-5.9, -441.3, 1021.7, 1021.6);

})(lib = lib || {}, images = images || {}, createjs = createjs || {});
var lib, images, createjs;