// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.net.Uri;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            a, c, b

public final class e extends a
    implements c
{

    private int i;

    public e(b b, ContentResolver contentresolver, long l, int j, Uri uri, String s, 
            long l1, String s1, long l2, String s2, int k)
    {
        super(b, contentresolver, l, j, uri, s, l1, s1, l2, s2);
        i = k;
    }

    public final int c()
    {
        return i;
    }
}
