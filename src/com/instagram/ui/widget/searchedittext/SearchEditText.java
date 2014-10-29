// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.searchedittext;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.instagram.ui.widget.searchedittext:
//            a, b

public class SearchEditText extends EditText
    implements android.widget.TextView.OnEditorActionListener
{

    private Drawable a[];
    private Drawable b;
    private b c;
    private InputMethodManager d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;

    public SearchEditText(Context context)
    {
        super(context);
        e = true;
        a();
    }

    public SearchEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = true;
        a();
    }

    public SearchEditText(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        e = true;
        a();
    }

    private static String a(Editable editable)
    {
        return editable.toString().trim();
    }

    private void a()
    {
        setOnEditorActionListener(this);
        a = getCompoundDrawables();
        b = a[2];
        setCompoundDrawables(a[0], a[1], null, a[3]);
        if (!d())
        {
            setOnLongClickListener(new a(this));
        }
        d = (InputMethodManager)getContext().getSystemService("input_method");
    }

    private static boolean b(int j)
    {
        return j == 23 || j == 66 || j == 160;
    }

    private static boolean d()
    {
        try
        {
            Class.forName("com.htc.textselection.HtcTextSelectionManager");
        }
        catch (Exception exception)
        {
            return true;
        }
        return false;
    }

    private boolean e()
    {
        return TextUtils.isEmpty(getSearchString());
    }

    private void f()
    {
        if (!g)
        {
            i = true;
            return;
        } else
        {
            requestFocus();
            return;
        }
    }

    protected boolean a(int j)
    {
        if (j == 4)
        {
            clearFocus();
            b();
            return true;
        } else
        {
            return false;
        }
    }

    public final void b()
    {
        d.hideSoftInputFromWindow(getWindowToken(), 0);
        h = false;
    }

    public final void c()
    {
        if (!g)
        {
            h = true;
            return;
        } else
        {
            d.showSoftInput(this, 0);
            return;
        }
    }

    public void clearFocus()
    {
        setFocusableInTouchMode(false);
        super.clearFocus();
        setFocusableInTouchMode(true);
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && keyevent.getKeyCode() == 4 && getSearchString().equals(""))
        {
            b();
        }
        return super.dispatchKeyEventPreIme(keyevent);
    }

    public String getSearchString()
    {
        return a(getText());
    }

    public CharSequence getStrippedText()
    {
        Editable editable = getText();
        char c1;
        if (!TextUtils.isEmpty(editable))
        {
            if ((c1 = editable.charAt(0)) == '@' || c1 == '#')
            {
                return editable.subSequence(1, editable.length());
            }
        }
        return editable;
    }

    public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
    {
        if (j == 6 || j == 3)
        {
            b();
            if (c != null)
            {
                c.a(getSearchString());
            }
            return true;
        } else
        {
            return false;
        }
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        if (!TextUtils.isEmpty(getText()) && keyevent.getAction() == 0 && b(j))
        {
            b();
            if (c != null)
            {
                c.a(getSearchString());
            }
        }
        return super.onKeyDown(j, keyevent);
    }

    public boolean onKeyPreIme(int j, KeyEvent keyevent)
    {
        return a(j) || super.onKeyPreIme(j, keyevent);
    }

    protected void onLayout(boolean flag, int j, int k, int l, int i1)
    {
        super.onLayout(flag, j, k, l, i1);
        g = true;
        if (i)
        {
            f();
            i = false;
        }
        if (h)
        {
            c();
            h = false;
        }
    }

    public boolean onPreDraw()
    {
        boolean flag = e();
        if (f == flag)
        {
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            f = flag1;
            if (f && e)
            {
                setCompoundDrawables(a[0], a[1], b, a[3]);
                return false;
            } else
            {
                setCompoundDrawables(a[0], a[1], null, a[3]);
                return false;
            }
        } else
        {
            return super.onPreDraw();
        }
    }

    public void onTextChanged(CharSequence charsequence, int j, int k, int l)
    {
        super.onTextChanged(charsequence, j, k, l);
        if (c != null)
        {
            c.a(this, charsequence);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (f && motionevent.getAction() == 1 && b != null && motionevent.getX() > (float)(getWidth() - getPaddingRight() - b.getIntrinsicWidth()))
        {
            setText("");
            requestFocus();
            c();
        }
        if (!d())
        {
            requestFocus();
            c();
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void setClearButtonAlpha(int j)
    {
        b.mutate().setAlpha(j);
    }

    public void setClearButtonColorFilter(ColorFilter colorfilter)
    {
        b.mutate().setColorFilter(colorfilter);
    }

    public void setClearButtonEnabled(boolean flag)
    {
        e = flag;
    }

    public void setOnFilterTextListener(b b1)
    {
        c = b1;
    }
}
