// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimePatchEvent

public class RealtimePatchRange
{

    private String mEnd;
    private String mStart;

    public RealtimePatchRange(String s, String s1)
    {
        mStart = s;
        mEnd = s1;
    }

    public boolean contains(String s)
    {
        if (s != null)
        {
            int i;
            int j;
            if (mStart != null)
            {
                i = RealtimePatchEvent.compareSequences(mStart, s);
            } else
            {
                i = 0;
            }
            if (mEnd != null)
            {
                j = RealtimePatchEvent.compareSequences(s, mEnd);
            } else
            {
                j = 0;
            }
            if (i <= 0 && j >= 0)
            {
                return true;
            }
        }
        return false;
    }

    public String getEnd()
    {
        return mEnd;
    }

    public String getStart()
    {
        return mStart;
    }

    public RealtimePatchRange union(RealtimePatchRange realtimepatchrange)
    {
        String s;
        String s1;
        String s2;
        if (mStart != null && realtimepatchrange.getStart() != null)
        {
            if (RealtimePatchEvent.compareSequences(mStart, realtimepatchrange.getStart()) > 0)
            {
                s = realtimepatchrange.getStart();
            } else
            {
                s = mStart;
            }
        } else
        {
            s = null;
        }
        s1 = mEnd;
        s2 = null;
        if (s1 != null)
        {
            String s3 = realtimepatchrange.getEnd();
            s2 = null;
            if (s3 != null)
            {
                if (RealtimePatchEvent.compareSequences(mEnd, realtimepatchrange.getEnd()) > 0)
                {
                    s2 = mEnd;
                } else
                {
                    s2 = realtimepatchrange.getEnd();
                }
            }
        }
        return new RealtimePatchRange(s, s2);
    }
}
