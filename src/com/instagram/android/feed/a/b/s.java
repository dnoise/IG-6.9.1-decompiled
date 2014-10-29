// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.at;
import com.facebook.aw;
import com.instagram.android.maps.e.a;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.f;
import com.instagram.feed.d.ai;
import com.instagram.ui.widget.imagebutton.IgImageButton;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.a.b:
//            w, t, u, v

public final class s
{

    public static View a(Context context, int i)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        w w1 = new w(i);
        w1.b = linearlayout;
        int j = 0;
        while (j < w1.a) 
        {
            boolean flag;
            IgImageButton igimagebutton;
            if (j < -1 + w1.a)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            igimagebutton = a(context, flag);
            w1.d[j] = igimagebutton;
            w1.c[j] = igimagebutton.getImageView();
            w1.f[j] = igimagebutton.getVideoOverlayView();
            linearlayout.addView(igimagebutton);
            j++;
        }
        linearlayout.setTag(w1);
        return linearlayout;
    }

    private static IgImageButton a(Context context, boolean flag)
    {
        IgImageButton igimagebutton = new IgImageButton(context);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0F);
        if (flag)
        {
            layoutparams.rightMargin = context.getResources().getDimensionPixelSize(at.photo_grid_spacing);
        }
        igimagebutton.setLayoutParams(layoutparams);
        return igimagebutton;
    }

    static void a(ImageView imageview, CheckBox checkbox, ai ai1)
    {
        b(imageview, checkbox, ai1);
    }

    public static void a(w w1, List list, boolean flag, int i)
    {
        a(w1, list, flag, true, i, null);
    }

    public static void a(w w1, List list, boolean flag, boolean flag1, int i, v v)
    {
        View view = w1.b;
        int j;
        int k;
        int l;
        if (flag)
        {
            j = 0;
        } else
        {
            j = w1.b.getResources().getDimensionPixelSize(at.photo_grid_spacing);
        }
        f.a(view, j);
        k = list.size();
        l = 0;
        do
        {
            if (l < w1.c.length)
            {
                IgImageView igimageview = w1.c[l];
                IgImageButton igimagebutton = w1.d[l];
                ai ai1;
                if (l < k)
                {
                    ai1 = (ai)list.get(l);
                } else
                {
                    ai1 = null;
                }
                if (ai1 == null)
                {
                    igimageview.setVisibility(4);
                    igimageview.setOnClickListener(null);
                    igimagebutton.setVisibility(4);
                } else
                {
                    igimageview.setVisibility(0);
                    igimageview.setUrl(ai1.e());
                    igimagebutton.setVisibility(0);
                    boolean flag2;
                    if (!flag1)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                    igimagebutton.setEnableTouchOverlay(flag2);
                    if (flag1)
                    {
                        CheckBox checkbox;
                        if (w1.e[l] == null)
                        {
                            CheckBox acheckbox[] = w1.e;
                            checkbox = (CheckBox)LayoutInflater.from(igimagebutton.getContext()).inflate(aw.checkbox_media_grid, igimagebutton, false);
                            acheckbox[l] = checkbox;
                            igimagebutton.addView(checkbox);
                        } else
                        {
                            checkbox = w1.e[l];
                        }
                        b(igimageview, checkbox, ai1);
                        igimageview.setOnClickListener(new t(ai1, igimageview, checkbox));
                    } else
                    {
                        if (w1.e[l] != null)
                        {
                            w1.e[l].setVisibility(8);
                            igimageview.setAlpha(255);
                        }
                        igimageview.setOnClickListener(new u(v, list, l, i));
                    }
                    if (w1.f[l] != null)
                    {
                        if (ai1.g())
                        {
                            w1.f[l].setVisibility(0);
                        } else
                        {
                            w1.f[l].setVisibility(8);
                        }
                    }
                }
            } else
            {
                return;
            }
            l++;
        } while (true);
    }

    private static void b(ImageView imageview, CheckBox checkbox, ai ai1)
    {
        checkbox.setVisibility(0);
        checkbox.setChecked(com.instagram.android.maps.e.a.a().a(ai1));
        char c;
        if (com.instagram.android.maps.e.a.a().a(ai1))
        {
            c = '\377';
        } else
        {
            c = '\200';
        }
        imageview.setAlpha(c);
    }
}
