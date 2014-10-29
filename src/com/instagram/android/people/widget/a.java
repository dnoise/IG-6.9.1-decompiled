// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import com.android.internal.util.Predicate;
import com.instagram.android.a.a.b;
import com.instagram.user.userservice.a.i;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.people.widget:
//            b, d

public final class a extends b
{

    private final d a;
    private final com.instagram.model.people.b b;
    private final Predicate c = new com.instagram.android.people.widget.b(this);

    public a(d d1, com.instagram.model.people.b b1)
    {
        a = d1;
        b = b1;
    }

    static com.instagram.model.people.b a(a a1)
    {
        return a1.b;
    }

    protected final Set a(CharSequence charsequence, Predicate predicate)
    {
        Set set = super.a(charsequence, c);
        com.instagram.user.c.a aa[] = new com.instagram.user.c.a[1];
        aa[0] = com.instagram.service.a.a.a().b();
        i.a(charsequence, set, Arrays.asList(aa), c);
        return set;
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        if (filterresults != null)
        {
            a.c((List)filterresults.values);
        }
    }
}
