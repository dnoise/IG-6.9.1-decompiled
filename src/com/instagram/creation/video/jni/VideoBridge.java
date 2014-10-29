// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.jni;

import com.facebook.k.a;
import java.nio.ByteBuffer;

public class VideoBridge
{

    public static native int compileProgram(String s);

    public static native int configureAACTrack(int i, int j);

    public static native int configureVideoCodec(String s, int i, int j);

    public static native int configureVorbisEncoder(String s, int i, int j, double d);

    public static native int encodeAudioBuffer(ByteBuffer bytebuffer, int i);

    public static native int encodeFrame(long l, long l1);

    public static native int finishEncoding();

    public static native int finishEncodingAudio();

    public static native int writeAudioPacket(ByteBuffer bytebuffer, int i, long l);

    static 
    {
        a.a("log");
        a.a("vpx");
        a.a("ogg");
        a.a("vorbis");
        a.a("scrambler");
        a.a("glcommon");
        a.a("video");
    }
}
