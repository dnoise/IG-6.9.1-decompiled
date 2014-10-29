// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.g;

import android.app.Dialog;
import android.os.Bundle;
import com.facebook.az;
import com.facebook.g.t;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.g:
//            b

public final class a extends com.instagram.base.a.a
{

    public a()
    {
    }

    public final Dialog c(Bundle bundle)
    {
        Bundle bundle1 = j();
        String s = bundle1.getString("feedback_message");
        String s1;
        b b1;
        String s2;
        String s3;
        String s4;
        if (bundle1.containsKey("feedback_title"))
        {
            s1 = bundle1.getString("feedback_title");
        } else
        {
            s1 = null;
        }
        b1 = (new b(l())).a(s);
        if (s1 != null)
        {
            b1.b(s1);
        }
        s2 = bundle1.getString("feedback_url");
        s3 = bundle1.getString("feedback_appeal_label");
        if (!t.a(s2) && !t.a(s3))
        {
            b1.a(s3, new com.instagram.g.b(this, s2, s3));
        }
        s4 = bundle1.getString("feedback_ignore_label");
        if (t.a(s4))
        {
            s4 = c(az.dismiss);
        }
        return b1.b(s4, null).c();
    }
}
