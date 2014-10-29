// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.graphics.Matrix;
import android.util.FloatMath;
import android.view.MotionEvent;

// Referenced classes of package com.instagram.creation.video.l:
//            a

public final class e
{

    private static float a(Matrix matrix, float f)
    {
        float af[] = new float[2];
        af[0] = FloatMath.sin(f);
        af[1] = -FloatMath.cos(f);
        matrix.mapVectors(af);
        float f1 = (float)Math.atan2(af[0], -af[1]);
        if ((double)f1 < -1.5707963267948966D)
        {
            f1 = (float)(3.1415926535897931D + (double)f1);
        } else
        if ((double)f1 > 1.5707963267948966D)
        {
            return (float)((double)f1 - 3.1415926535897931D);
        }
        return f1;
    }

    public static MotionEvent a(MotionEvent motionevent, Matrix matrix)
    {
        if (a.i)
        {
            return b(motionevent, matrix);
        } else
        {
            return c(motionevent, matrix);
        }
    }

    private static int[] a(MotionEvent motionevent)
    {
        int i = motionevent.getPointerCount();
        int ai[] = new int[i];
        for (int j = 0; j < i; j++)
        {
            ai[j] = motionevent.getPointerId(j);
        }

        return ai;
    }

    private static MotionEvent b(MotionEvent motionevent, Matrix matrix)
    {
        MotionEvent motionevent1 = MotionEvent.obtain(motionevent);
        motionevent1.transform(matrix);
        return motionevent1;
    }

    private static android.view.MotionEvent.PointerCoords[] b(MotionEvent motionevent)
    {
        int i = motionevent.getPointerCount();
        android.view.MotionEvent.PointerCoords apointercoords[] = new android.view.MotionEvent.PointerCoords[i];
        for (int j = 0; j < i; j++)
        {
            apointercoords[j] = new android.view.MotionEvent.PointerCoords();
            motionevent.getPointerCoords(j, apointercoords[j]);
        }

        return apointercoords;
    }

    private static MotionEvent c(MotionEvent motionevent, Matrix matrix)
    {
        long l = motionevent.getDownTime();
        long l1 = motionevent.getEventTime();
        int i = motionevent.getAction();
        int j = motionevent.getPointerCount();
        int ai[] = a(motionevent);
        android.view.MotionEvent.PointerCoords apointercoords[] = b(motionevent);
        int k = motionevent.getMetaState();
        float f = motionevent.getXPrecision();
        float f1 = motionevent.getYPrecision();
        int i1 = motionevent.getDeviceId();
        int j1 = motionevent.getEdgeFlags();
        int k1 = motionevent.getSource();
        int i2 = motionevent.getFlags();
        float af[] = new float[2 * apointercoords.length];
        for (int j2 = 0; j2 < j; j2++)
        {
            af[j2 * 2] = apointercoords[j2].x;
            af[1 + j2 * 2] = apointercoords[j2].y;
        }

        matrix.mapPoints(af);
        for (int k2 = 0; k2 < j; k2++)
        {
            apointercoords[k2].x = af[k2 * 2];
            apointercoords[k2].y = af[1 + k2 * 2];
            apointercoords[k2].orientation = a(matrix, apointercoords[k2].orientation);
        }

        return MotionEvent.obtain(l, l1, i, j, ai, apointercoords, k, f, f1, i1, j1, k1, i2);
    }
}
