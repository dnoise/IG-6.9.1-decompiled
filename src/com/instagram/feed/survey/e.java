// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            n, o

public final class e extends BaseAdapter
    implements ListAdapter
{

    private MultiQuestionSurvey.Question a;
    private Context b;

    public e(Context context, MultiQuestionSurvey.Question question)
    {
        b = context;
        a = question;
    }

    private View a(int i, ViewGroup viewgroup)
    {
        switch (getItemViewType(i))
        {
        default:
            throw new RuntimeException("No item view type found");

        case 0: // '\0'
            return n.a(b, viewgroup, false);

        case 1: // '\001'
            return n.a(b, viewgroup, true);
        }
    }

    private void a(View view, int i)
    {
        int j = getItemViewType(i);
        if (j == 0 || j == 1)
        {
            Context _tmp = b;
            n.a((o)view.getTag(), a, i);
        }
    }

    public final int getCount()
    {
        return a.c().size();
    }

    public final Object getItem(int i)
    {
        return a.c().get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final int getItemViewType(int i)
    {
        return !a.f() ? 1 : 0;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(i, viewgroup);
        }
        a(view, i);
        return view;
    }
}
