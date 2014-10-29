// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.app.Dialog;
import android.content.res.Resources;
import android.support.v4.app.k;
import android.view.View;
import com.facebook.az;
import com.instagram.android.maps.e.f;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.maps.c:
//            b

public final class a
    implements android.view.View.OnClickListener
{

    private final android.content.DialogInterface.OnClickListener a = new com.instagram.android.maps.c.b(this, (byte)0);
    private final k b;
    private final int c;

    public a(k k1, int i)
    {
        b = k1;
        c = i;
    }

    private Resources a()
    {
        return b.getResources();
    }

    static k a(a a1)
    {
        return a1.b;
    }

    static int b(a a1)
    {
        return a1.c;
    }

    private String b()
    {
        int i;
label0:
        {
            String s;
            String s1;
label1:
            {
                i = com.instagram.android.maps.e.a.a().g();
                int j = com.instagram.android.maps.e.a.a().h();
                if (c != f.b)
                {
                    break label0;
                }
                if (j == 1)
                {
                    s = a().getString(az.popup_review_confirm_add_photo_single);
                } else
                {
                    Resources resources1 = a();
                    int i1 = az.popup_review_confirm_add_photo_plural;
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.toString(j);
                    s = String.format(resources1.getString(i1, aobj1), new Object[0]);
                }
                if (i == 1)
                {
                    s1 = a().getString(az.popup_review_confirm_remove_photo_single);
                } else
                {
                    Resources resources2 = a();
                    int j1 = az.popup_review_confirm_remove_photo_plural;
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Integer.toString(i);
                    s1 = resources2.getString(j1, aobj2);
                }
                if (i > 0)
                {
                    if (j != 0)
                    {
                        break label1;
                    }
                    s = a().getString(az.popup_review_confirm_remove_photo_all);
                }
                return s;
            }
            return String.format("%s %s", new Object[] {
                s, s1
            });
        }
        if (i == 1)
        {
            return a().getString(az.popup_edit_confirm_remove_photo_single);
        } else
        {
            Resources resources = a();
            int l = az.popup_edit_confirm_remove_photo_plural;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.toString(i);
            return resources.getString(l, aobj);
        }
    }

    private String c()
    {
        if (c == f.b)
        {
            return a().getString(az.popup_review_confirm_title);
        }
        int i = com.instagram.android.maps.e.a.a().g();
        if (i == 1)
        {
            return a().getString(az.popup_edit_confirm_title_remove_photo_single);
        } else
        {
            Resources resources = a();
            int j = az.popup_edit_confirm_title_remove_photo_plural;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.toString(i);
            return resources.getString(j, aobj);
        }
    }

    public final void onClick(View view)
    {
        (new b(b)).b(c()).a(b()).b(az.confirm, a).c(az.cancel, null).c().show();
    }
}
