// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.android.a.b:
//            b

public final class a
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_autocomplete_hashtag, null);
        b b1 = new b();
        b.a(b1, (TextView)view.findViewById(av.row_hashtag_textview_tag_name));
        b.b(b1, (TextView)view.findViewById(av.row_hashtag_textview_media_count));
        view.setTag(b1);
        return view;
    }

    public static void a(b b1, String s)
    {
        b.a(b1).setText(String.format("#%s", new Object[] {
            s
        }));
        b.b(b1).setVisibility(8);
    }
}
