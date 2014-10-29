// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import android.widget.ListAdapter;
import com.facebook.at;

public class IgAutoCompleteTextView extends AutoCompleteTextView
{

    private static final Class a = com/instagram/android/widget/IgAutoCompleteTextView;
    private float b;
    private int c;

    public IgAutoCompleteTextView(Context context)
    {
        super(context);
        a();
    }

    public IgAutoCompleteTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public IgAutoCompleteTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private int a(Editable editable)
    {
        for (int i = -1 + getSelectionEnd(); i >= 0; i--)
        {
            if (editable.charAt(i) == '@' || editable.charAt(i) == '#')
            {
                return i;
            }
        }

        return 0;
    }

    private void a()
    {
        if (Build.MODEL.equalsIgnoreCase("DROID3") || Build.MODEL.equalsIgnoreCase("DROID4") || Build.MODEL.equalsIgnoreCase("DROID BIONIC"))
        {
            return;
        } else
        {
            b = 0.0F;
            c = getResources().getDimensionPixelSize(at.autocomplete_list_item_height);
            setRawInputType(0xfffeffff & getInputType());
            return;
        }
    }

    private static boolean a(int i)
    {
        return i < 128 && Character.isLetterOrDigit(i);
    }

    public boolean enoughToFilter()
    {
        Editable editable;
        editable = getText();
        break MISSING_BLOCK_LABEL_5;
        if (editable.length() > 1 && (getSelectionEnd() == 0 || !Character.isWhitespace(editable.charAt(-1 + getSelectionEnd()))))
        {
            int i = -1 + getSelectionEnd();
            while (i >= 0) 
            {
                if ((editable.charAt(i) == '@' || editable.charAt(i) == '#') && (i == 0 || !a(editable.charAt(i - 1))))
                {
                    return true;
                }
                i--;
            }
        }
        return false;
    }

    public void onFilterComplete(int i)
    {
label0:
        {
            super.onFilterComplete(i);
            if (b > 0.0F)
            {
                if ((float)getAdapter().getCount() > b)
                {
                    break label0;
                }
                setDropDownHeight(-2);
            }
            return;
        }
        setDropDownHeight((int)(b * (float)c));
    }

    protected void performFiltering(CharSequence charsequence, int i)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = -1 + getSelectionEnd();
        if (j < charsequence.length())
        {
            do
            {
                if (j < 0)
                {
                    break;
                }
                stringbuilder.append(charsequence.charAt(j));
                if (charsequence.charAt(j) == '@' || charsequence.charAt(j) == '#')
                {
                    break;
                }
                j--;
            } while (true);
        } else
        {
            Class _tmp = a;
            Integer.valueOf(j);
            Integer.valueOf(charsequence.length());
        }
        super.performFiltering(stringbuilder.reverse().toString(), i);
    }

    protected void replaceText(CharSequence charsequence)
    {
        Editable editable = getText();
        StringBuilder stringbuilder = new StringBuilder(editable.length());
        int i = a(editable);
        stringbuilder.append(editable).delete(i, getSelectionEnd());
        if (getSelectionEnd() == editable.length() || !Character.isWhitespace(editable.charAt(getSelectionEnd())))
        {
            stringbuilder.insert(i, (new StringBuilder()).append(charsequence).append(" ").toString());
        } else
        {
            stringbuilder.insert(i, charsequence);
        }
        setText(stringbuilder);
        Selection.setSelection(getText(), 1 + (i + charsequence.length()));
    }

    public final void setDropDownMaxNumberItemsDisplayed$2549578(int i)
    {
        b = 2.5F;
        c = i;
    }

}
