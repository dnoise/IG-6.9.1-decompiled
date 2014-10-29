// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.net.Uri;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            d, o, c

public final class n
    implements d
{

    private c a;
    private Uri b;

    public n(ContentResolver contentresolver, Uri uri)
    {
        b = uri;
        a = new o(this, contentresolver, uri);
    }

    public final c a(int i)
    {
        if (i == 0)
        {
            return a;
        } else
        {
            return null;
        }
    }

    public final c a(Uri uri)
    {
        if (uri.equals(b))
        {
            return a;
        } else
        {
            return null;
        }
    }

    public final void a()
    {
        a = null;
        b = null;
    }

    public final int b()
    {
        return 1;
    }
}
