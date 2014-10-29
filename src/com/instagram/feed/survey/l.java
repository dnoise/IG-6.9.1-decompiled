// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.aw;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            j, k

public final class l extends BaseAdapter
    implements ListAdapter
{

    private j a;
    private Context b;

    public l(Context context, j j1)
    {
        b = context;
        a = j1;
    }

    private View a(Context context, int i)
    {
        switch (getItemViewType(i))
        {
        default:
            throw new UnsupportedOperationException("Unhandled view type");

        case 0: // '\0'
            return View.inflate(context, aw.sentiment_tool_answer, null);
        }
    }

    private void a(View view, int i)
    {
        k k1;
        switch (getItemViewType(i))
        {
        default:
            throw new UnsupportedOperationException("View type unhandled");

        case 0: // '\0'
            k1 = (k)a.g().get(i);
            break;
        }
        ((TextView)view).setText(k1.b());
        int i1;
        if (i == -1 + getCount())
        {
            i1 = au.dialog_row_bottom;
        } else
        {
            i1 = au.bg_simple_row;
        }
        view.setBackgroundResource(i1);
    }

    public final int getCount()
    {
        return a.g().size();
    }

    public final Object getItem(int i)
    {
        return a.g().get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final int getItemViewType(int i)
    {
        if (i < getCount())
        {
            return 0;
        } else
        {
            throw new UnsupportedOperationException("View mode not handled (for item view type)");
        }
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(b, i);
        }
        Context _tmp = b;
        a(view, i);
        return view;
    }
}
