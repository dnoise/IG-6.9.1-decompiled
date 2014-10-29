// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.databind.util:
//            ViewMatcher

final class _views extends ViewMatcher
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    private final Class _views[];

    public final boolean isVisibleForView(Class class1)
    {
        int i = _views.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    Class class2 = _views[j];
                    if (class1 != class2 && !class2.isAssignableFrom(class1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public (Class aclass[])
    {
        _views = aclass;
    }
}
