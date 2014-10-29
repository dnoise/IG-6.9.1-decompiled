// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import com.facebook.e.a.a;
import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.creation.b.a.b;
import java.io.File;

public final class e extends c
{

    private final b a;

    public e(b b1)
    {
        a = b1;
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    public final void a(com.instagram.common.a.c.b b1)
    {
        File file = new File(a.k());
        b1.a("photo", file, "file");
        if (!file.exists())
        {
            com.facebook.e.a.a.a("UploadImageRequest", "Pending Media image file not found.");
        }
        b1.a("upload_id", a.b());
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        return "upload/photo/";
    }
}
