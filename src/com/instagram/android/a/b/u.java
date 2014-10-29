// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.c;

// Referenced classes of package com.instagram.android.a.b:
//            v

public final class u
    implements c
{

    b a;
    ImageView b;
    ImageView c;
    View d;
    View e;
    ProgressBar f;
    TextView g;
    CircularImageView h;
    View i;
    View j;

    public u()
    {
    }

    public final void a(b b1)
    {
        f.post(new v(this, b1));
    }
}
