SinOsc s => dac;

//NOTES
16.35 => float C0;
17.32 => float CS0 => float Db0;
18.35 => float D0;
19.45 => float DS0 => float Eb0;
20.60 => float E0;
21.83 => float F0;
23.12 => float FS0 => float Gb0;
24.50 => float G0;
25.96 => float GS0 => float Ab0;
27.50 => float A0;
29.14 => float AS0 =>float Bb0;
30.87 => float B0;

fun void play(float freq, dur duration, float times){
    <<< freq, duration, times >>>;
    while(times > 0)
    {        
        freq => s.freq;
        duration => now;
        1 -=> times;
    }    
}

fun void pause(){
    play(Db0, 50::ms, 1); //??
}
fun void pause(dur duration){
    play(Db0, duration, 1); //??
}

8 => int tone;
100::ms => dur noteDuration;

fun void intro(){
    play(Db0 * tone, noteDuration, 8);
    play(F0 * tone, noteDuration, 16);
    play(Eb0 * tone, noteDuration, 4);
    play(Db0 * tone, noteDuration, 4);

    play(Db0 * tone, noteDuration, 2);
    play(F0 * tone, noteDuration, 8);
    play(Gb0 * tone, noteDuration, 4);
    play(F0 * tone, noteDuration, 4);
    play(Eb0 * tone, noteDuration, 4);

    play(GS0 * tone, noteDuration, 16);
    play(FS0 * tone,noteDuration, 4);
    play(F0 * tone, noteDuration, 4);
    play(FS0 * tone, noteDuration, 4);
    play(F0 * tone, noteDuration, 8);

    play(C0 * tone, noteDuration, 2);
    play(Db0 * tone, noteDuration, 8);
    play(F0 * tone, noteDuration, 4);
    play(Eb0 * tone, noteDuration, 2);
    play(Db0 * tone, noteDuration, 2);
}

//INTRO
intro();

//VERSE
// play(F0 * (tone+1), noteDuration, 2);
// pause();
// play(F0 * (tone+1), noteDuration, 2);
// pause();
// play(F0 * (tone+1), noteDuration, 2);
// pause();
// play(F0 * (tone+1), noteDuration, 4);
// pause();
// play(D0 * (tone), noteDuration, 4);
// pause();

// play(Db0 * (tone+1), noteDuration, 2);
// pause();
// play(Db0 * (tone+1), noteDuration, 2);
// pause();
// play(Db0 * (tone+1), noteDuration, 2);
// pause();
// play(Db0 * (tone+1), noteDuration, 4);
// pause();

// play(Bb0 * (tone), noteDuration, 4);
// pause();