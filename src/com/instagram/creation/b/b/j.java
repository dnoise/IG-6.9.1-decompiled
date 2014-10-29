// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.f;
import com.instagram.creation.b.a.i;
import com.instagram.model.people.PeopleTag;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.creation.b.b:
//            k, t, o, v, 
//            b, m, q, c, 
//            s, n, u, a, 
//            l, p

public final class j
{

    public static ObjectMapper a()
    {
        SimpleModule simplemodule = new SimpleModule("PendingMediaModule", w.a());
        simplemodule.addSerializer(com/instagram/creation/b/a/b, new k());
        simplemodule.addSerializer(com/instagram/venue/model/Venue, new t());
        simplemodule.addSerializer(com/instagram/model/people/PeopleTag, new o());
        simplemodule.addSerializer(com/instagram/creation/b/a/j, new v());
        simplemodule.addSerializer(com/instagram/creation/b/a/a, new com.instagram.creation.b.b.b());
        simplemodule.addSerializer(com/instagram/creation/b/a/f, new m());
        simplemodule.addSerializer(com/instagram/creation/b/a/i, new q());
        simplemodule.addDeserializer(com/instagram/creation/b/a/b, new c());
        simplemodule.addDeserializer(com/instagram/venue/model/Venue, new s());
        simplemodule.addDeserializer(com/instagram/model/people/PeopleTag, new n());
        simplemodule.addDeserializer(com/instagram/creation/b/a/j, new u());
        simplemodule.addDeserializer(com/instagram/creation/b/a/a, new com.instagram.creation.b.b.a());
        simplemodule.addDeserializer(com/instagram/creation/b/a/f, new l());
        simplemodule.addDeserializer(com/instagram/creation/b/a/i, new p());
        return (new ObjectMapper()).registerModule(simplemodule);
    }
}
