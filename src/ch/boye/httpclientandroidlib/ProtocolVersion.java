// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib;

import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.io.Serializable;

public class ProtocolVersion
    implements Serializable, Cloneable
{

    private static final long serialVersionUID = 0x7c37246eac22717cL;
    protected final int major;
    protected final int minor;
    protected final String protocol;

    public ProtocolVersion(String s, int i, int j)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Protocol name must not be null.");
        }
        if (i < 0)
        {
            throw new IllegalArgumentException("Protocol major version number must not be negative.");
        }
        if (j < 0)
        {
            throw new IllegalArgumentException("Protocol minor version number may not be negative");
        } else
        {
            protocol = s;
            major = i;
            minor = j;
            return;
        }
    }

    public Object clone()
    {
        return super.clone();
    }

    public int compareToVersion(ProtocolVersion protocolversion)
    {
        if (protocolversion == null)
        {
            throw new IllegalArgumentException("Protocol version must not be null.");
        }
        if (!protocol.equals(protocolversion.protocol))
        {
            throw new IllegalArgumentException((new StringBuilder("Versions for different protocols cannot be compared. ")).append(this).append(" ").append(protocolversion).toString());
        }
        int i = getMajor() - protocolversion.getMajor();
        if (i == 0)
        {
            i = getMinor() - protocolversion.getMinor();
        }
        return i;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ProtocolVersion))
            {
                return false;
            }
            ProtocolVersion protocolversion = (ProtocolVersion)obj;
            if (!protocol.equals(protocolversion.protocol) || major != protocolversion.major || minor != protocolversion.minor)
            {
                return false;
            }
        }
        return true;
    }

    public ProtocolVersion forVersion(int i, int j)
    {
        if (i == major && j == minor)
        {
            return this;
        } else
        {
            return new ProtocolVersion(protocol, i, j);
        }
    }

    public final int getMajor()
    {
        return major;
    }

    public final int getMinor()
    {
        return minor;
    }

    public final String getProtocol()
    {
        return protocol;
    }

    public final boolean greaterEquals(ProtocolVersion protocolversion)
    {
        return isComparable(protocolversion) && compareToVersion(protocolversion) >= 0;
    }

    public final int hashCode()
    {
        return protocol.hashCode() ^ 0x186a0 * major ^ minor;
    }

    public boolean isComparable(ProtocolVersion protocolversion)
    {
        return protocolversion != null && protocol.equals(protocolversion.protocol);
    }

    public final boolean lessEquals(ProtocolVersion protocolversion)
    {
        return isComparable(protocolversion) && compareToVersion(protocolversion) <= 0;
    }

    public String toString()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(16);
        chararraybuffer.append(protocol);
        chararraybuffer.append('/');
        chararraybuffer.append(Integer.toString(major));
        chararraybuffer.append('.');
        chararraybuffer.append(Integer.toString(minor));
        return chararraybuffer.toString();
    }
}
