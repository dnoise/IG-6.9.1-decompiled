// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import com.facebook.au;
import com.facebook.az;

public final class s extends Enum
{

    public static final s a;
    public static final s b;
    public static final s c;
    public static final s d;
    public static final s e;
    public static final s f;
    private static final s j[];
    private int g;
    private int h;
    private int i;

    private s(String s1, int k, int l, int i1, int j1)
    {
        super(s1, k);
        g = l;
        h = i1;
        i = j1;
    }

    static int a(s s1)
    {
        return s1.g;
    }

    static int b(s s1)
    {
        return s1.h;
    }

    static int c(s s1)
    {
        return s1.i;
    }

    public static s valueOf(String s1)
    {
        return (s)Enum.valueOf(com/instagram/creation/video/ui/s, s1);
    }

    public static s[] values()
    {
        return (s[])j.clone();
    }

    static 
    {
        a = new s("TAP_TO_RECORD", 0, au.nux_bottom_center, az.video_press_and_hold, 0);
        b = new s("MIN_VIDEO_LENGTH", 1, au.nux_bottom_left, az.video_minimum_warning, 0);
        c = new s("MIN_VIDEO_LENGTH_TRIM", 2, au.nux_bottom_left, az.video_import_minimum_warning, 0);
        d = new s("TAP_TO_CONTINUE", 3, au.nux_top_right, az.video_tap_to_continue, 0);
        e = new s("TRIMMED_VIDEO_ABOVE", 4, au.nux_bottom_center, az.trimmed_video_nux_video_length, az.trimmed_video_nux_tap_to_trim);
        f = new s("TRIMMED_VIDEO_BELOW", 5, au.nux_top_center, az.trimmed_video_nux_video_length, az.trimmed_video_nux_tap_to_trim);
        s as[] = new s[6];
        as[0] = a;
        as[1] = b;
        as[2] = c;
        as[3] = d;
        as[4] = e;
        as[5] = f;
        j = as;
    }
}
