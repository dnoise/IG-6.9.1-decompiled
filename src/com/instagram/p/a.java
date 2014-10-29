// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.p;

import com.instagram.common.analytics.b;

public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    public static final a e;
    public static final a f;
    public static final a g;
    public static final a h;
    public static final a i;
    public static final a j;
    public static final a k;
    public static final a l;
    public static final a m;
    public static final a n;
    public static final a o;
    public static final a p;
    public static final a q;
    public static final a r;
    private static final a t[];
    private final String s;

    private a(String s1, int i1, String s2)
    {
        super(s1, i1);
        s = s2;
    }

    public static void a()
    {
        d().a();
    }

    private static com.instagram.common.aa.a d()
    {
        return com.instagram.common.aa.a.a("capture_flow");
    }

    public static a valueOf(String s1)
    {
        return (a)Enum.valueOf(com/instagram/p/a, s1);
    }

    public static a[] values()
    {
        return (a[])t.clone();
    }

    public final b b()
    {
        return d().b(s);
    }

    public final void c()
    {
        b().a();
    }

    static 
    {
        a = new a("StartCamera", 0, "start_camera");
        b = new a("StartShare", 1, "share_media");
        c = new a("UploadMedia", 2, "media_upload");
        d = new a("FilterInfo", 3, "filter_finished");
        e = new a("UploadSuccess", 4, "share_successful");
        f = new a("CaptureFlowCanceled", 5, "capture_flow_canceled");
        g = new a("OpenPhotoGallery", 6, "open_photo_gallery");
        h = new a("BuiltInCamera", 7, "built_in_camera");
        i = new a("ShareIntentPhotoImport", 8, "share_intent_photo_import");
        j = new a("CropPhoto", 9, "crop_photo");
        k = new a("CropFinished", 10, "crop_finished");
        l = new a("FilterPhoto", 11, "filter_photo");
        m = new a("FilterPhotoError", 12, "filter_photo_error");
        n = new a("BuiltInVideo", 13, "built_in_video");
        o = new a("OpenVideoGallery", 14, "open_video_gallery");
        p = new a("ShareIntentVideoImport", 15, "share_intent_video_import");
        q = new a("FilterVideo", 16, "filter_video");
        r = new a("ChooseVideoCover", 17, "choose_video_cover");
        a aa[] = new a[18];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        aa[3] = d;
        aa[4] = e;
        aa[5] = f;
        aa[6] = g;
        aa[7] = h;
        aa[8] = i;
        aa[9] = j;
        aa[10] = k;
        aa[11] = l;
        aa[12] = m;
        aa[13] = n;
        aa[14] = o;
        aa[15] = p;
        aa[16] = q;
        aa[17] = r;
        t = aa;
    }
}
