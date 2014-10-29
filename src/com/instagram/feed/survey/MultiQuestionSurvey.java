// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Parcel;
import android.os.Parcelable;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            a, aj

public class MultiQuestionSurvey
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    String a;
    String b;
    String c;
    String d;
    List e;
    boolean f;
    boolean g;
    private int h;

    MultiQuestionSurvey()
    {
        h = aj.a;
    }

    private MultiQuestionSurvey(Parcel parcel)
    {
        h = aj.a;
        e = new ArrayList();
        parcel.readTypedList(e, Question.CREATOR);
    }

    MultiQuestionSurvey(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public final String a()
    {
        return a;
    }

    public final List b()
    {
        return e;
    }

    public final String c()
    {
        return c;
    }

    public final int d()
    {
        return h;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return d;
    }

    public final boolean f()
    {
        return g;
    }

    final MultiQuestionSurvey g()
    {
        if (com.instagram.common.y.e.c(c))
        {
            h = aj.a;
            return this;
        } else
        {
            h = aj.b;
            return this;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedList(e);
    }


    private class Question
        implements Parcelable
    {
        private class PossibleAnswer
            implements Parcelable
        {

            public static final android.os.Parcelable.Creator CREATOR = new b();
            String a;
            String b;
            int c;
            private boolean d;

            public final String a()
            {
                return a;
            }

            public final void a(boolean flag)
            {
                d = flag;
            }

            public final String b()
            {
                return b;
            }

            public final int c()
            {
                return c;
            }

            public final void d()
            {
                c = 1 + c;
            }

            public int describeContents()
            {
                return 0;
            }

            public final boolean e()
            {
                return d;
            }

            public void writeToParcel(Parcel parcel, int i)
            {
                parcel.writeString(b);
                parcel.writeString(a);
                parcel.writeInt(c);
            }


            PossibleAnswer()
            {
            }

            private PossibleAnswer(Parcel parcel)
            {
                b = parcel.readString();
                a = parcel.readString();
                c = parcel.readInt();
            }

            PossibleAnswer(Parcel parcel, byte byte0)
            {
                this(parcel);
            }
        }


        public static final android.os.Parcelable.Creator CREATOR = new c();
        String a;
        String b;
        d c;
        int d;
        List e;

        public final String a()
        {
            return a;
        }

        public final String b()
        {
            return b;
        }

        public final List c()
        {
            return e;
        }

        public final int d()
        {
            return d;
        }

        public int describeContents()
        {
            return 0;
        }

        public final void e()
        {
            d = 1 + d;
        }

        public final boolean f()
        {
            return c == d.b;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeString(a);
            parcel.writeTypedList(e);
            parcel.writeInt(d);
        }


        Question()
        {
        }

        private Question(Parcel parcel)
        {
            a = parcel.readString();
            e = new ArrayList();
            parcel.readTypedList(e, PossibleAnswer.CREATOR);
            d = parcel.readInt();
        }

        Question(Parcel parcel, byte byte0)
        {
            this(parcel);
        }
    }

}
