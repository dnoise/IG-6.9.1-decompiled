// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.Serializable;

final class index
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    public final int index;
    public final String key;
    public final index next;
    public final SettableBeanProperty value;

    public ( , String s, SettableBeanProperty settablebeanproperty, int i)
    {
        next = ;
        key = s;
        value = settablebeanproperty;
        index = i;
    }
}
