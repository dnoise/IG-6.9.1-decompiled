// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class RotateLayout extends ViewGroup
{

    private int a;
    private View b;

    public RotateLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setBackgroundResource(0x106000d);
    }

    private void a(int i, int j)
    {
        a;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 62
    //                   90: 81
    //                   180: 101
    //                   270: 122;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        b.setRotation(-a);
        return;
_L2:
        b.setTranslationX(0.0F);
        b.setTranslationY(0.0F);
        continue; /* Loop/switch isn't completed */
_L3:
        b.setTranslationX(0.0F);
        b.setTranslationY(j);
        continue; /* Loop/switch isn't completed */
_L4:
        b.setTranslationX(i);
        b.setTranslationY(j);
        continue; /* Loop/switch isn't completed */
_L5:
        b.setTranslationX(i);
        b.setTranslationY(0.0F);
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected void onFinishInflate()
    {
        b = getChildAt(0);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            b.setPivotX(0.0F);
            b.setPivotY(0.0F);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = k - i;
        int j1 = l - j;
        switch (a)
        {
        default:
            return;

        case 0: // '\0'
        case 180: 
            b.layout(0, 0, i1, j1);
            return;

        case 90: // 'Z'
        case 270: 
            b.layout(0, 0, j1, i1);
            break;
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = 0;
        a;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 74
    //                   90: 104
    //                   180: 74
    //                   270: 104;
           goto _L1 _L2 _L3 _L2 _L3
_L1:
        int l = 0;
_L5:
        setMeasuredDimension(l, k);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a(l, k);
        }
        return;
_L2:
        measureChild(b, i, j);
        l = b.getMeasuredWidth();
        k = b.getMeasuredHeight();
        continue; /* Loop/switch isn't completed */
_L3:
        measureChild(b, j, i);
        l = b.getMeasuredHeight();
        k = b.getMeasuredWidth();
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void setOrientation(int i)
    {
        int j = i % 360;
        if (a == j)
        {
            return;
        } else
        {
            a = j;
            requestLayout();
            return;
        }
    }
}
