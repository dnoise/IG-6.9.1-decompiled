// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.b;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.service.b:
//            b

public final class a extends ObjectMapper
{

    private static a a;

    private a()
    {
        configure(MapperFeature.AUTO_DETECT_FIELDS, false);
        configure(MapperFeature.AUTO_DETECT_SETTERS, false);
        configure(MapperFeature.USE_ANNOTATIONS, false);
        configure(MapperFeature.AUTO_DETECT_CREATORS, false);
        configure(MapperFeature.USE_GETTERS_AS_SETTERS, false);
        configure(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS, false);
        configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        SimpleModule simplemodule = new SimpleModule("MediaModule", new w());
        simplemodule.addValueInstantiator(com/instagram/user/c/a, new b(this, this, com/instagram/user/c/a, j.a()));
        registerModule(simplemodule);
    }

    public static a a()
    {
        if (a == null)
        {
            b();
        }
        return a;
    }

    private static void b()
    {
        com/instagram/service/b/a;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new a();
        }
        com/instagram/service/b/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
