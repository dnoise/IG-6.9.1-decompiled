// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

// Referenced classes of package com.facebook:
//            s, t, c, aw, 
//            am, an, k, av, 
//            z

public class al extends Activity
{

    private String a;
    private c b;
    private k c;

    public al()
    {
    }

    static Bundle a(k k1)
    {
        Bundle bundle = new Bundle();
        bundle.putSerializable("request", k1);
        return bundle;
    }

    static void a(al al1, s s1)
    {
        al1.a(s1);
    }

    private void a(s s1)
    {
        c = null;
        int i;
        Bundle bundle;
        Intent intent;
        if (s1.a == t.b)
        {
            i = 0;
        } else
        {
            i = -1;
        }
        bundle = new Bundle();
        bundle.putSerializable("com.facebook.LoginActivity:Result", s1);
        intent = new Intent();
        intent.putExtras(bundle);
        setResult(i, intent);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        b.a(i, j, intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(aw.com_facebook_login_activity_layout);
        if (bundle != null)
        {
            a = bundle.getString("callingPackage");
            b = (c)bundle.getSerializable("authorizationClient");
        } else
        {
            a = getCallingPackage();
            b = new c();
            c = (k)getIntent().getSerializableExtra("request");
        }
        b.a(this);
        b.a(new am(this));
        b.a(new an(this));
    }

    public void onPause()
    {
        super.onPause();
        b.a();
        findViewById(av.com_facebook_login_activity_progress_bar).setVisibility(8);
    }

    public void onResume()
    {
        super.onResume();
        if (a == null)
        {
            throw new z("Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
        } else
        {
            b.a(c);
            return;
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("callingPackage", a);
        bundle.putSerializable("authorizationClient", b);
    }
}
