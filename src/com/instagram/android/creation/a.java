// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.instagram.android.widget.IgAutoCompleteTextView;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;
import com.instagram.creation.b.a.b;

// Referenced classes of package com.instagram.android.creation:
//            b, c

public final class a
{

    private IgAutoCompleteTextView a;
    private b b;
    private View c;
    private Fragment d;

    public a(b b1, View view, Fragment fragment)
    {
        b = b1;
        c = view;
        d = fragment;
    }

    static Fragment a(a a1)
    {
        return a1.d;
    }

    public static String a(View view)
    {
        return ((IgAutoCompleteTextView)view.findViewById(av.caption_text_view)).getText().toString();
    }

    public static void a(View view, String s)
    {
        IgAutoCompleteTextView igautocompletetextview = (IgAutoCompleteTextView)view.findViewById(av.caption_text_view);
        igautocompletetextview.setText(s);
        igautocompletetextview.setSelection(s.length());
    }

    static b b(a a1)
    {
        return a1.b;
    }

    public static void b(View view)
    {
        ((TextView)view.findViewById(av.caption_text_view)).requestFocus();
    }

    public final void a()
    {
        ConstrainedImageView constrainedimageview;
        a = (IgAutoCompleteTextView)c.findViewById(av.caption_text_view);
        int i = d.o().getDimensionPixelSize(at.metadata_imageview_size);
        android.graphics.Bitmap bitmap = com.instagram.o.c.a.a(b.k(), i, i);
        constrainedimageview = (ConstrainedImageView)c.findViewById(av.metadata_imageview);
        constrainedimageview.setImageBitmapAsLoaded(bitmap);
        if (b.n() != com.instagram.model.a.a.a) goto _L2; else goto _L1
_L1:
        constrainedimageview.setOnClickListener(new com.instagram.android.creation.b(this));
_L4:
        if (b.m() != null)
        {
            a.setText(b.m());
        }
        a.setAdapter(new com.instagram.android.a.a(d.n()));
        return;
_L2:
        if (b.O())
        {
            c.findViewById(av.caption_video_overlay).setVisibility(0);
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                constrainedimageview.setOnClickListener(new c(this));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final String b()
    {
        return a.getText().toString();
    }
}
