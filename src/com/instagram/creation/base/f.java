// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base;

import android.content.Context;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.instagram.creation.base:
//            g

public final class f
{

    public static void a(Context context, String s, String s1)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(s);
        a(context, ((Queue) (linkedlist)), s1);
    }

    private static void a(Context context, Queue queue, String s)
    {
        (new g(queue, s)).a(context);
    }
}
