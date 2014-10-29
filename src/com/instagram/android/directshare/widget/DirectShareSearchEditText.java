// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import com.instagram.ui.c.a;
import com.instagram.ui.c.b;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import java.lang.reflect.Field;

// Referenced classes of package com.instagram.android.directshare.widget:
//            g, f

public class DirectShareSearchEditText extends SearchEditText
    implements b
{

    private g a;

    public DirectShareSearchEditText(Context context)
    {
        super(context);
    }

    public DirectShareSearchEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public DirectShareSearchEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private boolean d()
    {
        String s;
        InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
        Field field = android/view/inputmethod/InputMethodManager.getDeclaredField("mCurId");
        field.setAccessible(true);
        s = (String)field.get(inputmethodmanager);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        boolean flag = s.startsWith("com.google.");
        if (flag)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_61;
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
_L2:
        return false;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void a()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public boolean onCheckIsTextEditor()
    {
        return true;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        if (!d())
        {
            editorinfo.inputType = 0;
            if (!onCheckIsTextEditor())
            {
                return null;
            } else
            {
                return new a(new f(this, this), this);
            }
        } else
        {
            return super.onCreateInputConnection(editorinfo);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 67 && a != null)
        {
            a.a();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void setOnDeleteKeyListener(g g1)
    {
        a = g1;
    }
}
