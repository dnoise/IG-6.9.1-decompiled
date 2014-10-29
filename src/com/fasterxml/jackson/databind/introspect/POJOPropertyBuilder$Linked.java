// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;


final class isMarkedIgnored
{

    public final String explicitName;
    public final boolean isMarkedIgnored;
    public final boolean isVisible;
    public final withNext next;
    public final Object value;

    private isMarkedIgnored append(isMarkedIgnored ismarkedignored)
    {
        if (next == null)
        {
            return withNext(ismarkedignored);
        } else
        {
            return withNext(next.append(ismarkedignored));
        }
    }

    public final String toString()
    {
        String s = (new StringBuilder()).append(value.toString()).append("[visible=").append(isVisible).append("]").toString();
        if (next != null)
        {
            s = (new StringBuilder()).append(s).append(", ").append(next.toString()).toString();
        }
        return s;
    }

    public final toString trimByVisibility()
    {
        if (next == null)
        {
            return this;
        }
        toString tostring = next.trimByVisibility();
        if (explicitName != null)
        {
            if (tostring.explicitName == null)
            {
                return withNext(null);
            } else
            {
                return withNext(tostring);
            }
        }
        if (tostring.explicitName != null)
        {
            return tostring;
        }
        if (isVisible == tostring.isVisible)
        {
            return withNext(tostring);
        }
        if (isVisible)
        {
            return withNext(null);
        } else
        {
            return tostring;
        }
    }

    public final withNext withNext(withNext withnext)
    {
        if (withnext == next)
        {
            return this;
        } else
        {
            return new <init>(value, withnext, explicitName, isVisible, isMarkedIgnored);
        }
    }

    public final isMarkedIgnored withValue(Object obj)
    {
        if (obj == value)
        {
            return this;
        } else
        {
            return new <init>(obj, next, explicitName, isVisible, isMarkedIgnored);
        }
    }

    public final isMarkedIgnored withoutIgnored()
    {
        if (!isMarkedIgnored) goto _L2; else goto _L1
_L1:
        if (next != null) goto _L4; else goto _L3
_L3:
        this = null;
_L6:
        return this;
_L4:
        return next.withoutIgnored();
_L2:
        if (next != null)
        {
            isMarkedIgnored ismarkedignored = next.withoutIgnored();
            if (ismarkedignored != next)
            {
                return withNext(ismarkedignored);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final withNext withoutNonVisible()
    {
        withNext withnext;
        if (next == null)
        {
            withnext = null;
        } else
        {
            withnext = next.withoutNonVisible();
        }
        if (isVisible)
        {
            withnext = withNext(withnext);
        }
        return withnext;
    }


    public (Object obj,  , String s, boolean flag, boolean flag1)
    {
        value = obj;
        next = ;
         1;
        if (s == null)
        {
            s = null;
            1 = this;
        } else
        if (s.length() == 0)
        {
            1 = this;
            s = null;
        } else
        {
            1 = this;
        }
        1.explicitName = s;
        isVisible = flag;
        isMarkedIgnored = flag1;
    }
}
