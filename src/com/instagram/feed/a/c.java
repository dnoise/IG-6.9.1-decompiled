// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.instagram.feed.f.d;
import com.instagram.feed.survey.MultiQuestionSurvey;
import com.instagram.feed.survey.j;

// Referenced classes of package com.instagram.feed.a:
//            i, e

public final class c extends i
{

    j a;
    MultiQuestionSurvey b;
    boolean c;
    e d;

    public c()
    {
    }

    protected final c b()
    {
        super.c();
        if (d != null)
        {
            if (d.a != null)
            {
                d.a.a(d.b);
            }
            if (d.b != null)
            {
                d.b.a(d.c);
            }
            if (d.c != null)
            {
                d.c.a(d.a);
            }
        }
        return this;
    }

    protected final i c()
    {
        return b();
    }

    public final e d()
    {
        return d;
    }

    public final j e()
    {
        return a;
    }

    public final MultiQuestionSurvey f()
    {
        return b;
    }
}
