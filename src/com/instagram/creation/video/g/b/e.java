// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    public static final e f;
    public static final e g;
    public static final e h;
    public static final e i;
    public static final e j;
    private static final e l[];
    public final String k;

    private e(String s, int i1, String s1)
    {
        super(s, i1);
        k = s1;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/instagram/creation/video/g/b/e, s);
    }

    public static e[] values()
    {
        return (e[])l.clone();
    }

    static 
    {
        a = new e("CODEC_VIDEO_VP8", 0, "video/x-vnd.on2.vp8");
        b = new e("CODEC_VIDEO_VP9", 1, "video/x-vnd.on2.vp9");
        c = new e("CODEC_VIDEO_H264", 2, "video/avc");
        d = new e("CODEC_VIDEO_MPEG4", 3, "video/mp4v-es");
        e = new e("CODEC_VIDEO_H263", 4, "video/3gpp");
        f = new e("CODEC_AUDIO_AMR_NB", 5, "audio/3gpp");
        g = new e("CODEC_AUDIO_AMR_WB", 6, "audio/amr-wb");
        h = new e("CODEC_AUDIO_MP3", 7, "audio/mpeg");
        i = new e("CODEC_AUDIO_AAC", 8, "audio/mp4a-latm");
        j = new e("CODEC_AUDIO_VORBIS", 9, "audio/vorbis");
        e ae[] = new e[10];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        ae[5] = f;
        ae[6] = g;
        ae[7] = h;
        ae[8] = i;
        ae[9] = j;
        l = ae;
    }
}
