// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.text;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package com.instagram.ui.text:
//            b, a

public class FreightSansTextView extends TextView
{

    private static Typeface a;
    private static a b;

    public FreightSansTextView(Context context)
    {
        super(context);
        a();
    }

    public FreightSansTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public FreightSansTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        if (!com.instagram.ui.text.b.a(getContext()))
        {
            setTypeface(getCustomTypeface());
        } else
        {
            setTypeface(Typeface.DEFAULT_BOLD);
        }
        setTransformationMethod(getAllCapsTransformation());
    }

    private a getAllCapsTransformation()
    {
        if (b == null)
        {
            b = new a(getContext());
        }
        return b;
    }

    private Typeface getCustomTypeface()
    {
        if (a == null)
        {
            a = Typeface.createFromAsset(getContext().getAssets(), "FreigSanProSem.otf");
        }
        return a;
    }
}
