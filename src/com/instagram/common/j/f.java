// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.j;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Queue;

final class f
{

    private static final Queue a = new ArrayDeque();

    static ArrayList a(Collection collection)
    {
        com/instagram/common/j/f;
        JVM INSTR monitorenter ;
        if (collection.size() <= 8) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList(collection);
_L4:
        com/instagram/common/j/f;
        JVM INSTR monitorexit ;
        return arraylist;
_L2:
        if (!a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        arraylist = new ArrayList(8);
_L3:
        if (!arraylist.isEmpty())
        {
            throw new IllegalStateException("recycled list has entries");
        }
        break MISSING_BLOCK_LABEL_87;
        Exception exception;
        exception;
        com/instagram/common/j/f;
        JVM INSTR monitorexit ;
        throw exception;
        arraylist = (ArrayList)a.remove();
          goto _L3
        arraylist.addAll(collection);
          goto _L4
    }

    static void a(ArrayList arraylist)
    {
        com/instagram/common/j/f;
        JVM INSTR monitorenter ;
        if (arraylist.size() <= 8 && a.size() < 32)
        {
            arraylist.clear();
            a.add(arraylist);
        }
        com/instagram/common/j/f;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
