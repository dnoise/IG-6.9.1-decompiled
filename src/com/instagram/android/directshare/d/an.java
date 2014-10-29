// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import com.instagram.android.directshare.widget.RecipientView;
import java.util.List;

final class an
{

    private RecipientView a;
    private List b;

    private an()
    {
    }

    an(byte byte0)
    {
        this();
    }

    static RecipientView a(an an1)
    {
        return an1.a;
    }

    static RecipientView a(an an1, RecipientView recipientview)
    {
        an1.a = recipientview;
        return recipientview;
    }

    static List a(an an1, List list)
    {
        an1.b = list;
        return list;
    }

    static List b(an an1)
    {
        return an1.b;
    }
}
