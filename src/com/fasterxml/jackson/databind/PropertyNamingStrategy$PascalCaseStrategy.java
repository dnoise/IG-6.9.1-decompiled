// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;


public class egyBase extends egyBase
{

    public String translate(String s)
    {
        char c;
        if (s != null && s.length() != 0)
        {
            if (!Character.isUpperCase(c = s.charAt(0)))
            {
                StringBuilder stringbuilder = new StringBuilder(s);
                stringbuilder.setCharAt(0, Character.toUpperCase(c));
                return stringbuilder.toString();
            }
        }
        return s;
    }

    public egyBase()
    {
    }
}
