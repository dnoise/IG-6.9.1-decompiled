// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.instagram.android.login.fragment:
//            ci

final class cn
    implements TextWatcher
{

    final ci a;
    private boolean b;

    private cn(ci ci1)
    {
        a = ci1;
        super();
    }

    cn(ci ci1, byte byte0)
    {
        this(ci1);
    }

    private static String a(CharSequence charsequence)
    {
        return charsequence.toString().replace(" ", "");
    }

    public final void afterTextChanged(Editable editable)
    {
        ci.e(a).removeTextChangedListener(this);
        String s = a(editable);
        String s1;
        if (s.length() == 4)
        {
            s1 = (new StringBuilder()).append(editable.toString().substring(0, -1 + editable.length())).append("    ").append(editable.toString().substring(-1 + editable.length(), editable.length())).toString();
        } else
        {
            s1 = s;
        }
        if (!b && s.length() != 1 && s.length() != 4)
        {
            s1 = (new StringBuilder()).append(editable.toString().substring(0, -1 + editable.length())).append(" ").append(editable.toString().substring(-1 + editable.length(), editable.length())).toString();
        }
        if (b)
        {
            if (s.length() == 3)
            {
                s1 = editable.toString().substring(0, -4 + editable.length());
            } else
            if (s.length() == 0)
            {
                s1 = "";
            } else
            {
                s1 = editable.toString().substring(0, -1 + editable.length());
            }
        }
        editable.replace(0, editable.length(), s1);
        b = false;
        ci.e(a).addTextChangedListener(this);
        ci.f(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (k < j)
        {
            b = true;
        }
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
