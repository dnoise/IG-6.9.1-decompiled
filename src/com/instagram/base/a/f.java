// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a;

import android.support.v4.app.Fragment;
import android.widget.ListView;

// Referenced classes of package com.instagram.base.a:
//            g

public final class f
{

    public static void a(Fragment fragment, ListView listview, android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        listview.smoothScrollToPosition(0);
        listview.postDelayed(new g(fragment, listview, onscrolllistener), 100L);
    }
}
