// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import java.text.NumberFormat;

public final class p extends RelativeLayout
{

    private int a;
    private MultiQuestionSurvey.PossibleAnswer b;
    private Paint c;
    private Paint d;
    private TextView e;
    private TextView f;

    public p(Context context)
    {
        this(context, (byte)0);
    }

    private p(Context context, byte byte0)
    {
        super(context, null);
        a(context);
    }

    private void a()
    {
        e.setText(b.b());
    }

    private void a(int i)
    {
        setMinimumHeight(i + getResources().getDimensionPixelSize(at.result_bar_height));
    }

    private void a(Context context)
    {
        View.inflate(context, aw.survey_result_row_view, this);
        Resources resources = context.getResources();
        c = new Paint();
        c.setColor(resources.getColor(as.grey_1));
        c.setStrokeWidth(resources.getDimensionPixelSize(at.result_bar_width));
        d = new Paint();
        d.setColor(resources.getColor(as.result_bar_active_color));
        d.setStrokeWidth(resources.getDimensionPixelSize(at.result_bar_width));
        e = (TextView)findViewById(av.response);
        f = (TextView)findViewById(av.percent);
    }

    private void b()
    {
        f.setText(getPercentageRounded());
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)f.getLayoutParams();
        layoutparams.addRule(8, e.getId());
        f.setLayoutParams(layoutparams);
    }

    private int getBarFullWidthPx()
    {
        return getWidth() - 2 * getLeftBound();
    }

    private int getLeftBound()
    {
        return getResources().getDimensionPixelSize(at.result_bar_horizontal_offset_padding);
    }

    private String getPercentageRounded()
    {
        float f1 = (float)getResponders() / (float)a;
        return NumberFormat.getPercentInstance().format(f1);
    }

    private int getPositionLineY()
    {
        return e.getBottom() + getResources().getDimensionPixelSize(at.response_text_row_horizontal_offset);
    }

    private int getResponders()
    {
        return b.c();
    }

    private int getResultBarEndPositionX()
    {
        return Math.round(((float)getBarFullWidthPx() * (float)getResponders()) / (float)a);
    }

    protected final void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        canvas.drawLine(getLeftBound(), getPositionLineY(), getLeftBound() + getBarFullWidthPx(), getPositionLineY(), c);
        canvas.drawLine(getLeftBound(), getPositionLineY(), getLeftBound() + getResultBarEndPositionX(), getPositionLineY(), d);
    }

    protected final void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        a(j);
    }

    public final void setAnswer(MultiQuestionSurvey.PossibleAnswer possibleanswer)
    {
        b = possibleanswer;
        a();
    }

    public final void setTotalQuestionResponders(int i)
    {
        a = i;
        b();
    }
}
