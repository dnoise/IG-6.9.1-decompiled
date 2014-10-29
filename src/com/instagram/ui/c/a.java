// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.c;

import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

// Referenced classes of package com.instagram.ui.c:
//            b

public final class a extends InputConnectionWrapper
{

    private final b a;

    public a(InputConnection inputconnection, b b1)
    {
        super(inputconnection, false);
        a = b1;
    }

    public final boolean deleteSurroundingText(int i, int j)
    {
        a.a();
        return super.deleteSurroundingText(i, j);
    }
}
