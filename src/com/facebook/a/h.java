// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import java.util.Locale;

final class h
{

    protected static String a(Context context)
    {
        StringBuilder stringbuilder = new StringBuilder();
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        activitymanager.getMemoryInfo(memoryinfo);
        android.os.Debug.MemoryInfo memoryinfo1 = new android.os.Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryinfo1);
        int i = activitymanager.getMemoryClass();
        int j = (int)(100F * ((float)(memoryinfo1.nativePrivateDirty + memoryinfo1.dalvikPrivateDirty) / (1024F * (float)i)));
        int k = (int)((float)(100 * memoryinfo1.nativePrivateDirty) / (1024F * (float)i));
        int l = (int)((float)(100 * (memoryinfo1.nativePrivateDirty + memoryinfo1.dalvikPrivateDirty + memoryinfo1.otherPrivateDirty)) / (1024F * (float)i));
        int i1 = (int)((float)(100 * memoryinfo1.otherPrivateDirty) / (1024F * (float)i));
        Locale locale = Locale.US;
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(j);
        aobj[1] = Integer.valueOf(k);
        aobj[2] = Integer.valueOf(l);
        aobj[3] = Integer.valueOf(i1);
        stringbuilder.append(String.format(locale, "percent dalvik+native / native / d+n+other / other %d / %d / %d / %d", aobj));
        stringbuilder.append((new StringBuilder("avail/thresh/low? ")).append(memoryinfo.availMem).append("/").append(memoryinfo.threshold).append("/").append(memoryinfo.lowMemory).append("/(").append((int)((float)(100L * memoryinfo.threshold) / (float)memoryinfo.availMem)).append("%) memclass=").append(i).toString());
        stringbuilder.append("DebugMemInfo(kB): Private / Proportional / Shared");
        Locale locale1 = Locale.US;
        Object aobj1[] = new Object[3];
        aobj1[0] = Integer.valueOf(memoryinfo1.dalvikPrivateDirty);
        aobj1[1] = Integer.valueOf(memoryinfo1.dalvikPss);
        aobj1[2] = Integer.valueOf(memoryinfo1.dalvikSharedDirty);
        stringbuilder.append(String.format(locale1, "          dalvik: %7d / %7d / %7d", aobj1));
        Locale locale2 = Locale.US;
        Object aobj2[] = new Object[3];
        aobj2[0] = Integer.valueOf(memoryinfo1.dalvikPrivateDirty);
        aobj2[1] = Integer.valueOf(memoryinfo1.nativePss);
        aobj2[2] = Integer.valueOf(memoryinfo1.nativeSharedDirty);
        stringbuilder.append(String.format(locale2, "          native: %7d / %7d / %7d", aobj2));
        Locale locale3 = Locale.US;
        Object aobj3[] = new Object[3];
        aobj3[0] = Integer.valueOf(memoryinfo1.otherPrivateDirty);
        aobj3[1] = Integer.valueOf(memoryinfo1.otherPss);
        aobj3[2] = Integer.valueOf(memoryinfo1.otherSharedDirty);
        stringbuilder.append(String.format(locale3, "           other: %7d / %7d / %7d", aobj3));
        Locale locale4 = Locale.US;
        Object aobj4[] = new Object[3];
        aobj4[0] = Integer.valueOf(Debug.getGlobalGcInvocationCount());
        aobj4[1] = Integer.valueOf(Debug.getGlobalFreedSize());
        aobj4[2] = Integer.valueOf(Debug.getGlobalFreedCount());
        stringbuilder.append(String.format(locale4, "GC: %d GCs, %d freed, %d free count", aobj4));
        Locale locale5 = Locale.US;
        Object aobj5[] = new Object[3];
        aobj5[0] = Long.valueOf(Debug.getNativeHeapSize());
        aobj5[1] = Long.valueOf(Debug.getNativeHeapAllocatedSize());
        aobj5[2] = Long.valueOf(Debug.getNativeHeapFreeSize());
        stringbuilder.append(String.format(locale5, "Native Heap: size/allocated/free %7d / %7d / %7d", aobj5));
        Locale locale6 = Locale.US;
        Object aobj6[] = new Object[4];
        aobj6[0] = Integer.valueOf(Debug.getThreadAllocCount());
        aobj6[1] = Integer.valueOf(Debug.getThreadAllocSize());
        aobj6[2] = Integer.valueOf(Debug.getThreadExternalAllocCount());
        aobj6[3] = Integer.valueOf(Debug.getThreadExternalAllocSize());
        stringbuilder.append(String.format(locale6, "Threads: alloc count/alloc size/ext ac/ext as %7d / %7d / %7d / %7d", aobj6));
        Runtime runtime = Runtime.getRuntime();
        Locale locale7 = Locale.US;
        Object aobj7[] = new Object[3];
        aobj7[0] = Long.valueOf(runtime.maxMemory());
        aobj7[1] = Long.valueOf(runtime.totalMemory() - runtime.freeMemory());
        aobj7[2] = Long.valueOf(runtime.freeMemory());
        stringbuilder.append(String.format(locale7, "Java Heap: size/allocated/free %7d / %7d / %7d", aobj7));
        return stringbuilder.toString();
    }

    protected static String b(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            StringBuilder stringbuilder = new StringBuilder();
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            stringbuilder.append((new StringBuilder("Large heap size =")).append(activitymanager.getLargeMemoryClass()).toString());
            return stringbuilder.toString();
        } else
        {
            return "";
        }
    }
}
