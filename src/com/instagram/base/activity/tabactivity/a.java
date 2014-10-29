// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.os.Bundle;
import android.widget.TextView;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            IgTabHost, IgTabWidget

public class a extends ActivityGroup
{

    private IgTabHost a;
    private String b;
    private int c;

    public a()
    {
        b = null;
        c = -1;
    }

    public final IgTabHost d()
    {
        return a;
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            Activity activity = getCurrentActivity();
            if (activity != null)
            {
                activity.dump(s, filedescriptor, printwriter, as);
            }
        }
    }

    public final IgTabWidget e()
    {
        return a.getTabWidget();
    }

    protected void onChildTitleChanged(Activity activity, CharSequence charsequence)
    {
        if (getLocalActivityManager().getCurrentActivity() == activity)
        {
            android.view.View view = a.getCurrentTabView();
            if (view != null && (view instanceof TextView))
            {
                ((TextView)view).setText(charsequence);
            }
        }
    }

    public void onContentChanged()
    {
        super.onContentChanged();
        a = (IgTabHost)findViewById(0x1020012);
        if (a == null)
        {
            throw new RuntimeException("Your content must have a TabHost whose id attribute is 'android.R.id.tabhost'");
        } else
        {
            a.setup(getLocalActivityManager());
            return;
        }
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        if (a.getCurrentTab() == -1)
        {
            a.setCurrentTab(0);
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        String s = bundle.getString("currentTab");
        if (s != null)
        {
            a.setCurrentTabByTag(s);
        }
        if (a.getCurrentTab() < 0)
        {
            if (b != null)
            {
                a.setCurrentTabByTag(b);
            } else
            if (c >= 0)
            {
                a.setCurrentTab(c);
                return;
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        String s = a.getCurrentTabTag();
        if (s != null)
        {
            bundle.putString("currentTab", s);
        }
    }
}
