//sound 2

(
d = {
  arg fundamental = 110;
  var harmonics = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var snd = BPF.ar(
    in: Saw.ar(32, LFPulse.ar(harmonics, width: 0.1)),
    freq: harmonics * fundamental,
    rq: 0.01,
    mul: 20);

  Splay.ar(snd); // -> Out.ar(0, Splay.ar(snd)).
}.play;
)
d.set(\fundamental, 104); // change fundamental just for fun
d.set(\fundamental, 70);
d.set(\fundamental, 30);
d.free;