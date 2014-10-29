// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.aw;
import com.instagram.base.a.a.a;
import com.instagram.base.a.b;
import com.instagram.creation.b.a.e;

// Referenced classes of package com.instagram.android.creation.a:
//            ay, az

public final class ax extends b
{

    private com.instagram.creation.b.a.b a;

    public ax()
    {
    }

    static Bitmap a(com.instagram.creation.b.a.b b1, int i)
    {
        return b(b1, i);
    }

    static com.instagram.creation.b.a.b a(ax ax1)
    {
        return ax1.a;
    }

    static com.instagram.creation.b.a.b a(ax ax1, com.instagram.creation.b.a.b b1)
    {
        ax1.a = b1;
        return b1;
    }

    public static void a(s s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("pendingMediaKey", s1);
        (new a(s)).a(new ax(), bundle).a();
    }

    private static Bitmap b(com.instagram.creation.b.a.b b1, int i)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inSampleSize = com.instagram.o.c.a.b(b1.k(), i, i);
        options.inPurgeable = true;
        options.inInputShareable = true;
        return BitmapFactory.decodeFile(b1.k(), options);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_thumbnail_photo_preview, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ((e)l()).a(new ay(this));
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ((e)l()).a(new az(this, view));
    }

    public final String j_()
    {
        return "metadata_thumbnail_preview";
    }
}
