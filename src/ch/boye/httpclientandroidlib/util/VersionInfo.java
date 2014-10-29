// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

public class VersionInfo
{

    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    protected VersionInfo(String s, String s1, String s2, String s3, String s4)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        infoPackage = s;
        if (s1 == null)
        {
            s1 = "UNAVAILABLE";
        }
        infoModule = s1;
        if (s2 == null)
        {
            s2 = "UNAVAILABLE";
        }
        infoRelease = s2;
        if (s3 == null)
        {
            s3 = "UNAVAILABLE";
        }
        infoTimestamp = s3;
        if (s4 == null)
        {
            s4 = "UNAVAILABLE";
        }
        infoClassloader = s4;
    }

    protected static final VersionInfo fromMap(String s, Map map, ClassLoader classloader)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        String s1;
        String s2;
        String s3;
        if (map != null)
        {
            String s5 = (String)map.get("info.module");
            String s4;
            String s6;
            String s7;
            String s8;
            String s9;
            if (s5 != null && s5.length() <= 0)
            {
                s6 = null;
            } else
            {
                s6 = s5;
            }
            s7 = (String)map.get("info.release");
            if (s7 != null && (s7.length() <= 0 || s7.equals("${pom.version}")))
            {
                s8 = null;
            } else
            {
                s8 = s7;
            }
            s9 = (String)map.get("info.timestamp");
            if (s9 != null && (s9.length() <= 0 || s9.equals("${mvn.timestamp}")))
            {
                s3 = null;
                s2 = s8;
                s1 = s6;
            } else
            {
                s3 = s9;
                s2 = s8;
                s1 = s6;
            }
        } else
        {
            s1 = null;
            s2 = null;
            s3 = null;
        }
        s4 = null;
        if (classloader != null)
        {
            s4 = classloader.toString();
        }
        return new VersionInfo(s, s1, s2, s3, s4);
    }

    public static final VersionInfo loadVersionInfo(String s, ClassLoader classloader)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        if (classloader == null)
        {
            classloader = Thread.currentThread().getContextClassLoader();
        }
        InputStream inputstream = classloader.getResourceAsStream((new StringBuilder()).append(s.replace('.', '/')).append("/version.properties").toString());
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        Properties properties;
        properties = new Properties();
        properties.load(inputstream);
        VersionInfo versioninfo;
        Exception exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1) { }
        versioninfo = null;
        if (properties != null)
        {
            versioninfo = fromMap(s, properties, classloader);
        }
        return versioninfo;
        exception;
        try
        {
            inputstream.close();
            throw exception;
        }
        catch (IOException ioexception)
        {
            properties = null;
        }
        continue;
label0:
        {
            for (properties = null; true;)
            {
                break MISSING_BLOCK_LABEL_81;
            }

            break label0;
        }
    }

    public static final VersionInfo[] loadVersionInfo(String as[], ClassLoader classloader)
    {
        if (as == null)
        {
            throw new IllegalArgumentException("Package identifier list must not be null.");
        }
        ArrayList arraylist = new ArrayList(as.length);
        for (int i = 0; i < as.length; i++)
        {
            VersionInfo versioninfo = loadVersionInfo(as[i], classloader);
            if (versioninfo != null)
            {
                arraylist.add(versioninfo);
            }
        }

        return (VersionInfo[])(VersionInfo[])arraylist.toArray(new VersionInfo[arraylist.size()]);
    }

    public final String getClassloader()
    {
        return infoClassloader;
    }

    public final String getModule()
    {
        return infoModule;
    }

    public final String getPackage()
    {
        return infoPackage;
    }

    public final String getRelease()
    {
        return infoRelease;
    }

    public final String getTimestamp()
    {
        return infoTimestamp;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer(20 + infoPackage.length() + infoModule.length() + infoRelease.length() + infoTimestamp.length() + infoClassloader.length());
        stringbuffer.append("VersionInfo(").append(infoPackage).append(':').append(infoModule);
        if (!"UNAVAILABLE".equals(infoRelease))
        {
            stringbuffer.append(':').append(infoRelease);
        }
        if (!"UNAVAILABLE".equals(infoTimestamp))
        {
            stringbuffer.append(':').append(infoTimestamp);
        }
        stringbuffer.append(')');
        if (!"UNAVAILABLE".equals(infoClassloader))
        {
            stringbuffer.append('@').append(infoClassloader);
        }
        return stringbuffer.toString();
    }
}
