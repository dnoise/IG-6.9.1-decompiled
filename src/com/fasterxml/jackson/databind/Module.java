// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;

public abstract class Module
    implements x
{

    public Module()
    {
    }

    public abstract String getModuleName();

    public abstract void setupModule(SetupContext setupcontext);

    public abstract w version();
}
