// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.instagram.android.widget.IgAutoCompleteTextView;

// Referenced classes of package com.instagram.android.feed.comments.ui:
//            a, b

public class CommentAutoCompleteTextView extends IgAutoCompleteTextView
{

    private a a;
    private b b;

    public CommentAutoCompleteTextView(Context context)
    {
        super(context);
    }

    public CommentAutoCompleteTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CommentAutoCompleteTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        InputConnection inputconnection = super.onCreateInputConnection(editorinfo);
        int i = 0xff & editorinfo.imeOptions;
        if ((i & 4) != 0)
        {
            editorinfo.imeOptions = i ^ editorinfo.imeOptions;
            editorinfo.imeOptions = 4 | editorinfo.imeOptions;
        }
        if ((0x40000000 & editorinfo.imeOptions) != 0)
        {
            editorinfo.imeOptions = 0xbfffffff & editorinfo.imeOptions;
        }
        return inputconnection;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getAction() == 1)
        {
            if (a != null)
            {
                a.a();
            }
            return false;
        } else
        {
            return super.onKeyPreIme(i, keyevent);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (flag && b != null)
        {
            b.a();
        }
        super.onLayout(flag, i, j, k, l);
    }

    public void setBackButtonListener(a a1)
    {
        a = a1;
    }

    public void setSimpleChangedLayoutListener(b b1)
    {
        b = b1;
    }
}
