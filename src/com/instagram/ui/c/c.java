// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.c;

import android.content.Context;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import com.facebook.az;
import com.instagram.o.e;
import java.io.UnsupportedEncodingException;
import java.text.Normalizer;
import java.util.Locale;

public final class c
    implements InputFilter
{

    public static String a = "[^a-z0-9_.]";
    private final Context b;

    public c(Context context)
    {
        b = context;
    }

    private static String a(char c1)
    {
        String s;
        try
        {
            s = new String(Normalizer.normalize(String.valueOf(c1), java.text.Normalizer.Form.NFD).getBytes("ascii"), "ascii");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return String.valueOf(c1);
        }
        return s;
    }

    private static String a(String s)
    {
        return s.toLowerCase(Locale.ENGLISH).replace(" ", "_").replaceAll(a, "");
    }

    private static boolean b(char c1)
    {
        return c1 >= '0' && c1 <= '9' || c1 >= 'a' && c1 <= 'z' || c1 == '_' || c1 == '.';
    }

    public final CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(charsequence, i, j);
        if (charsequence instanceof Spanned)
        {
            TextUtils.copySpansFrom((Spanned)charsequence, i, j, java/lang/Object, spannablestringbuilder, 0);
        }
        int i1 = 0;
        boolean flag = false;
        int j1 = 0;
        while (i1 < j - i) 
        {
            char c1 = charsequence.charAt(i1 + i);
            if (!b(c1))
            {
                int k1 = i1 + j1;
                String s = a(a(c1));
                spannablestringbuilder.replace(k1, k1 + 1, s);
                j1 += -1 + s.length();
                if (flag || TextUtils.isEmpty(s))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
            i1++;
        }
        if (flag)
        {
            e.a(b.getString(az.invalid_username_character));
        }
        return spannablestringbuilder;
    }

}
