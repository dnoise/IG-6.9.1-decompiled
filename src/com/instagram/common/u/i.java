// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import android.app.Notification;
import android.content.SharedPreferences;
import java.util.List;
import java.util.Map;

public interface i
{

    public abstract Notification a(String s, List list);

    public abstract Notification a(Map map, String s);

    public abstract Object a(String s);

    public abstract String a();

    public abstract String a(Object obj);

    public abstract boolean a(int j);

    public abstract SharedPreferences b();
}
