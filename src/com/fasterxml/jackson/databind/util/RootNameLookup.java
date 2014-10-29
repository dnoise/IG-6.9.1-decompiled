// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.a.c.l;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.databind.util:
//            LRUMap

public class RootNameLookup
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected LRUMap _rootNames;

    public RootNameLookup()
    {
    }

    public l findRootName(JavaType javatype, MapperConfig mapperconfig)
    {
        return findRootName(javatype.getRawClass(), mapperconfig);
    }

    public l findRootName(Class class1, MapperConfig mapperconfig)
    {
        this;
        JVM INSTR monitorenter ;
        ClassKey classkey = new ClassKey(class1);
        if (_rootNames != null) goto _L2; else goto _L1
_L1:
        _rootNames = new LRUMap(20, 200);
_L7:
        PropertyName propertyname;
        BeanDescription beandescription = mapperconfig.introspectClassAnnotations(class1);
        propertyname = mapperconfig.getAnnotationIntrospector().findRootName(beandescription.getClassInfo());
        if (propertyname == null) goto _L4; else goto _L3
_L3:
        if (propertyname.hasSimpleName()) goto _L5; else goto _L4
_L4:
        String s = class1.getSimpleName();
_L8:
        l l1;
        l1 = new l(s);
        _rootNames.put(classkey, l1);
_L6:
        this;
        JVM INSTR monitorexit ;
        return l1;
_L2:
        l1 = (l)_rootNames.get(classkey);
        if (l1 == null) goto _L7; else goto _L6
_L5:
        String s1 = propertyname.getSimpleName();
        s = s1;
          goto _L8
        Exception exception;
        exception;
        throw exception;
    }
}
