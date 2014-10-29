// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.util:
//            b

public class Matrix3
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    private static final float a[] = {
        1.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 1.0F
    };
    private final float b[];
    private final FloatBuffer c;

    public Matrix3()
    {
        b = new float[9];
        c = FloatBuffer.wrap(b);
        a();
    }

    public Matrix3(Parcel parcel)
    {
        b = new float[9];
        c = FloatBuffer.wrap(b);
        parcel.readFloatArray(b);
    }

    public final void a()
    {
        c.position(0);
        c.put(a);
        c.position(0);
    }

    public final void a(float f)
    {
        float f1 = (float)Math.sin(f);
        float f2 = (float)Math.cos(f);
        float f3 = f2 * b[0] - f1 * b[3];
        float f4 = f1 * b[0] + f2 * b[3];
        b[0] = f3;
        b[3] = f4;
        float f5 = f2 * b[1] - f1 * b[4];
        float f6 = f1 * b[1] + f2 * b[4];
        b[1] = f5;
        b[4] = f6;
    }

    public final void a(float f, float f1)
    {
        float af[] = b;
        af[0] = f * af[0];
        float af1[] = b;
        af1[1] = f * af1[1];
        float af2[] = b;
        af2[3] = f1 * af2[3];
        float af3[] = b;
        af3[4] = f1 * af3[4];
    }

    public final FloatBuffer b()
    {
        return c;
    }

    public final void b(float f, float f1)
    {
        float af[] = b;
        af[6] = af[6] + (f * b[0] + f1 * b[3]);
        float af1[] = b;
        af1[7] = af1[7] + (f * b[1] + f1 * b[4]);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeFloatArray(c.array());
    }

}
