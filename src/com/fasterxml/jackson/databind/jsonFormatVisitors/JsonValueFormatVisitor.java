// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonValueFormat

public interface JsonValueFormatVisitor
{

    public abstract void enumTypes(Set set);

    public abstract void format(JsonValueFormat jsonvalueformat);
}
