// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.f;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.instagram.android.f:
//            c, b

public final class a
    implements TextWatcher
{

    public static Pattern a = Pattern.compile("\\s+\\Z", 8);
    public static Pattern b = Pattern.compile("\\A\\s+", 8);
    private EditText c;
    private int d;

    public a(EditText edittext)
    {
        this(edittext, c.c);
    }

    public a(EditText edittext, int i)
    {
        c = edittext;
        d = i;
    }

    private boolean a(CharSequence charsequence)
    {
        Matcher matcher = b.matcher(charsequence);
        boolean flag = matcher.find();
        boolean flag1 = false;
        if (flag)
        {
            int i = c.getSelectionStart() - matcher.group(0).length();
            c.setText(matcher.replaceFirst(""));
            c.setSelection(Math.max(i, 0));
            flag1 = true;
        }
        return flag1;
    }

    private boolean b(CharSequence charsequence)
    {
        Matcher matcher = a.matcher(charsequence);
        if (matcher.find())
        {
            int i = c.getSelectionStart();
            c.setText(matcher.replaceFirst(""));
            c.setSelection(Math.min(i, c.length()));
            return true;
        } else
        {
            return false;
        }
    }

    public final void afterTextChanged(Editable editable)
    {
        switch (b.a[-1 + d])
        {
        default:
            return;

        case 1: // '\001'
            if (a(editable))
            {
                b(c.getText());
                return;
            } else
            {
                b(editable);
                return;
            }

        case 2: // '\002'
            b(editable);
            return;

        case 3: // '\003'
            a(editable);
            return;
        }
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

}
