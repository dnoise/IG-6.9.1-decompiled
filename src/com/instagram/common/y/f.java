// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;

public final class f
{

    public static float a(DisplayMetrics displaymetrics)
    {
        return (float)displaymetrics.heightPixels / (float)displaymetrics.widthPixels;
    }

    public static float a(DisplayMetrics displaymetrics, float f1)
    {
        return TypedValue.applyDimension(1, f1, displaymetrics);
    }

    public static float a(DisplayMetrics displaymetrics, int i)
    {
        return TypedValue.applyDimension(1, i, displaymetrics);
    }

    public static int a(Context context)
    {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static Spannable a(String s)
    {
        return a(s, new StyleSpan(1));
    }

    private static Spannable a(String s, StyleSpan stylespan)
    {
        SpannableString spannablestring = new SpannableString(s);
        spannablestring.setSpan(stylespan, 0, s.length(), 0);
        return spannablestring;
    }

    public static void a(Context context, View view)
    {
        ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void a(View view, int i)
    {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    public static int b(Context context)
    {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static void b(Context context, View view)
    {
        ((InputMethodManager)context.getSystemService("input_method")).showSoftInput(view, 0x2000000);
    }

    public static void b(View view, int i)
    {
        view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), view.getPaddingBottom());
    }

    public static DisplayMetrics c(Context context)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics;
    }

    public static void c(View view, int i)
    {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), i, view.getPaddingBottom());
    }

    public static void d(View view, int i)
    {
        view.setPadding(i, view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
    }

    public static boolean d(Context context)
    {
        return (0xf & context.getResources().getConfiguration().screenLayout) == 1;
    }

    public static boolean e(Context context)
    {
        return context.getResources().getConfiguration().orientation == 1;
    }
}
