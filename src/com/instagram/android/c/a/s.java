// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.service.a.a;

// Referenced classes of package com.instagram.android.c.a:
//            b

public final class s extends b
{

    public s(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, a1);
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        String s1;
        if (!a.equals(a.a().b().g()))
        {
            s1 = (new StringBuilder("?user_id=")).append(a).toString();
        } else
        {
            s1 = "";
        }
        aobj[0] = s1;
        return String.format("maps/review_media/%s", aobj);
    }
}
